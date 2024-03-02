# TinyGo Design History (WASI)

## Quips fabout evolving design and work

### 24-2-13

> I’ve been struggling a little with the argument as to why wit-bindgen-go generated functions
> should not follow Go comma error convention. I caught up with with a friend/colleague yesterday
> afternoon and his perspective was "package cm is basically syscall, and should be thought of as
> FFI, exempt somewhat from normal Go idioms" -ydnar

> Can we reuse TinyGo’s wasip1 tests? -ydnar

### 24-1-30

From [BA SIG-GL-Go Minutes](https://docs.google.com/document/d/1QPnHQSaLX8gPDzcWcDYBqrPaL-UeGyKp1NLyvi2iWWg/edit?pli=1)

> Wasmexport [proposal: cmd/compile: add go:wasmexport directive · Issue #65199 · golang/go · GitHub](https://github.com/golang/go/issues/65199) (achille)
>
> - To differentiate CLI and reactor, instruct the compiler which to pick. CLI is the default. The reactor uses -Buildmode `wasip1-reactor`
> - TinyGo will build what’s being proposed in `wasmexport`.
> - Accepted, reviewed by the team, roughly a couple weeks iterating on the proposal. Released on Go 1.23 on Sep 2024.
> - Expect more enhancements when implementing the component model cabi.

Linked
