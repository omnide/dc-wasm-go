// Code generated by wit-bindgen-go. DO NOT EDIT.

//go:build !wasip1

// Package poll represents the interface "wasi:io/poll@0.2.0".
//
// A poll API intended to let users wait for I/O events on multiple handles
// at once.
package poll

import (
	"github.com/ydnar/wasm-tools-go/cm"
)

// Pollable represents the resource "wasi:io/poll@0.2.0#pollable".
//
// `pollable` represents a single I/O event which may be ready, or not.
//
//	resource pollable
type Pollable cm.Resource

// ResourceDrop represents the Canonical ABI function "resource-drop".
//
// Drops a resource handle.
//
//go:nosplit
func (self Pollable) ResourceDrop() {
	self.wasmimport_ResourceDrop()
}

//go:wasmimport wasi:io/poll@0.2.0 [resource-drop]pollable
//go:noescape
func (self Pollable) wasmimport_ResourceDrop()

// Block represents method "block".
//
// `block` returns immediately if the pollable is ready, and otherwise
// blocks until ready.
//
// This function is equivalent to calling `poll.poll` on a list
// containing only this pollable.
//
//	block: func()
//
//go:nosplit
func (self Pollable) Block() {
	self.wasmimport_Block()
}

//go:wasmimport wasi:io/poll@0.2.0 [method]pollable.block
//go:noescape
func (self Pollable) wasmimport_Block()

// Ready represents method "ready".
//
// Return the readiness of a pollable. This function never blocks.
//
// Returns `true` when the pollable is ready, and `false` otherwise.
//
//	ready: func() -> bool
//
//go:nosplit
func (self Pollable) Ready() bool {
	return self.wasmimport_Ready()
}

//go:wasmimport wasi:io/poll@0.2.0 [method]pollable.ready
//go:noescape
func (self Pollable) wasmimport_Ready() bool

// Poll represents function "wasi:io/poll@0.2.0#poll".
//
// Poll for completion on a set of pollables.
//
// This function takes a list of pollables, which identify I/O sources of
// interest, and waits until one or more of the events is ready for I/O.
//
// The result `list<u32>` contains one or more indices of handles in the
// argument list that is ready for I/O.
//
// If the list contains more elements than can be indexed with a `u32`
// value, this function traps.
//
// A timeout can be implemented by adding a pollable from the
// wasi-clocks API to the list.
//
// This function does not return a `result`; polling in itself does not
// do any I/O so it doesn't fail. If any of the I/O sources identified by
// the pollables has an error, it is indicated by marking the source as
// being reaedy for I/O.
//
//	poll: func(in: list<borrow<pollable>>) -> list<u32>
//
//go:nosplit
func Poll(in cm.List[Pollable]) cm.List[uint32] {
	var result cm.List[uint32]
	wasmimport_Poll(in, &result)
	return result
}

//go:wasmimport wasi:io/poll@0.2.0 poll
//go:noescape
func wasmimport_Poll(in cm.List[Pollable], result *cm.List[uint32])
