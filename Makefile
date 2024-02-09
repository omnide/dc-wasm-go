SHELL := /usr/bin/env bash -eEuo pipefail -c
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
.DEFAULT_GOAL := serve

BUILD_DIR := build
SAMP_DIR := samples
SAMP_OUT := $(BUILD_DIR)/samples
WASI_SAMPLES := p2fs p2random p2all


$(SAMP_OUT):
	mkdir -p $(SAMP_OUT)

$(P2ALL_OUT):
	mkdir -p $(P2ALL_OUT)

.PHONY: samples/tinygo-wasi/add
samples/tinygo-wasi/add: $(SAMP_OUT)
	mkdir -p $(SAMP_OUT)/tgwasi-add
	tinygo build -o $(SAMP_OUT)/tgwasi-add/main.wasm -target=wasi $(SAMP_DIR)/tinygo-wasi/add/main.go
	wasm2wat $(SAMP_OUT)/tgwasi-add/main.wasm -o $(SAMP_OUT)/tgwasi-add/main.wat
	wasmtime run --invoke add build/samples/tgwasi-add/main.wasm 20 22 2>/dev/null

define wp2_template
.PHONY: $$(SAMP_DIR)/tinygo-wasi/$(1)
$$(SAMP_DIR)/tinygo-wasi/$(1):
	cd $$(SAMP_DIR)/tinygo-wasi/$(1) && wit-deps
	wit-bindgen tiny-go $$(SAMP_DIR)/tinygo-wasi/$(1)/wit --out-dir $$(SAMP_DIR)/tinygo-wasi/$(1)/pkg
	tinygo build -o $$(SAMP_OUT)/tinygo-wasi/$(1)/main.wasm $$(SAMP_DIR)/tinygo-wasi/$(1)/main.go
	wasm-tools component embed $$(SAMP_DIR)/tinygo-wasi/$(1)/wit $$(SAMP_OUT)/tinygo-wasi/$(1)/main.wasm > $$(SAMP_OUT)/tinygo-wasi/$(1)/main.embed.wasm
	# wasm-tools component new $$(SAMP_OUT)/tinygo-wasi/$(1)/main.embed.wasm -o $$(SAMP_OUT)/tinygo-wasi/$(1)/main.component.wasm --adapt=wasi
	wasmtime run $$(SAMP_OUT)/tinygo-wasi/$(1)/main.embed.wasm 2>/dev/null
endef

$(foreach samp,$(WASI_SAMPLES),$(eval $(call wp2_template,$(samp))))

# .PHONY: $(P2ALL_DIR)
# $(P2ALL_DIR): $(P2ALL_OUT)
# 	cd $(P2ALL_DIR) && wit-deps
# 	wit-bindgen tiny-go $(P2ALL_DIR)/wit --out-dir $(P2ALL_OUT)
# 	tinygo build -o $(P2ALL_OUT)/main.wasm $(P2ALL_DIR)/main.go
# 	wasm2wat $(P2ALL_OUT)/main.wasm -o $(P2ALL_OUT)/main.wat
# 	wasmtime run $(P2ALL_OUT)/main.wasm 2>/dev/null