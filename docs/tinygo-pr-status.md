# Recent PRs related to WebAssembly

## 2024-03-15

- dgryski, [#4027 wasi preview 2 support](https://github.com/tinygo-org/tinygo/pull/4027)
  - the big one, adds wasip2_libc implementations to leverage wasi standard wit worlds
  - needs cm implementation from wasm-tools-go (to be moved to bytecodealliance/cm-go)
- ✅ ydnar,
  [#4175 all: replace target=wasi with target=wasip1](https://github.com/tinygo-org/tinygo/pull/4175)
  - important to cleanup the experience, i like the idea of just expressing target defaults in the
    json bundles
- ✅ aykevl,
  [#4188 wasm: fix symbol table index for archives](https://github.com/tinygo-org/tinygo/pull/4188)
  - bug use the custom linking WebAssembly section for symbol table gen
  - enhancements contributed to
    [go-wasm](https://github.com/aykevl/go-wasm/commit/50275154210c1816c2a4ef2fdd33b78e412f08a2)
- ydnar,
  [#4082 runtime,builder: WebAssembly reactor mode](https://github.com/tinygo-org/tinygo/pull/4082)
  - important for components that don't really \_start, but they do need_initialize
  - aykevl suggested adding a 'wasi-reactor' target
- ❌ ydnar,
  [#4169 handle missing llvm math intrincics](https://github.com/tinygo-org/tinygo/pull/4169)
  - could be used to solve math lib problems temporarily while waiting on #4176
  - closed, using #4176 instead
- ✅ aykevl, [#4176 add math and memory builtins](https://github.com/tinygo-org/tinygo/pull/4176)
  - alternative to 4169
- golang proposal:
  [#65199 cmd/compile: add go:wasmexport directive](https://github.com/golang/go/issues/65199)
  - "In the absence of threading or stack switching capability in Wasm, the simplest option is to
    document that all goroutines still running when the invocation of the go:wasmexport function
    returns will be paused until the control flow re-enters the Go application."
  - "When the goroutine running the exported function blocks for any reason, the function will yield
    to the Go runtime. The Go runtime will schedule other goroutines as necessary. If there are no
    other goroutines, the application will crash with a deadlock, as there is no way to proceed, and
    Wasm code cannot block."
- golang cl wasm32
  [https://go-review.googlesource.com/c/go/+/570838](https://go-review.googlesource.com/c/go/+/570838)

### Also of interest

- scottfeldman, [#4187 full Go "net" package](https://github.com/tinygo-org/tinygo/pull/4187)
  - would be important for direct lift of existing code without having to use netdever,netlinker
    probe
  - concerns about the bin bloat, ayke suggests analysis and contrib upstream to go to resolve that
    (possibly big work)
  - accidentally closed PR with
    [git mishap](https://github.com/soypat/cyw43439/issues/41#issuecomment-2016317818)
