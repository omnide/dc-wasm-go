# Mega devcontainer for go, rust, wasm, etc

Project related tools that change frequently or are under active development are managed as
submodules, or installable via script.

## Script Tree

Use the `sd` utility to index local scripts for easy invocation.

Example: `sd install all`

Script tree snapshot:

```text
sd
├── dc
│   ├── auth
│   ├── build-local
│   ├── home-apply
│   └── home-store
├── git
│   ├── status
│   └── sync
├── install
│   ├── all
│   ├── cargo-component
│   ├── cosmo
│   ├── jco
│   ├── tinygo
│   ├── wabt
│   ├── warg
│   ├── wash
│   ├── wasmer
│   ├── wasmtime
│   ├── wasm-tools
│   ├── wazero
│   ├── wit-bindgen
│   ├── wit-bindgen-go
│   └── wit-deps
├── test
│   ├── wasip1-go
│   └── wasip1-rust
└── tool
    └── versions
```

## Tool Versions

Current snapshot

```text
❯ sd tool versions
----------------------------------------------------------------------------------------
cpp
 cmake           3.25.1     /usr/bin/cmake
 gcc             12.2.0     /usr/bin/gcc
 g++             12.2.0     /usr/bin/g++
 make            4.3        /usr/bin/make
 ninja           1.11.1     /home/vscode/.nix-profile/bin/ninja
----------------------------------------------------------------------------------------
git
 gh              2.43.1     /home/vscode/.nix-profile/bin/gh
 git-lfs         3.4.1      /usr/local/bin/git-lfs
 git             2.43.0     /usr/local/bin/git
----------------------------------------------------------------------------------------
go
 golangci-lint   1.56.1     /go/bin/golangci-lint
 gotestsum       1.11.0     /usr/local/bin/gotestsum
 go              1.21.7     /usr/local/go/bin/go
 tinygo          0.31.0     /workspaces/dc-wasm-go/bin/tinygo
----------------------------------------------------------------------------------------
js
 node            20.11.0    /usr/local/share/nvm/versions/node/v20.11.0/bin/node
 npm             10.2.4     /usr/local/share/nvm/versions/node/v20.11.0/bin/npm
 yarn            1.22.19    /usr/bin/yarn
----------------------------------------------------------------------------------------
py
 pip3            24.0       /usr/local/python/current/bin/pip3
 pip             24.0       /usr/local/python/current/bin/pip
 python3         3.11.8     /usr/local/python/current/bin/python3
 python          3.11.8     /usr/local/python/current/bin/python
----------------------------------------------------------------------------------------
rust
 cargo           1.76.0     /usr/local/cargo/bin/cargo
 clang           14.0.6     /usr/bin/clang
 rustc           1.76.0     /usr/local/cargo/bin/rustc
 rustup          1.26.0     /usr/local/cargo/bin/rustup
----------------------------------------------------------------------------------------
util
 jq              1.7.1      /home/vscode/.nix-profile/bin/jq
 yq              3.2.3      /home/vscode/.nix-profile/bin/yq
----------------------------------------------------------------------------------------
wasm
 cargo-component 0.7.1      /usr/local/cargo/bin/cargo-component
 cosmo           0.25.0     /workspaces/dc-wasm-go/bin/cosmo
 jco             1.0.0      /usr/local/share/nvm/versions/node/v20.11.0/bin/jco
 wash            0.22.0     /workspaces/dc-wasm-go/bin/wash
 wasmer          4.2.5      /workspaces/dc-wasm-go/bin/wasmer
 wasmtime        19.0.0     /workspaces/dc-wasm-go/bin/wasmtime
 wasm-tools      1.0.58     /usr/local/cargo/bin/wasm-tools
 wazero          1.6.0      /go/bin/wazero
 wit-bindgen-go  ?.?.?      /workspaces/dc-wasm-go/bin/wit-bindgen-go
 wit-bindgen     0.17.0     /workspaces/dc-wasm-go/bin/wit-bindgen
 wit-deps        0.3.5      /usr/local/cargo/bin/wit-deps
```

## Tasks

Project related tasks that should be discoverable by `xc` are included here. Generally these should
just be invocations of one or more scripts already indexed by `sd`.

### setup

Update submodule content and install all project tools.

```bash
git submodule update --init --recursive
sd install all
python3 -m pip install -r wasi-testsuite/test-runner/requirements/dev.txt
```
