# Build command snippets captured from discussion

## 24-2-13

Test program [gist](https://gist.github.com/dgryski/78bf0a175f12798d2c667bd2730fbea6) shared by
dgryski.

```go
package main

import (
 "bufio"
 "fmt"
 "io"
 "os"
 "syscall"
 "time"
)

func main() {
 println("hello, world", time.Now().UnixNano())
 time.Sleep(1 * time.Second)
 println("hello, world", time.Now().UnixNano())
 println("args")
 for i, s := range os.Args {
  println(i, s)
 }

 println("env")
 for i, s := range syscall.Environ() {
  println(i, s)
 }

 fmt.Fprintln(os.Stdout, "stdout hello, world")

 f, err := os.Open("main.go")
 if err != nil {
  println(err.Error())
  os.Exit(1)
 }

 b, err := io.ReadAll(f)
 if err != nil {
  println(err.Error())
  os.Exit(1)
 }
 println("main.go length: ", len(b))

 err = os.WriteFile("hello.txt", []byte("hello, world\n"), 0644)
 if err != nil {
  println(err.Error())
  os.Exit(1)
 }

 f, err = os.Open("hello.txt")
 if err != nil {
  println(err.Error())
  os.Exit(1)
 }

 var buf [5]byte
 n, err := f.ReadAt(buf[:], 7)
 if err != nil {
  println(err.Error())
  os.Exit(1)
 }
 f.Close()

 println("read", n, "bytes:", string(buf[:]))

 f, err = os.OpenFile("hello.txt", os.O_WRONLY, 0)
 if err != nil {
  println(err.Error())
  os.Exit(1)
 }
 copy(buf[:], "snork")
 n, err = f.WriteAt(buf[:], 7)
 if err != nil {
  println(err.Error())
  os.Exit(1)
 }
 f.Close()

 b, err = os.ReadFile("hello.txt")
 if err != nil {
  println(err.Error())
  os.Exit(1)
 }
 println("hello", n, "bytes:", string(buf[:]))

 f, err = os.OpenFile("hello.txt", os.O_RDWR, 0)
 if err != nil {
  println(err.Error())
  os.Exit(1)
 }

 fd := int(f.Fd())

 copy(buf[:], "AAAAA")
 if _, err := syscall.Write(fd, []byte("byebye ")); err != nil {
  println(err.Error())
  os.Exit(1)
 }

 if _, err := syscall.Read(fd, buf[:]); err != nil {

 }
 println(string(buf[:]))
 f.Close()

 f, err = os.OpenFile("hello.txt", os.O_WRONLY|os.O_APPEND, 0)
 if err != nil {
  println(err.Error())
  os.Exit(1)
 }
 copy(buf[:], "snuk\n")
 n, err = f.Write(buf[:])
 if err != nil {
  println(err.Error())
  os.Exit(1)
 }
 f.Close()

 s, err := os.Stat("hello.txt")
 fmt.Printf("hello.txt size: %v\n", s.Size())
 if s.Size() != 18 {
  println("hello.txt size =", s.Size(), "want 18")
  os.Exit(1)
 }

 scanner := bufio.NewScanner(os.Stdin)
 scanner.Scan()
 println("first line from stdin:", scanner.Text())
 fmt.Fprintln(os.Stdout, "stdout:", scanner.Text())
}
```

## 24-2-8

Thread from
[#wit-bindgen-go gopher slack](https://gophers.slack.com/archives/C060Z1SSG5D/p1707351873726459).

ydnar states:

> We should update the comment on the PR with current running instructions (no adapter needed)

```sh
tinygo build -target=wasip2 -x -o main.wasm ./cmd/wasip2-test
wasm-tools component embed -w wasi:cli/command $(tinygo env TINYGOROOT)/lib/wasi-cli/wit/ main.wasm -o embedded.wasm
wasm-tools component new embedded.wasm -o component.wasm
wasmtime run --wasm component-model --env PWD --env USER --dir=. --dir=/tmp component.wasm ./LICENSE

# wasmtime serve --wasm component-model component.wasm

# old commands
# tinygo build -x -target=wasip2 -o main.wasm ./cmd/wasip2-test
# wasm-tools component embed -w wasi:cli/imports ~/src/bytecodealliance/wasmtime/crates/wasi/wit/ main.wasm -o embedded.wasm
# wasm-tools component new embedded.wasm -o component.wasm --adapt ./wasi_snapshot_preview1.command.wasm
# WASMTIME_LOG=trace WASMTIME_BACKTRACE_DETAILS=1 wasmtime run --wasm component-model --env KEY0=VALUE0 --env KEY1=VALUE1 --dir=. --dir=/tmp component.wasm arg1 arg2 arg3 arg4 arg5
```

## 24-1-5

ydnar using `wasip2run.sh` test script. (thanks github search)

Script in
[scratch space](https://github.com/ydnar/scratch/blob/595d1be6d2ae08889291ff98994d4c84c71e3265/wasip2run.sh)
is similar to prior examples.

```sh
# This requires TinyGo with WASI Preview 2 support
# https://github.com/dgryski/tinygo/tree/dgryski/wasi-preview-2

tinygo build -target=wasip2 -x -o main.wasm ./cmd/wasip2-test
wasm-tools component embed -w wasi:cli/command $(tinygo env TINYGOROOT)/lib/wasi-cli/wit/ main.wasm -o embedded.wasm
wasm-tools component new embedded.wasm -o component.wasm
wasmtime run --wasm component-model --env PWD --env USER --dir=. --dir=/tmp component.wasm ./LICENSE

# wasmtime serve --wasm component-model component.wasm
```

Run:

```sh
./wasip2run.sh
wasm-ld --stack-first --no-demangle -L /Users/ydnar/src/ydnar/tinygo -o /var/folders/bt/h4l9n7ms233b7s_rdk57d59c0000gp/T/tinygo668822844/main /var/folders/bt/h4l9n7ms233b7s_rdk57d59c0000gp/T/tinygo668822844/main.o /Users/ydnar/Library/Caches/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /Users/ydnar/Library/Caches/tinygo/obj-cac42c2461f80138e3a00eee3bc093af63723bf5cfe020fbd1f62d73.bc /Users/ydnar/Library/Caches/tinygo/obj-e922faf710efebb1c084e2aabfb09ff29ae0af7069c3fa36b34228ce.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/Users/ydnar/Library/Caches/tinygo/thinlto -mllvm --rotation-max-header-size=0
hello world
```

## 24-1-4

```sh
tinygo build -x -target=wasip2 -o main.wasm main.go
wasm-tools component embed -w wasi:cli/reactor ~/go/src/github.com/bytecodealliance/wasmtime/crates/wasi/wit/ main.wasm -o embedded.wasm
wasm-tools component new embedded.wasm -o component.wasm --adapt ./wasi_snapshot_preview1.command.wasm
WASMTIME_LOG=trace WASMTIME_BACKTRACE_DETAILS=1 $WASMTIME --wasm component-model --env KEY0=VALUE0 --env KEY1=VALUE1 --dir=. --dir=/tmp component.wasm arg1 arg2 arg3 arg4 arg5
```

## 23-12-12

Early paste from dgryski's work

```sh
tinygo build -x -target=wasip2 -o main.wasm main.go wasm-tools component embed -w wasi:cli/reactor ~/go/src/github.com/bytecodealliance/wasmtime/crates/wasi/wit/ main.wasm -o embedded.wasm
wasm-tools component new embedded.wasm -o component.wasm --adapt ./wasi_snapshot_preview1.command.wasm
wasmtime --wasm component-model --env KEY0=VALUE0 --env KEY1=VALUE1 component.wasm arg1 arg2 arg3 arg4 arg5 || echo $?
```
