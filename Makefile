SHELL := /usr/bin/env bash -eEuo pipefail -c
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
.DEFAULT_GOAL := serve

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