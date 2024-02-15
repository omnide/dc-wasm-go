// Package random represents the interface "wasi:random/random@0.2.0".
//
// WASI Random is a random data API.
//
// It is intended to be portable at least between Unix-family platforms and
// Windows.
package random

// GetRandomBytes represents the function "wasi:random/random@0.2.0#get-random-bytes".
//
// Return `len` cryptographically-secure random or pseudo-random bytes.
//
// This function must produce data at least as cryptographically secure and
// fast as an adequately seeded cryptographically-secure pseudo-random
// number generator (CSPRNG). It must not block, from the perspective of
// the calling program, under any circumstances, including on the first
// request and on requests for numbers of bytes. The returned data must
// always be unpredictable.
//
// This function must always return fresh data. Deterministic environments
// must omit this function, rather than implementing it with deterministic
// data.
func GetRandomBytes()

//go:wasmimport wasi:random/random@0.2.0 get-random-bytes
func get_random_bytes()

// GetRandomU64 represents the function "wasi:random/random@0.2.0#get-random-u64".
//
// Return a cryptographically-secure random or pseudo-random `u64` value.
//
// This function returns the same type of data as `get-random-bytes`,
// represented as a `u64`.
func GetRandomU64()

//go:wasmimport wasi:random/random@0.2.0 get-random-u64
func get_random_u64()
