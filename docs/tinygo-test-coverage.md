# TinyGo Test Coverage

## File survey

### Makefile test targets

```sh
❯ rg '.*(test|corpus|bench).*:' GNUmakefile
285:test: wasi-libc check-nodejs-version
387:report-stdlib-tests-pass:
412:tinygo-test:
420:tinygo-test-fast:
422:tinygo-bench:
424:tinygo-bench-fast:
428:tinygo-test-wasi:
430:tinygo-test-wasip1:
432:tinygo-test-wasi-fast:
434:tinygo-test-wasip1-fast:
436:tinygo-test-wasip2-fast:
438:tinygo-bench-wasi:
440:tinygo-bench-wasi-fast:
444:test-corpus:
446:test-corpus-fast:
448:test-corpus-wasi: wasi-libc
453:    # regression test for #2666: e.g. encoding/hex must pass on baremetal
457:smoketest:
802:wasmtest:
```

### Plain go test files

```sh
❯ find -not -path './llvm-project*' -not -path './llvm-build/*' -not -path './lib/*' -not -path './src/vendor/*'  -name '*_test.go' | sort | tee /dev/tty | wc -l
./builder/builder_test.go
./builder/cc_test.go
./builder/sizes_test.go
./cgo/cgo_test.go
./cgo/const_test.go
./cgo/security_test.go
./compileopts/options_test.go
./compileopts/target_test.go
./compiler/compiler_test.go
./corpus_test.go
./interp/interp_test.go
./main_test.go
./monitor_test.go
./src/net/http/internal/ascii/print_test.go
./src/net/http/internal/chunked_test.go
./src/net/mac_test.go
./src/os/dir_test.go
./src/os/env_test.go
./src/os/env_unix_test.go
./src/os/export_test.go
./src/os/export_windows_test.go
./src/os/file_anyos_test.go
./src/os/getpagesize_test.go
./src/os/is_wasi_no_test.go
./src/os/is_wasi_test.go
./src/os/os_anyos_test.go
./src/os/os_chmod_test.go
./src/os/os_symlink_test.go
./src/os/os_test.go
./src/os/path_test.go
./src/os/path_windows_test.go
./src/os/pipe_test.go
./src/os/read_test.go
./src/os/removeall_test.go
./src/os/stat_test.go
./src/os/tempfile_test.go
./src/reflect/all_test.go
./src/reflect/benchmark_test.go
./src/reflect/convert_test.go
./src/reflect/export_test.go
./src/reflect/tostring_test.go
./src/reflect/type_test.go
./src/reflect/value_test.go
./src/reflect/visiblefields_test.go
./src/sync/cond_test.go
./src/sync/map_test.go
./src/sync/mutex_test.go
./src/sync/oncefunc_test.go
./src/sync/once_test.go
./src/sync/pool_test.go
./src/sync/waitgroup_test.go
./src/syscall/mmap_unix_test.go
./src/testing/benchmark_test.go
./src/testing/is_wasi_no_test.go
./src/testing/is_wasi_test.go
./src/testing/match_test.go
./src/testing/sub_test.go
./src/testing/testing_test.go
./tests/os/smoke/smoke_test.go
./tests/runtime/memhash_test.go
./tests/runtime_wasi/malloc_test.go
./tests/testing/builderr/builderr_test.go
./tests/testing/fail/fail_test.go
./tests/testing/pass/pass_test.go
./tests/testing/recurse/subdir/subdir_test.go
./tests/testing/recurse/top_test.go
./tests/text/template/smoke/smoke_test.go
./tests/tinygotest/main_test.go
./tests/wasm/chan_test.go
./tests/wasm/event_test.go
./tests/wasm/fmtprint_test.go
./tests/wasm/fmt_test.go
./tests/wasm/log_test.go
./tests/wasm/setup_test.go
./transform/allocs_test.go
./transform/gc_test.go
./transform/interface-lowering_test.go
./transform/interrupt_test.go
./transform/maps_test.go
./transform/panic_test.go
./transform/rtcalls_test.go
./transform/stacksize_test.go
./transform/transform_test.go
83
```

## Runs

### 24-1-17

A surprising number of existing tests pass (I think). Default go test output is pretty sparse
and doesn't include basic information like the number of tests that executed.

```text
/workspaces/dc-wasm-go/bin/tinygo test -target wasip2 -x compress/lzw compress/zlib container/heap container/list container/ring crypto/des crypto/md5 crypto/rc4 crypto/sha1 crypto/sha256 crypto/sha512 debug/macho embed/internal/embedtest encoding encoding/ascii85 encoding/base32 encoding/base64 encoding/csv encoding/hex go/scanner hash hash/adler32 hash/crc64 hash/fnv html internal/itoa internal/profile math math/cmplx net/http/internal/ascii net/mail os path reflect sync testing testing/iotest text/scanner unicode unicode/utf16 unicode/utf8  crypto/internal/nistec/fiat ./tests/runtime_wasi
--- FAIL: TestWriter (1708286944.26s)
    ../testdata/gettysburg.txt (order=0 litWidth=7): open ../testdata/gettysburg.txt: errno 63
    ../testdata/e.txt (order=0 litWidth=6): open ../testdata/e.txt: errno 63
FAIL
FAIL compress/lzw 0.317s
--- FAIL: TestWriterBig (1708286944.54s)
    ../testdata/gettysburg.txt (level=-1, dict=""): open ../testdata/gettysburg.txt: errno 63
--- FAIL: TestWriterDict (1708286944.53s)
    ../testdata/gettysburg.txt (level=-1, dict="0123456789."): open ../testdata/gettysburg.txt: errno 63
    ../testdata/gettysbur
--- FAIL: TestWriterBig (1708286944.54s)
    ../testdata/gettysburg.txt (level=-1, dict=""): open ../testdata/gettysburg.txt: errno 63
    ../testdata/e.txt (level=-1, dict=""): open ../testdata/e.txt: errno 63
    ../testdata/pi.txt (level=-1, dict=""): open ../testdata/pi.txt: errno 63
    ... truncated
--- FAIL: TestWriterDict (1708286944.53s)
    ../testdata/gettysburg.txt (level=-1, dict="0123456789."): open ../testdata/gettysburg.txt: errno 63
    ... truncated
    ../testdata/gettysbur
--- FAIL: TestWriterBig (1708286944.54s)
    ../testdata/gettysburg.txt (level=-1, dict=""): open ../testdata/gettysburg.txt: errno 63
    ... truncated
FAIL compress/zlib 0.387s
ok   container/heap 0.438s
ok   container/list 0.362s
ok   container/ring 0.559s
ok   crypto/des 0.594s
FAIL crypto/md5 0.000s
ok   crypto/rc4 0.554s
FAIL crypto/sha1 0.000s
FAIL crypto/sha256 0.000s
FAIL crypto/sha512 0.000s
ok   debug/macho 0.462s
ok   embed/internal/embedtest 5.223s
?    encoding [no test files]
ok   encoding/ascii85 0.555s
ok   encoding/base32 0.974s
ok   encoding/base64 0.542s
ok   encoding/csv 0.602s
ok   encoding/hex 0.390s
ok   go/scanner 0.340s
ok   hash 0.271s
ok   hash/adler32 0.704s
ok   hash/crc64 0.368s
ok   hash/fnv 0.267s
ok   html 0.299s
ok   internal/itoa 0.321s
FAIL internal/profile 0.000s
FAIL math 0.000s
FAIL math/cmplx 0.000s
ok   net/http/internal/ascii 0.257s
ok   net/mail 0.344s
FAIL os 0.000s
ok   path 0.520s
ok   reflect 0.422s
ok   sync 0.538s
FAIL testing 0.000s
ok   testing/iotest 0.246s
ok   text/scanner 0.339s
ok   unicode 0.376s
ok   unicode/utf16 0.273s
ok   unicode/utf8 0.225s
ok   crypto/internal/nistec/fiat 0.289s
ok   github.com/tinygo-org/tinygo/tests/runtime_wasi 3.214s
```
