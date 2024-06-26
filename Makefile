SHELL := /usr/bin/env bash -eEuo pipefail -c
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

BUILD_DIR := build
SAMP_DIR := ex
SAMP_OUT := $(BUILD_DIR)/ex
W2SMP_DIR := $(SAMP_DIR)/tinygo-wasi
W2_OUT := $(SAMP_OUT)/tinygo-wasi
WBGSMP_DIR := $(SAMP_DIR)/tinygo-wasi-wbg
WBG_OUT := $(SAMP_OUT)/tinygo-wasi-wbg
WASI_ex := p2fs p2random p2all


$(SAMP_OUT):
	mkdir -p $(SAMP_OUT)

$(P2ALL_OUT):
	mkdir -p $(P2ALL_OUT)

.PHONY: ex/tinygo-wasi/add
ex/tinygo-wasi/add: $(SAMP_OUT)
	mkdir -p $(SAMP_OUT)/tgwasi-add
	tinygo build -o $(SAMP_OUT)/tgwasi-add/main.wasm -target=wasi $(SAMP_DIR)/tinygo-wasi/add/main.go
	wasm2wat $(SAMP_OUT)/tgwasi-add/main.wasm -o $(SAMP_OUT)/tgwasi-add/main.wat
	wasmtime run --invoke add build/ex/tgwasi-add/main.wasm 20 22 2>/dev/null

define wp2_template
.PHONY: $$(W2SMP_DIR)/$(1)
$$(W2SMP_DIR)/$(1):
	cd $$(W2SMP_DIR)/$(1) && wit-deps
	wit-bindgen tiny-go $$(W2SMP_DIR)/$(1)/wit --out-dir $$(W2SMP_DIR)/$(1)/pkg
	mkdir -p $$(W2_OUT)/$(1)
	tinygo build -target=wasi -tags purego \
		-no-debug \
		-o $$(W2_OUT)/$(1)/main.wasm \
		$$(W2SMP_DIR)/$(1)/main.go
	wasm-tools component embed $$(W2SMP_DIR)/$(1)/wit/ -w $(1) $$(W2_OUT)/$(1)/main.wasm -o $$(W2_OUT)/$(1)/main.embed.wasm
	wasm-tools component new $$(W2_OUT)/$(1)/main.embed.wasm -o $$(W2_OUT)/$(1)/main.component.wasm --adapt=$(SAMP_DIR)/lib/wasi_snapshot_preview1.command.wasm
	wasmtime run $$(W2_OUT)/$(1)/main.component.wasm -Spreview2=y 2>/dev/null
endef
$(foreach samp,$(WASI_ex),$(eval $(call wp2_template,$(samp))))

define wbg_template
.PHONY: $$(WBGSMP_DIR)/$(1)
$$(WBGSMP_DIR)/$(1):
	mkdir -p $$(WBGSMP_DIR)/$(1)/gopkg
	cd $$(WBGSMP_DIR)/$(1) && wit-deps
	wasm-tools component wit -j $$(WBGSMP_DIR)/$(1)/wit > $$(WBGSMP_DIR)/$(1)/wit/world.json

	# wit-bindgen-go currently runs from the directory of the go.mod file
	# so we need to change to that directory and ensure there is a go.mod file
	cd $$(WBGSMP_DIR)/$(1) && \
		cat wit/world.json | \
		wit-bindgen-go generate

	mkdir -p $$(WBG_OUT)/$(1)
	cd $$(WBGSMP_DIR)/$(1) && \
	tinygo build -target=wasi -tags purego \
		-no-debug \
		-o ../../../$$(WBG_OUT)/$(1)/main.wasm \
		main.go

	wasm-tools component embed $$(WBGSMP_DIR)/$(1)/wit/ -w $(1) $$(WBG_OUT)/$(1)/main.wasm -o $$(WBG_OUT)/$(1)/main.embed.wasm
	wasm-tools component new $$(WBG_OUT)/$(1)/main.embed.wasm -o $$(WBG_OUT)/$(1)/main.component.wasm --adapt=$(SAMP_DIR)/lib/wasi_snapshot_preview1.command.wasm

	wasmtime run $$(WBG_OUT)/$(1)/main.component.wasm -Spreview2=y 2>/dev/null
endef
$(foreach samp,$(WASI_ex),$(eval $(call wbg_template,$(samp))))

.PHONY: wasip2-test
wasip2-test:
	mkdir -p build/ex/wasip2-test
	tinygo build -target=wasip2 -x -o build/ex/wasip2-test/main.wasm ./ex/wasip2-test
	# wasm-tools component embed -w wasi:cli/command $$(tinygo env TINYGOROOT)/lib/wasi-cli/wit/ build/ex/wasip2-test/main.wasm -o build/ex/wasip2-test/embedded.wasm
	# wasm-tools component new build/ex/wasip2-test/embedded.wasm -o build/ex/wasip2-test/component.wasm
	cp build/ex/wasip2-test/main.wasm build/ex/wasip2-test/component.wasm
	wasmtime run --wasm component-model --env PWD --env USER --dir=. --dir=/tmp build/ex/wasip2-test/component.wasm ./LICENSE

.PHONY: wasmdoc-dev
wasmdoc-dev:
	cd wasmcloud.com && npm install
	cd wasmcloud.com && npm run start

TINYGO := tinygo
GO := go
TEST_PACKAGES_ALL := $(shell $(GO) list std | grep -v vendor | grep -v internal)
TEST_PACKAGES_WASI := $(TEST_PACKAGES_ALL) ./tests/runtime_wasi
# Timeouts: archive/zip mime mime-multipart index-suffixarray image-png
TEST_PACKAGES_SKIP := archive/zip mime mime/multipart index/suffixarray image/png
TEST_PACKAGES_RUN := $(filter-out $(TEST_PACKAGES_SKIP),$(TEST_PACKAGES_ALL))
TODAY=$(shell date +%Y-%m-%d)
HOUR=$(shell date +%H)
# PATH_WP2 := docs/testing/$(TODAY)/$(HOUR)
PATH_WASI := docs/testing/$(TODAY)/wasi
PATH_WP1 := docs/testing/$(TODAY)/wp1
PATH_WP2 := docs/testing/$(TODAY)/wp2
PATH_DEV := docs/testing/$(TODAY)/dev
XUNIT_FILES_WASI := $(addprefix $(PATH_WASI)/,$(addsuffix .xml,$(subst .,t,$(subst /,-,$(TEST_PACKAGES_WASI)))))
XUNIT_FILES_WP1 := $(addprefix $(PATH_WP1)/,$(addsuffix .xml,$(subst .,t,$(subst /,-,$(TEST_PACKAGES_WASI)))))
XUNIT_FILES_WP2 := $(addprefix $(PATH_WP2)/,$(addsuffix .xml,$(subst .,t,$(subst /,-,$(TEST_PACKAGES_WASI)))))
XUNIT_FILES_DEV := $(addprefix $(PATH_DEV)/,$(addsuffix .xml,$(subst /,-,$(TEST_PACKAGES_ALL))))
TIMEOUT := 300

# wasm tests
define run_wasi_test
$(PATH_WASI)/$(2).xml:
	@mkdir -p $(PATH_WASI)
	cd tinygo && \
	gotestsum --raw-command \
		--junitfile ../$(PATH_WASI)/$(2).xml \
		-- timeout $(TIMEOUT) \
				sh -c '$(TINYGO) test -v -target wasi -x $(1) 2>&1 | go tool test2json -p $(1)'
endef
$(foreach pkg,$(TEST_PACKAGES_WASI),$(eval $(call run_wasi_test,$(pkg),$(subst /,-,$(subst .,t,$(pkg))))))
$(PATH_WASI)-status.json: $(XUNIT_FILES_WASI)
	@echo "All tests completed"
	@echo "Merging test results"
	@# xunitmerge $(XUNIT_FILES_WASI) $(PATH_WASI)-merged-xunit.xml
	@jrm $(PATH_WASI)-merged-xunit.xml $(XUNIT_FILES_WASI)
	sd test patch-xunit-classnames --xunit $(PATH_WASI)-merged-xunit.xml
	junit2html $(PATH_WASI)-merged-xunit.xml $(PATH_WASI)-merged-xunit.html
	junit2html $(PATH_WASI)-merged-xunit.xml --report-matrix $(PATH_WASI)-matrix.html
	sd test tinygo-pkg-report --xunit $(PATH_WASI)-merged-xunit.xml --out $(PATH_WASI)-status.json

# WP1 tests
define run_wasip1_test
$(PATH_WP1)/$(2).xml:
	@mkdir -p $(PATH_WP1)
	cd tinygo && \
	gotestsum --raw-command \
		--junitfile ../$(PATH_WP1)/$(2).xml \
		-- timeout $(TIMEOUT) \
			sh -c '$(TINYGO) test -target wasip1 -x -v $(1) 2>&1 | go tool test2json -p $(1)'
endef
$(foreach pkg,$(TEST_PACKAGES_WASI),$(eval $(call run_wasip1_test,$(pkg),$(subst /,-,$(subst .,t,$(pkg))))))
$(PATH_WP1)-status.json: $(XUNIT_FILES_WP1)
	@echo "All tests completed"
	@echo "Merging test results"
	@# xunitmerge $(XUNIT_FILES_WP1) $(PATH_WP1)-merged-xunit.xml
	@jrm $(PATH_WP1)-merged-xunit.xml $(XUNIT_FILES_WP1)
	sd test patch-xunit-classnames --xunit $(PATH_WP1)-merged-xunit.xml
	junit2html $(PATH_WP1)-merged-xunit.xml $(PATH_WP1)-merged-xunit.html
	junit2html $(PATH_WP1)-merged-xunit.xml --report-matrix $(PATH_WP1)-matrix.html
	sd test tinygo-pkg-report --xunit $(PATH_WP1)-merged-xunit.xml --out $(PATH_WP1)-status.json

# WP2 tests
define run_wasip2_test
$(PATH_WP2)/$(2).xml:
	@mkdir -p $(PATH_WP2)
	cd tinygo && \
	gotestsum --raw-command \
		--junitfile ../$(PATH_WP2)/$(2).xml \
		-- timeout $(TIMEOUT) \
			sh -c '$(TINYGO) test -v -target wasip2 -x $(1) 2>&1 | go tool test2json -p $(1)'
endef
$(foreach pkg,$(TEST_PACKAGES_WASI),$(eval $(call run_wasip2_test,$(pkg),$(subst /,-,$(subst .,t,$(pkg))))))
$(PATH_WP2)-status.json: $(XUNIT_FILES_WP2)
	@echo "All tests completed"
	@# echo "Skipped tests: $(TEST_PACKAGES_SKIP)"
	@echo "Merging test results"
	@# xunitmerge $(XUNIT_FILES_WP2) $(PATH_WP2)-merged-xunit.xml
	@jrm $(PATH_WP2)-merged-xunit.xml $(XUNIT_FILES_WP2)
	sd test patch-xunit-classnames --xunit $(PATH_WP2)-merged-xunit.xml
	junit2html $(PATH_WP2)-merged-xunit.xml $(PATH_WP2)-merged-xunit.html
	junit2html $(PATH_WP2)-merged-xunit.xml --report-matrix $(PATH_WP2)-matrix.html
	sd test tinygo-pkg-report --xunit $(PATH_WP2)-merged-xunit.xml --out $(PATH_WP2)-status.json

# Dev branch regular tests
define run_dev_test
$(PATH_DEV)/$(2).xml:
	@mkdir -p $(PATH_DEV)
	cd tinygo && \
	gotestsum --raw-command \
		--junitfile ../$(PATH_DEV)/$(2).xml \
		-- sh -c 'timeout $(TIMEOUT) $(TINYGO) test -v -x $(1) 2>&1 | go tool test2json -p $(1)'
endef
$(foreach pkg,$(TEST_PACKAGES_ALL),$(eval $(call run_dev_test,$(pkg),$(subst /,-,$(subst .,t,$(pkg))))))
$(PATH_DEV)-status.json: $(XUNIT_FILES_DEV)
	@echo "All tests completed"
	@echo "Merging test results"
	@# xunitmerge $(XUNIT_FILES_DEV) $(PATH_DEV)-merged-xunit.xml
	@jrm $(PATH_DEV)-merged-xunit.xml $(XUNIT_FILES_DEV)
	sd test patch-xunit-classnames --xunit $(PATH_DEV)-merged-xunit.xml
	junit2html $(PATH_DEV)-merged-xunit.xml $(PATH_DEV)-merged-xunit.html
	junit2html $(PATH_DEV)-merged-xunit.xml --report-matrix $(PATH_DEV)-matrix.html
	sd test tinygo-pkg-report --xunit $(PATH_DEV)-merged-xunit.xml --out $(PATH_DEV)-status.json


# Some phony targets for convenience
.PHONY: tinygo-wasip1-test-all tinygo-wasip2-test-all tinygo-dev-test-all
tinygo-wasip1-test-all: $(PATH_WP1)-status.json
	@echo "wasip1 tests complete"
tinygo-wasip2-test-all: $(PATH_WP2)-status.json
	@echo "wasip2 tests complete"
tinygo-dev-test-all: $(PATH_DEV)-status.json
	@echo "dev tests complete"

# Require all test runs and build the table
TEST_TARGET_SUMMARIES := \
	$(PATH_WP1)-status.json \
	$(PATH_WP2)-status.json \
	$(PATH_DEV)-status.json

# $(PATH_WASI)-status.json

TEST_TABLE_OUT := docs/testing/pkgs-all.md
.PHONY: tinygo-test-table
tinygo-test-table: $(TEST_TARGET_SUMMARIES)
	@echo "Building test table at"
	sd test tinygo-pkg-table --github \
		"linux/arm64:$(PATH_DEV)-status.json" \
		"wasip1/wasm:$(PATH_WP1)-status.json" \
		"wasip2/wasm:$(PATH_WP2)-status.json" \
		> $(TEST_TABLE_OUT)

# "wasi/wasm:$(PATH_WASI)-status.json"


# Dev branch regular tests
define list_for_tags
$(1):
	cd tinygo && \
	$(TINYGO) list -
endef
