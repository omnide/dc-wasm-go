SHELL := /usr/bin/env bash -eEuo pipefail -c
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
.DEFAULT_GOAL := serve

BUILD_DIR := build
SAMP_DIR := samples
SAMP_OUT := $(BUILD_DIR)/samples
P2ALL_DIR := $(SAMP_DIR)/tinygo-wasi/p2all
P2ALL_OUT := $(SAMP_OUT)/tinygo-wasi/p2all


$(SAMP_OUT):
	mkdir -p $(SAMP_OUT)

.PHONY: samples/tinygo-wasi/add
samples/tinygo-wasi/add: $(SAMP_OUT)
	mkdir -p $(SAMP_OUT)/tgwasi-add
	tinygo build -o $(SAMP_OUT)/tgwasi-add/main.wasm -target=wasi $(SAMP_DIR)/tinygo-wasi/add/main.go
	wasm2wat $(SAMP_OUT)/tgwasi-add/main.wasm -o $(SAMP_OUT)/tgwasi-add/main.wat
	wasmtime run --invoke add build/samples/tgwasi-add/main.wasm 20 22 2>/dev/null

.PHONY: samples/wasi-p2-go/wit
samples/wasi-p2-go/wit: $(SAMP_OUT)
	cd $(P2ALL_DIR)/wit && wit-deps
	./bin/wit-bindgen tiny-go $(P2ALL_DIR)/wit/host.wit --out-dir $(P2ALL_OUT)
	./bin/wit-bindgen tiny-go ./go-example/wit/host.wit --out-dir ./go-example/host
	go build -o $(SAMP_OUT)/wasi-p2-go-wit/main.wasm $(SAMP_DIR)/wasi-p2-go/wit/main.go
	wasm2wat $(SAMP_OUT)/wasi-p2-go-wit/main.wasm -o $(SAMP_OUT)/wasi-p2-go-wit/main.wat
	wasmtime run --invoke wit build/samples/wasi-p2-go-wit/main.wasm 2>/dev/null