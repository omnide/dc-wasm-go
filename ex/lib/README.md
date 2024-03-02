# Provenance

The wasm modules here are downloaded from
[bytecodealliance/wasmtime dev releases](https://github.com/bytecodealliance/wasmtime/releases).

The preview1 modules are used with `wasm-tools component new ... --adapt=` invocations for WASI
components.

From the [wit-component crate doc](https://crates.io/crates/wit-component):

> Supports "adapters" which can be used to bridge legacy core WebAssembly imported functions into
> component model functions. Adapters are themselves core wasm binaries which will be embedded into
> the final component. An adapter's exports can be imported by the main core wasm binary and the
> adapter can then call component model imports.

Metadata about the component can be dumped via `wasm-tools metadata`, example:

```text
wasm-tools metadata show samples/lib/wasi_snapshot_preview1.command.wasm
module wasi_preview1_component_adapter.command.adapter:cee0eeb2892e3831b2952b445319e6d894ea378e:
    language:
        Rust
    processed-by:
        rustc: 1.76.0 (07dca489a 2024-02-04)
```
