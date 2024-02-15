package main

import (
	"fmt"

	p2random "github.com/ydnar/wasm-tools-go/wasi/random/random"
)

//go:generate wit-bindgen tiny-go wit --out-dir=pkg
func main() {
	value := p2random.GetRandomU64()
	fmt.Printf("Random value: 🎲🎲🎲 %d 🎲🎲🎲\n", value)
}
