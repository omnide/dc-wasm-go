package main

import (
	"fmt"

	p2random "github.com/omnide/dc-wasm-go/ex/tinygo-wasi/p2random/pkg"
)

//go:generate wit-bindgen tiny-go wit --out-dir=pkg
func main() {
	value := p2random.WasiRandom0_2_0_RandomGetRandomU64()
	fmt.Printf("Random value: 🎲🎲🎲 %d 🎲🎲🎲\n", value)
}
