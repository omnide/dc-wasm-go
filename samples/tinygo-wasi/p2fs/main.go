package main

import (
	p2fs "github.com/omnide/dc-wasm-go/samples/tinygo-wasi/p2fs/pkg"
)

type TypeDescriptor = p2fs.WasiFilesystem0_2_0_TypesDescriptor

//go:generate wit-bindgen tiny-go wit --out-dir=pkg --gofmt
func main() {}
