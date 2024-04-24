SHELL := /usr/bin/env bash -eEuo pipefail -c
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

BUILD_DIR := build

.PHONY: hack
hack:
	cd wasi-http && wit-deps
	mkdir -p ./wasi/
	wit-bindgen-go generate -o ./wasi/ -p github.com/omnide/dc-wasm-go/ex/echo/wasi --versioned ./wasi-http/wit

	tinygo build -o echo.wasm -target=wasip2 main.go