// Code generated by wit-bindgen-go. DO NOT EDIT.

//go:build !wasip1

// Package stdin represents the interface "wasi:cli/stdin@0.2.0".
package stdin

import (
	"github.com/omnide/dc-wasm-go/ex/echo/wasi/wasi/io/v0.2.0/streams"
)

// InputStream represents the resource "wasi:io/streams@0.2.0#input-stream".
//
// See [streams.InputStream] for more information.
type InputStream = streams.InputStream

// GetStdin represents function "wasi:cli/stdin@0.2.0#get-stdin".
//
//	get-stdin: func() -> input-stream
//
//go:nosplit
func GetStdin() InputStream {
	return wasmimport_GetStdin()
}

//go:wasmimport wasi:cli/stdin@0.2.0 get-stdin
//go:noescape
func wasmimport_GetStdin() InputStream
