package main

import (
	p2random "github.com/omnide/dc-wasm-go/samples/tinygo-wasi/p2random/pkg"
)

//go:generate wit-bindgen tiny-go wit --out-dir=pkg --gofmt
func main() {
	value := p2random.WasiRandom0_2_0_RandomGetRandomU64()
	println("Random value: %d\n", value)
}
