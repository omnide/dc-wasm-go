
---
title: Packages supported by TinyGo
---

This table shows test status for all Go standard library packages, including the
counts of the tests that were run along with failures/errors. Error messages 
from build errors and test failures are linked below the table.

Test targets include:

- linux/arm64
- wasip1/wasm
- wasip2/wasm


Note that tests may build and pass, but that does not mean that all functions 
and types in the program can be used. For example, sometimes using some 
functions or types of the package will still trigger compiler errors.

## Legend


Icon | Description |
 --- | --- |
🟢 | Tests pass |
❌ | Build error |
🫥 | No tests |
⛈️ | Test failures |
&nbsp; | (blank) Packaged skipped |


## Summary

Package | Status (Fail / Tests) | Status (Fail / Tests) | Status (Fail / Tests) |
--- | --- | --- | --- |
&nbsp; | linux/arm64 | wasip1/wasm | wasip2/wasm |
./tests/runtime_wasi |&nbsp; | &nbsp; | &nbsp; |<span style="color: green">🟢</span> &nbsp; 8 |<span style="color: green">🟢</span> &nbsp; 8 |
archive/tar |[<span style="color: red">❌</span>](#archivetar-linuxarm64) &nbsp; [1](#archivetar-linuxarm64) / 0 |[<span style="color: orange">⛈️</span>](#archivetar-wasip1wasm) &nbsp; [1](#archivetar-wasip1wasm) / 58 |[<span style="color: red">❌</span>](#archivetar-wasip2wasm) &nbsp; [1](#archivetar-wasip2wasm) / 0 |
archive/zip |<span style="color: green">🟢</span> &nbsp; 99 |[<span style="color: orange">⛈️</span>](#archivezip-wasip1wasm) &nbsp; [1](#archivezip-wasip1wasm) / 84 |[<span style="color: orange">⛈️</span>](#archivezip-wasip2wasm) &nbsp; [5](#archivezip-wasip2wasm) / 83 |
bufio |[<span style="color: orange">⛈️</span>](#bufio-linuxarm64) &nbsp; [1](#bufio-linuxarm64) / 81 |[<span style="color: orange">⛈️</span>](#bufio-wasip1wasm) &nbsp; [2](#bufio-wasip1wasm) / 42 |[<span style="color: orange">⛈️</span>](#bufio-wasip2wasm) &nbsp; [2](#bufio-wasip2wasm) / 42 |
bytes |<span style="color: green">🟢</span> &nbsp; 91 |[<span style="color: orange">⛈️</span>](#bytes-wasip1wasm) &nbsp; [1](#bytes-wasip1wasm) / 13 |[<span style="color: orange">⛈️</span>](#bytes-wasip2wasm) &nbsp; [1](#bytes-wasip2wasm) / 1 |
cmp |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |
compress/bzip2 |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 3 |
compress/flate |<span style="color: green">🟢</span> &nbsp; 64 |[<span style="color: orange">⛈️</span>](#compressflate-wasip1wasm) &nbsp; [1](#compressflate-wasip1wasm) / 23 |[<span style="color: orange">⛈️</span>](#compressflate-wasip2wasm) &nbsp; [2](#compressflate-wasip2wasm) / 24 |
compress/gzip |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
compress/lzw |<span style="color: green">🟢</span> &nbsp; 17 |<span style="color: green">🟢</span> &nbsp; 17 |[<span style="color: orange">⛈️</span>](#compresslzw-wasip2wasm) &nbsp; [1](#compresslzw-wasip2wasm) / 17 |
compress/zlib |<span style="color: green">🟢</span> &nbsp; 6 |<span style="color: green">🟢</span> &nbsp; 6 |[<span style="color: orange">⛈️</span>](#compresszlib-wasip2wasm) &nbsp; [3](#compresszlib-wasip2wasm) / 6 |
container/heap |<span style="color: green">🟢</span> &nbsp; 7 |<span style="color: green">🟢</span> &nbsp; 7 |<span style="color: green">🟢</span> &nbsp; 7 |
container/list |<span style="color: green">🟢</span> &nbsp; 10 |<span style="color: green">🟢</span> &nbsp; 10 |<span style="color: green">🟢</span> &nbsp; 10 |
container/ring |<span style="color: green">🟢</span> &nbsp; 8 |<span style="color: green">🟢</span> &nbsp; 8 |<span style="color: green">🟢</span> &nbsp; 8 |
context |[<span style="color: red">❌</span>](#context-linuxarm64) &nbsp; [1](#context-linuxarm64) / 0 |[<span style="color: red">❌</span>](#context-wasip1wasm) &nbsp; [1](#context-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#context-wasip2wasm) &nbsp; [1](#context-wasip2wasm) / 0 |
crypto |[<span style="color: red">❌</span>](#crypto-linuxarm64) &nbsp; [1](#crypto-linuxarm64) / 0 |[<span style="color: orange">⛈️</span>](#crypto-wasip1wasm) &nbsp; [1](#crypto-wasip1wasm) / 1 |[<span style="color: orange">⛈️</span>](#crypto-wasip2wasm) &nbsp; [1](#crypto-wasip2wasm) / 1 |
crypto/aes |[<span style="color: red">❌</span>](#cryptoaes-linuxarm64) &nbsp; [1](#cryptoaes-linuxarm64) / 0 |[<span style="color: orange">⛈️</span>](#cryptoaes-wasip1wasm) &nbsp; [1](#cryptoaes-wasip1wasm) / 9 |[<span style="color: orange">⛈️</span>](#cryptoaes-wasip2wasm) &nbsp; [1](#cryptoaes-wasip2wasm) / 9 |
crypto/cipher |[<span style="color: red">❌</span>](#cryptocipher-linuxarm64) &nbsp; [1](#cryptocipher-linuxarm64) / 0 |[<span style="color: orange">⛈️</span>](#cryptocipher-wasip1wasm) &nbsp; [1](#cryptocipher-wasip1wasm) / 5 |[<span style="color: orange">⛈️</span>](#cryptocipher-wasip2wasm) &nbsp; [1](#cryptocipher-wasip2wasm) / 5 |
crypto/des |<span style="color: green">🟢</span> &nbsp; 18 |<span style="color: green">🟢</span> &nbsp; 18 |<span style="color: green">🟢</span> &nbsp; 18 |
crypto/dsa |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |
crypto/ecdh |[<span style="color: red">❌</span>](#cryptoecdh-linuxarm64) &nbsp; [1](#cryptoecdh-linuxarm64) / 0 |[<span style="color: orange">⛈️</span>](#cryptoecdh-wasip1wasm) &nbsp; [1](#cryptoecdh-wasip1wasm) / 47 |[<span style="color: orange">⛈️</span>](#cryptoecdh-wasip2wasm) &nbsp; [1](#cryptoecdh-wasip2wasm) / 47 |
crypto/ecdsa |[<span style="color: red">❌</span>](#cryptoecdsa-linuxarm64) &nbsp; [1](#cryptoecdsa-linuxarm64) / 0 |<span style="color: green">🟢</span> &nbsp; 82 |[<span style="color: orange">⛈️</span>](#cryptoecdsa-wasip2wasm) &nbsp; [1](#cryptoecdsa-wasip2wasm) / 82 |
crypto/ed25519 |[<span style="color: orange">⛈️</span>](#cryptoed25519-linuxarm64) &nbsp; [1](#cryptoed25519-linuxarm64) / 9 |[<span style="color: orange">⛈️</span>](#cryptoed25519-wasip1wasm) &nbsp; [1](#cryptoed25519-wasip1wasm) / 9 |[<span style="color: orange">⛈️</span>](#cryptoed25519-wasip2wasm) &nbsp; [2](#cryptoed25519-wasip2wasm) / 9 |
crypto/elliptic |[<span style="color: red">❌</span>](#cryptoelliptic-linuxarm64) &nbsp; [1](#cryptoelliptic-linuxarm64) / 0 |<span style="color: green">🟢</span> &nbsp; 82 |<span style="color: green">🟢</span> &nbsp; 82 |
crypto/hmac |<span style="color: green">🟢</span> &nbsp; 4 |[<span style="color: orange">⛈️</span>](#cryptohmac-wasip1wasm) &nbsp; [1](#cryptohmac-wasip1wasm) / 2 |[<span style="color: orange">⛈️</span>](#cryptohmac-wasip2wasm) &nbsp; [1](#cryptohmac-wasip2wasm) / 2 |
crypto/md5 |<span style="color: green">🟢</span> &nbsp; 6 |<span style="color: green">🟢</span> &nbsp; 6 |<span style="color: green">🟢</span> &nbsp; 6 |
crypto/rand |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
crypto/rc4 |<span style="color: green">🟢</span> &nbsp; 2 |<span style="color: green">🟢</span> &nbsp; 2 |<span style="color: green">🟢</span> &nbsp; 2 |
crypto/rsa |[<span style="color: red">❌</span>](#cryptorsa-linuxarm64) &nbsp; [1](#cryptorsa-linuxarm64) / 0 |[<span style="color: orange">⛈️</span>](#cryptorsa-wasip1wasm) &nbsp; [1](#cryptorsa-wasip1wasm) / 3 |[<span style="color: orange">⛈️</span>](#cryptorsa-wasip2wasm) &nbsp; [1](#cryptorsa-wasip2wasm) / 3 |
crypto/sha1 |<span style="color: green">🟢</span> &nbsp; 7 |<span style="color: green">🟢</span> &nbsp; 7 |<span style="color: green">🟢</span> &nbsp; 7 |
crypto/sha256 |<span style="color: green">🟢</span> &nbsp; 11 |<span style="color: green">🟢</span> &nbsp; 11 |<span style="color: green">🟢</span> &nbsp; 11 |
crypto/sha512 |<span style="color: green">🟢</span> &nbsp; 12 |<span style="color: green">🟢</span> &nbsp; 12 |<span style="color: green">🟢</span> &nbsp; 12 |
crypto/subtle |[<span style="color: orange">⛈️</span>](#cryptosubtle-linuxarm64) &nbsp; [1](#cryptosubtle-linuxarm64) / 2 |[<span style="color: orange">⛈️</span>](#cryptosubtle-wasip1wasm) &nbsp; [1](#cryptosubtle-wasip1wasm) / 2 |[<span style="color: orange">⛈️</span>](#cryptosubtle-wasip2wasm) &nbsp; [1](#cryptosubtle-wasip2wasm) / 2 |
crypto/tls |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
crypto/x509 |[<span style="color: red">❌</span>](#cryptox509-linuxarm64) &nbsp; [1](#cryptox509-linuxarm64) / 0 |[<span style="color: red">❌</span>](#cryptox509-wasip1wasm) &nbsp; [1](#cryptox509-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#cryptox509-wasip2wasm) &nbsp; [1](#cryptox509-wasip2wasm) / 0 |
crypto/x509/pkix |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
database/sql |[<span style="color: red">❌</span>](#databasesql-linuxarm64) &nbsp; [1](#databasesql-linuxarm64) / 0 |[<span style="color: red">❌</span>](#databasesql-wasip1wasm) &nbsp; [1](#databasesql-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#databasesql-wasip2wasm) &nbsp; [1](#databasesql-wasip2wasm) / 0 |
database/sql/driver |<span style="color: green">🟢</span> &nbsp; 1 |<span style="color: green">🟢</span> &nbsp; 1 |<span style="color: green">🟢</span> &nbsp; 1 |
debug/buildinfo |[<span style="color: red">❌</span>](#debugbuildinfo-linuxarm64) &nbsp; [1](#debugbuildinfo-linuxarm64) / 0 |[<span style="color: red">❌</span>](#debugbuildinfo-wasip1wasm) &nbsp; [1](#debugbuildinfo-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#debugbuildinfo-wasip2wasm) &nbsp; [1](#debugbuildinfo-wasip2wasm) / 0 |
debug/dwarf |<span style="color: green">🟢</span> &nbsp; 40 |<span style="color: green">🟢</span> &nbsp; 40 |[<span style="color: orange">⛈️</span>](#debugdwarf-wasip2wasm) &nbsp; [23](#debugdwarf-wasip2wasm) / 29 |
debug/elf |[<span style="color: red">❌</span>](#debugelf-linuxarm64) &nbsp; [1](#debugelf-linuxarm64) / 0 |[<span style="color: red">❌</span>](#debugelf-wasip1wasm) &nbsp; [1](#debugelf-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#debugelf-wasip2wasm) &nbsp; [1](#debugelf-wasip2wasm) / 0 |
debug/gosym |[<span style="color: orange">⛈️</span>](#debuggosym-linuxarm64) &nbsp; [1](#debuggosym-linuxarm64) / 1 |[<span style="color: orange">⛈️</span>](#debuggosym-wasip1wasm) &nbsp; [1](#debuggosym-wasip1wasm) / 1 |[<span style="color: orange">⛈️</span>](#debuggosym-wasip2wasm) &nbsp; [1](#debuggosym-wasip2wasm) / 1 |
debug/macho |<span style="color: green">🟢</span> &nbsp; 7 |<span style="color: green">🟢</span> &nbsp; 7 |[<span style="color: orange">⛈️</span>](#debugmacho-wasip2wasm) &nbsp; [5](#debugmacho-wasip2wasm) / 7 |
debug/pe |[<span style="color: orange">⛈️</span>](#debugpe-linuxarm64) &nbsp; [1](#debugpe-linuxarm64) / 1 |[<span style="color: orange">⛈️</span>](#debugpe-wasip1wasm) &nbsp; [1](#debugpe-wasip1wasm) / 1 |[<span style="color: orange">⛈️</span>](#debugpe-wasip2wasm) &nbsp; [1](#debugpe-wasip2wasm) / 1 |
debug/plan9obj |<span style="color: green">🟢</span> &nbsp; 2 |<span style="color: green">🟢</span> &nbsp; 2 |[<span style="color: orange">⛈️</span>](#debugplan9obj-wasip2wasm) &nbsp; [2](#debugplan9obj-wasip2wasm) / 2 |
embed |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
encoding |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
encoding/ascii85 |<span style="color: green">🟢</span> &nbsp; 9 |<span style="color: green">🟢</span> &nbsp; 9 |<span style="color: green">🟢</span> &nbsp; 9 |
encoding/asn1 |<span style="color: green">🟢</span> &nbsp; 38 |<span style="color: green">🟢</span> &nbsp; 38 |[<span style="color: orange">⛈️</span>](#encodingasn1-wasip2wasm) &nbsp; [1](#encodingasn1-wasip2wasm) / 38 |
encoding/base32 |<span style="color: green">🟢</span> &nbsp; 24 |<span style="color: green">🟢</span> &nbsp; 24 |<span style="color: green">🟢</span> &nbsp; 24 |
encoding/base64 |<span style="color: green">🟢</span> &nbsp; 17 |<span style="color: green">🟢</span> &nbsp; 17 |<span style="color: green">🟢</span> &nbsp; 17 |
encoding/binary |[<span style="color: orange">⛈️</span>](#encodingbinary-linuxarm64) &nbsp; [1](#encodingbinary-linuxarm64) / 20 |[<span style="color: orange">⛈️</span>](#encodingbinary-wasip1wasm) &nbsp; [1](#encodingbinary-wasip1wasm) / 16 |[<span style="color: orange">⛈️</span>](#encodingbinary-wasip2wasm) &nbsp; [1](#encodingbinary-wasip2wasm) / 16 |
encoding/csv |<span style="color: green">🟢</span> &nbsp; 71 |<span style="color: green">🟢</span> &nbsp; 71 |<span style="color: green">🟢</span> &nbsp; 71 |
encoding/gob |[<span style="color: red">❌</span>](#encodinggob-linuxarm64) &nbsp; [1](#encodinggob-linuxarm64) / 0 |[<span style="color: red">❌</span>](#encodinggob-wasip1wasm) &nbsp; [1](#encodinggob-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#encodinggob-wasip2wasm) &nbsp; [1](#encodinggob-wasip2wasm) / 0 |
encoding/hex |<span style="color: green">🟢</span> &nbsp; 12 |<span style="color: green">🟢</span> &nbsp; 12 |<span style="color: green">🟢</span> &nbsp; 12 |
encoding/json |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
encoding/pem |[<span style="color: orange">⛈️</span>](#encodingpem-linuxarm64) &nbsp; [1](#encodingpem-linuxarm64) / 7 |[<span style="color: orange">⛈️</span>](#encodingpem-wasip1wasm) &nbsp; [1](#encodingpem-wasip1wasm) / 4 |[<span style="color: orange">⛈️</span>](#encodingpem-wasip2wasm) &nbsp; [1](#encodingpem-wasip2wasm) / 4 |
encoding/xml |[<span style="color: orange">⛈️</span>](#encodingxml-linuxarm64) &nbsp; [1](#encodingxml-linuxarm64) / 336 |[<span style="color: orange">⛈️</span>](#encodingxml-wasip1wasm) &nbsp; [1](#encodingxml-wasip1wasm) / 336 |[<span style="color: orange">⛈️</span>](#encodingxml-wasip2wasm) &nbsp; [158](#encodingxml-wasip2wasm) / 336 |
errors |[<span style="color: orange">⛈️</span>](#errors-linuxarm64) &nbsp; [19](#errors-linuxarm64) / 60 |[<span style="color: orange">⛈️</span>](#errors-wasip1wasm) &nbsp; [21](#errors-wasip1wasm) / 56 |[<span style="color: orange">⛈️</span>](#errors-wasip2wasm) &nbsp; [20](#errors-wasip2wasm) / 55 |
expvar |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
flag |[<span style="color: orange">⛈️</span>](#flag-linuxarm64) &nbsp; [2](#flag-linuxarm64) / 24 |[<span style="color: orange">⛈️</span>](#flag-wasip1wasm) &nbsp; [1](#flag-wasip1wasm) / 14 |[<span style="color: orange">⛈️</span>](#flag-wasip2wasm) &nbsp; [1](#flag-wasip2wasm) / 14 |
fmt |[<span style="color: orange">⛈️</span>](#fmt-linuxarm64) &nbsp; [1](#fmt-linuxarm64) / 3 |[<span style="color: orange">⛈️</span>](#fmt-wasip1wasm) &nbsp; [1](#fmt-wasip1wasm) / 3 |[<span style="color: orange">⛈️</span>](#fmt-wasip2wasm) &nbsp; [1](#fmt-wasip2wasm) / 3 |
go/ast |<span style="color: green">🟢</span> &nbsp; 8 |<span style="color: green">🟢</span> &nbsp; 8 |<span style="color: green">🟢</span> &nbsp; 8 |
go/build |[<span style="color: orange">⛈️</span>](#gobuild-linuxarm64) &nbsp; [16](#gobuild-linuxarm64) / 56 |[<span style="color: orange">⛈️</span>](#gobuild-wasip1wasm) &nbsp; [17](#gobuild-wasip1wasm) / 56 |[<span style="color: orange">⛈️</span>](#gobuild-wasip2wasm) &nbsp; [21](#gobuild-wasip2wasm) / 55 |
go/build/constraint |<span style="color: green">🟢</span> &nbsp; 81 |[<span style="color: orange">⛈️</span>](#gobuildconstraint-wasip1wasm) &nbsp; [7](#gobuildconstraint-wasip1wasm) / 13 |[<span style="color: orange">⛈️</span>](#gobuildconstraint-wasip2wasm) &nbsp; [7](#gobuildconstraint-wasip2wasm) / 13 |
go/constant |[<span style="color: orange">⛈️</span>](#goconstant-linuxarm64) &nbsp; [1](#goconstant-linuxarm64) / 2 |[<span style="color: orange">⛈️</span>](#goconstant-wasip1wasm) &nbsp; [1](#goconstant-wasip1wasm) / 2 |[<span style="color: orange">⛈️</span>](#goconstant-wasip2wasm) &nbsp; [1](#goconstant-wasip2wasm) / 2 |
go/doc |[<span style="color: red">❌</span>](#godoc-linuxarm64) &nbsp; [1](#godoc-linuxarm64) / 0 |[<span style="color: red">❌</span>](#godoc-wasip1wasm) &nbsp; [1](#godoc-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#godoc-wasip2wasm) &nbsp; [1](#godoc-wasip2wasm) / 0 |
go/doc/comment |[<span style="color: orange">⛈️</span>](#godoccomment-linuxarm64) &nbsp; [1](#godoccomment-linuxarm64) / 10059 |[<span style="color: orange">⛈️</span>](#godoccomment-wasip1wasm) &nbsp; [1](#godoccomment-wasip1wasm) / 10059 |[<span style="color: orange">⛈️</span>](#godoccomment-wasip2wasm) &nbsp; [2](#godoccomment-wasip2wasm) / 10006 |
go/format |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |[<span style="color: orange">⛈️</span>](#goformat-wasip2wasm) &nbsp; [2](#goformat-wasip2wasm) / 4 |
go/importer |[<span style="color: orange">⛈️</span>](#goimporter-linuxarm64) &nbsp; [2](#goimporter-linuxarm64) / 2 |[<span style="color: orange">⛈️</span>](#goimporter-wasip1wasm) &nbsp; [2](#goimporter-wasip1wasm) / 2 |[<span style="color: orange">⛈️</span>](#goimporter-wasip2wasm) &nbsp; [2](#goimporter-wasip2wasm) / 2 |
go/parser |[<span style="color: orange">⛈️</span>](#goparser-linuxarm64) &nbsp; [2](#goparser-linuxarm64) / 43 |[<span style="color: orange">⛈️</span>](#goparser-wasip1wasm) &nbsp; [1](#goparser-wasip1wasm) / 27 |[<span style="color: orange">⛈️</span>](#goparser-wasip2wasm) &nbsp; [2](#goparser-wasip2wasm) / 2 |
go/printer |[<span style="color: orange">⛈️</span>](#goprinter-linuxarm64) &nbsp; [12](#goprinter-linuxarm64) / 12 |[<span style="color: orange">⛈️</span>](#goprinter-wasip1wasm) &nbsp; [12](#goprinter-wasip1wasm) / 12 |[<span style="color: orange">⛈️</span>](#goprinter-wasip2wasm) &nbsp; [12](#goprinter-wasip2wasm) / 12 |
go/scanner |<span style="color: green">🟢</span> &nbsp; 11 |<span style="color: green">🟢</span> &nbsp; 11 |<span style="color: green">🟢</span> &nbsp; 11 |
go/token |[<span style="color: red">❌</span>](#gotoken-linuxarm64) &nbsp; [1](#gotoken-linuxarm64) / 0 |[<span style="color: red">❌</span>](#gotoken-wasip1wasm) &nbsp; [1](#gotoken-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#gotoken-wasip2wasm) &nbsp; [1](#gotoken-wasip2wasm) / 0 |
go/types |[<span style="color: red">❌</span>](#gotypes-linuxarm64) &nbsp; [1](#gotypes-linuxarm64) / 0 |[<span style="color: red">❌</span>](#gotypes-wasip1wasm) &nbsp; [1](#gotypes-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#gotypes-wasip2wasm) &nbsp; [1](#gotypes-wasip2wasm) / 0 |
go/version |<span style="color: green">🟢</span> &nbsp; 3 |<span style="color: green">🟢</span> &nbsp; 3 |<span style="color: green">🟢</span> &nbsp; 3 |
hash |<span style="color: green">🟢</span> &nbsp; 18 |<span style="color: green">🟢</span> &nbsp; 18 |<span style="color: green">🟢</span> &nbsp; 18 |
hash/adler32 |<span style="color: green">🟢</span> &nbsp; 2 |<span style="color: green">🟢</span> &nbsp; 2 |<span style="color: green">🟢</span> &nbsp; 2 |
hash/crc32 |[<span style="color: orange">⛈️</span>](#hashcrc32-linuxarm64) &nbsp; [1](#hashcrc32-linuxarm64) / 8 |[<span style="color: orange">⛈️</span>](#hashcrc32-wasip1wasm) &nbsp; [1](#hashcrc32-wasip1wasm) / 8 |[<span style="color: orange">⛈️</span>](#hashcrc32-wasip2wasm) &nbsp; [1](#hashcrc32-wasip2wasm) / 8 |
hash/crc64 |<span style="color: green">🟢</span> &nbsp; 5 |<span style="color: green">🟢</span> &nbsp; 5 |<span style="color: green">🟢</span> &nbsp; 5 |
hash/fnv |<span style="color: green">🟢</span> &nbsp; 19 |<span style="color: green">🟢</span> &nbsp; 19 |<span style="color: green">🟢</span> &nbsp; 19 |
hash/maphash |[<span style="color: orange">⛈️</span>](#hashmaphash-linuxarm64) &nbsp; [1](#hashmaphash-linuxarm64) / 15 |[<span style="color: orange">⛈️</span>](#hashmaphash-wasip1wasm) &nbsp; [1](#hashmaphash-wasip1wasm) / 13 |[<span style="color: orange">⛈️</span>](#hashmaphash-wasip2wasm) &nbsp; [1](#hashmaphash-wasip2wasm) / 13 |
html |<span style="color: green">🟢</span> &nbsp; 3 |<span style="color: green">🟢</span> &nbsp; 3 |<span style="color: green">🟢</span> &nbsp; 3 |
html/template |[<span style="color: orange">⛈️</span>](#htmltemplate-linuxarm64) &nbsp; [1](#htmltemplate-linuxarm64) / 1 |[<span style="color: orange">⛈️</span>](#htmltemplate-wasip1wasm) &nbsp; [1](#htmltemplate-wasip1wasm) / 1 |[<span style="color: orange">⛈️</span>](#htmltemplate-wasip2wasm) &nbsp; [1](#htmltemplate-wasip2wasm) / 1 |
image |<span style="color: green">🟢</span> &nbsp; 8 |[<span style="color: orange">⛈️</span>](#image-wasip1wasm) &nbsp; [1](#image-wasip1wasm) / 3 |[<span style="color: orange">⛈️</span>](#image-wasip2wasm) &nbsp; [1](#image-wasip2wasm) / 3 |
image/color |[<span style="color: orange">⛈️</span>](#imagecolor-linuxarm64) &nbsp; [1](#imagecolor-linuxarm64) / 1 |[<span style="color: orange">⛈️</span>](#imagecolor-wasip1wasm) &nbsp; [1](#imagecolor-wasip1wasm) / 1 |[<span style="color: orange">⛈️</span>](#imagecolor-wasip2wasm) &nbsp; [1](#imagecolor-wasip2wasm) / 1 |
image/color/palette |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
image/draw |[<span style="color: orange">⛈️</span>](#imagedraw-linuxarm64) &nbsp; [1](#imagedraw-linuxarm64) / 9 |[<span style="color: orange">⛈️</span>](#imagedraw-wasip1wasm) &nbsp; [1](#imagedraw-wasip1wasm) / 9 |[<span style="color: orange">⛈️</span>](#imagedraw-wasip2wasm) &nbsp; [2](#imagedraw-wasip2wasm) / 9 |
image/gif |[<span style="color: red">❌</span>](#imagegif-linuxarm64) &nbsp; [1](#imagegif-linuxarm64) / 0 |[<span style="color: red">❌</span>](#imagegif-wasip1wasm) &nbsp; [1](#imagegif-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#imagegif-wasip2wasm) &nbsp; [1](#imagegif-wasip2wasm) / 0 |
image/jpeg |[<span style="color: red">❌</span>](#imagejpeg-linuxarm64) &nbsp; [1](#imagejpeg-linuxarm64) / 0 |[<span style="color: red">❌</span>](#imagejpeg-wasip1wasm) &nbsp; [1](#imagejpeg-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#imagejpeg-wasip2wasm) &nbsp; [1](#imagejpeg-wasip2wasm) / 0 |
image/png |[<span style="color: orange">⛈️</span>](#imagepng-linuxarm64) &nbsp; [1](#imagepng-linuxarm64) / 13 |[<span style="color: orange">⛈️</span>](#imagepng-wasip1wasm) &nbsp; [1](#imagepng-wasip1wasm) / 13 |[<span style="color: orange">⛈️</span>](#imagepng-wasip2wasm) &nbsp; [6](#imagepng-wasip2wasm) / 13 |
index/suffixarray |<span style="color: green">🟢</span> &nbsp; 12 |[<span style="color: orange">⛈️</span>](#indexsuffixarray-wasip1wasm) &nbsp; [4](#indexsuffixarray-wasip1wasm) / 11 |[<span style="color: orange">⛈️</span>](#indexsuffixarray-wasip2wasm) &nbsp; [4](#indexsuffixarray-wasip2wasm) / 11 |
io |[<span style="color: orange">⛈️</span>](#io-linuxarm64) &nbsp; [4](#io-linuxarm64) / 60 |[<span style="color: orange">⛈️</span>](#io-wasip1wasm) &nbsp; [4](#io-wasip1wasm) / 60 |[<span style="color: orange">⛈️</span>](#io-wasip2wasm) &nbsp; [6](#io-wasip2wasm) / 58 |
io/fs |[<span style="color: orange">⛈️</span>](#iofs-linuxarm64) &nbsp; [1](#iofs-linuxarm64) / 6 |[<span style="color: orange">⛈️</span>](#iofs-wasip1wasm) &nbsp; [1](#iofs-wasip1wasm) / 6 |[<span style="color: orange">⛈️</span>](#iofs-wasip2wasm) &nbsp; [2](#iofs-wasip2wasm) / 6 |
io/ioutil |<span style="color: green">🟢</span> &nbsp; 28 |[<span style="color: orange">⛈️</span>](#ioioutil-wasip1wasm) &nbsp; [1](#ioioutil-wasip1wasm) / 28 |[<span style="color: orange">⛈️</span>](#ioioutil-wasip2wasm) &nbsp; [7](#ioioutil-wasip2wasm) / 25 |
log |[<span style="color: orange">⛈️</span>](#log-linuxarm64) &nbsp; [1](#log-linuxarm64) / 9 |[<span style="color: orange">⛈️</span>](#log-wasip1wasm) &nbsp; [1](#log-wasip1wasm) / 9 |[<span style="color: orange">⛈️</span>](#log-wasip2wasm) &nbsp; [1](#log-wasip2wasm) / 9 |
log/slog |[<span style="color: red">❌</span>](#logslog-linuxarm64) &nbsp; [1](#logslog-linuxarm64) / 0 |[<span style="color: red">❌</span>](#logslog-wasip1wasm) &nbsp; [1](#logslog-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#logslog-wasip2wasm) &nbsp; [1](#logslog-wasip2wasm) / 0 |
log/syslog |[<span style="color: red">❌</span>](#logsyslog-linuxarm64) &nbsp; [1](#logsyslog-linuxarm64) / 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |[<span style="color: red">❌</span>](#logsyslog-wasip2wasm) &nbsp; [1](#logsyslog-wasip2wasm) / 0 |
maps |[<span style="color: red">❌</span>](#maps-linuxarm64) &nbsp; [1](#maps-linuxarm64) / 0 |[<span style="color: red">❌</span>](#maps-wasip1wasm) &nbsp; [1](#maps-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#maps-wasip2wasm) &nbsp; [1](#maps-wasip2wasm) / 0 |
math |<span style="color: green">🟢</span> &nbsp; 76 |<span style="color: green">🟢</span> &nbsp; 76 |<span style="color: green">🟢</span> &nbsp; 76 |
math/big |[<span style="color: red">❌</span>](#mathbig-linuxarm64) &nbsp; [1](#mathbig-linuxarm64) / 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
math/bits |<span style="color: yellow">🫥</span> &nbsp; 0 |[<span style="color: orange">⛈️</span>](#mathbits-wasip1wasm) &nbsp; [1](#mathbits-wasip1wasm) / 12 |[<span style="color: orange">⛈️</span>](#mathbits-wasip2wasm) &nbsp; [1](#mathbits-wasip2wasm) / 12 |
math/cmplx |<span style="color: green">🟢</span> &nbsp; 24 |<span style="color: green">🟢</span> &nbsp; 24 |<span style="color: green">🟢</span> &nbsp; 24 |
math/rand |[<span style="color: orange">⛈️</span>](#mathrand-linuxarm64) &nbsp; [8](#mathrand-linuxarm64) / 43 |[<span style="color: orange">⛈️</span>](#mathrand-wasip1wasm) &nbsp; [8](#mathrand-wasip1wasm) / 43 |[<span style="color: orange">⛈️</span>](#mathrand-wasip2wasm) &nbsp; [8](#mathrand-wasip2wasm) / 43 |
math/rand/v2 |[<span style="color: red">❌</span>](#mathrandv2-linuxarm64) &nbsp; [1](#mathrandv2-linuxarm64) / 0 |[<span style="color: red">❌</span>](#mathrandv2-wasip1wasm) &nbsp; [1](#mathrandv2-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#mathrandv2-wasip2wasm) &nbsp; [1](#mathrandv2-wasip2wasm) / 0 |
mime |[<span style="color: orange">⛈️</span>](#mime-linuxarm64) &nbsp; [1](#mime-linuxarm64) / 14 |[<span style="color: orange">⛈️</span>](#mime-wasip1wasm) &nbsp; [1](#mime-wasip1wasm) / 13 |[<span style="color: orange">⛈️</span>](#mime-wasip2wasm) &nbsp; [2](#mime-wasip2wasm) / 14 |
mime/multipart |<span style="color: green">🟢</span> &nbsp; 52 |[<span style="color: orange">⛈️</span>](#mimemultipart-wasip1wasm) &nbsp; [4](#mimemultipart-wasip1wasm) / 11 |[<span style="color: orange">⛈️</span>](#mimemultipart-wasip2wasm) &nbsp; [5](#mimemultipart-wasip2wasm) / 11 |
mime/quotedprintable |<span style="color: green">🟢</span> &nbsp; 5 |<span style="color: green">🟢</span> &nbsp; 5 |<span style="color: green">🟢</span> &nbsp; 5 |
net |<span style="color: green">🟢</span> &nbsp; 1 |<span style="color: green">🟢</span> &nbsp; 1 |<span style="color: green">🟢</span> &nbsp; 1 |
net/http |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
net/http/cgi |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
net/http/cookiejar |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
net/http/fcgi |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
net/http/httptest |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
net/http/httptrace |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
net/http/httputil |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
net/http/pprof |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
net/mail |<span style="color: green">🟢</span> &nbsp; 11 |<span style="color: green">🟢</span> &nbsp; 11 |[<span style="color: orange">⛈️</span>](#netmail-wasip2wasm) &nbsp; [1](#netmail-wasip2wasm) / 11 |
net/netip |[<span style="color: orange">⛈️</span>](#netnetip-linuxarm64) &nbsp; [8](#netnetip-linuxarm64) / 256 |[<span style="color: orange">⛈️</span>](#netnetip-wasip1wasm) &nbsp; [2](#netnetip-wasip1wasm) / 196 |[<span style="color: orange">⛈️</span>](#netnetip-wasip2wasm) &nbsp; [2](#netnetip-wasip2wasm) / 196 |
net/rpc |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
net/rpc/jsonrpc |[<span style="color: red">❌</span>](#netrpcjsonrpc-linuxarm64) &nbsp; [1](#netrpcjsonrpc-linuxarm64) / 0 |[<span style="color: red">❌</span>](#netrpcjsonrpc-wasip1wasm) &nbsp; [1](#netrpcjsonrpc-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#netrpcjsonrpc-wasip2wasm) &nbsp; [1](#netrpcjsonrpc-wasip2wasm) / 0 |
net/smtp |[<span style="color: red">❌</span>](#netsmtp-linuxarm64) &nbsp; [1](#netsmtp-linuxarm64) / 0 |[<span style="color: red">❌</span>](#netsmtp-wasip1wasm) &nbsp; [1](#netsmtp-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#netsmtp-wasip2wasm) &nbsp; [1](#netsmtp-wasip2wasm) / 0 |
net/textproto |<span style="color: green">🟢</span> &nbsp; 26 |<span style="color: green">🟢</span> &nbsp; 26 |<span style="color: green">🟢</span> &nbsp; 26 |
net/url |[<span style="color: red">❌</span>](#neturl-linuxarm64) &nbsp; [1](#neturl-linuxarm64) / 0 |[<span style="color: red">❌</span>](#neturl-wasip1wasm) &nbsp; [1](#neturl-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#neturl-wasip2wasm) &nbsp; [1](#neturl-wasip2wasm) / 0 |
os |<span style="color: green">🟢</span> &nbsp; 81 |<span style="color: green">🟢</span> &nbsp; 37 |[<span style="color: red">❌</span>](#os-wasip2wasm) &nbsp; [1](#os-wasip2wasm) / 0 |
os/exec |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
os/signal |[<span style="color: red">❌</span>](#ossignal-linuxarm64) &nbsp; [1](#ossignal-linuxarm64) / 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |[<span style="color: red">❌</span>](#ossignal-wasip2wasm) &nbsp; [1](#ossignal-wasip2wasm) / 0 |
os/user |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
path |<span style="color: green">🟢</span> &nbsp; 9 |<span style="color: green">🟢</span> &nbsp; 9 |<span style="color: green">🟢</span> &nbsp; 9 |
path/filepath |[<span style="color: orange">⛈️</span>](#pathfilepath-linuxarm64) &nbsp; [1](#pathfilepath-linuxarm64) / 3 |[<span style="color: orange">⛈️</span>](#pathfilepath-wasip1wasm) &nbsp; [1](#pathfilepath-wasip1wasm) / 3 |[<span style="color: orange">⛈️</span>](#pathfilepath-wasip2wasm) &nbsp; [2](#pathfilepath-wasip2wasm) / 3 |
plugin |[<span style="color: red">❌</span>](#plugin-linuxarm64) &nbsp; [1](#plugin-linuxarm64) / 0 |<span style="color: green">🟢</span> &nbsp; 1 |[<span style="color: red">❌</span>](#plugin-wasip2wasm) &nbsp; [1](#plugin-wasip2wasm) / 0 |
reflect |<span style="color: green">🟢</span> &nbsp; 96 |<span style="color: green">🟢</span> &nbsp; 96 |<span style="color: green">🟢</span> &nbsp; 96 |
regexp |[<span style="color: orange">⛈️</span>](#regexp-linuxarm64) &nbsp; [1](#regexp-linuxarm64) / 14 |[<span style="color: orange">⛈️</span>](#regexp-wasip1wasm) &nbsp; [1](#regexp-wasip1wasm) / 2 |[<span style="color: orange">⛈️</span>](#regexp-wasip2wasm) &nbsp; [1](#regexp-wasip2wasm) / 2 |
regexp/syntax |<span style="color: green">🟢</span> &nbsp; 12 |[<span style="color: orange">⛈️</span>](#regexpsyntax-wasip1wasm) &nbsp; [1](#regexpsyntax-wasip1wasm) / 8 |[<span style="color: orange">⛈️</span>](#regexpsyntax-wasip2wasm) &nbsp; [1](#regexpsyntax-wasip2wasm) / 8 |
runtime |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
runtime/cgo |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
runtime/coverage |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
runtime/debug |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
runtime/metrics |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
runtime/pprof |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
runtime/race |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
runtime/trace |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
slices |[<span style="color: orange">⛈️</span>](#slices-linuxarm64) &nbsp; [1](#slices-linuxarm64) / 11 |[<span style="color: red">❌</span>](#slices-wasip1wasm) &nbsp; [1](#slices-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#slices-wasip2wasm) &nbsp; [1](#slices-wasip2wasm) / 0 |
sort |<span style="color: green">🟢</span> &nbsp; 63 |<span style="color: green">🟢</span> &nbsp; 63 |<span style="color: green">🟢</span> &nbsp; 63 |
strconv |<span style="color: green">🟢</span> &nbsp; 66 |[<span style="color: orange">⛈️</span>](#strconv-wasip1wasm) &nbsp; [1](#strconv-wasip1wasm) / 29 |[<span style="color: orange">⛈️</span>](#strconv-wasip2wasm) &nbsp; [1](#strconv-wasip2wasm) / 29 |
strings |[<span style="color: orange">⛈️</span>](#strings-linuxarm64) &nbsp; [2](#strings-linuxarm64) / 71 |[<span style="color: orange">⛈️</span>](#strings-wasip1wasm) &nbsp; [1](#strings-wasip1wasm) / 4 |[<span style="color: orange">⛈️</span>](#strings-wasip2wasm) &nbsp; [1](#strings-wasip2wasm) / 4 |
sync |<span style="color: green">🟢</span> &nbsp; 19 |<span style="color: green">🟢</span> &nbsp; 19 |<span style="color: green">🟢</span> &nbsp; 19 |
sync/atomic |[<span style="color: orange">⛈️</span>](#syncatomic-linuxarm64) &nbsp; [6](#syncatomic-linuxarm64) / 68 |[<span style="color: orange">⛈️</span>](#syncatomic-wasip1wasm) &nbsp; [6](#syncatomic-wasip1wasm) / 68 |[<span style="color: orange">⛈️</span>](#syncatomic-wasip2wasm) &nbsp; [6](#syncatomic-wasip2wasm) / 68 |
syscall |[<span style="color: red">❌</span>](#syscall-linuxarm64) &nbsp; [1](#syscall-linuxarm64) / 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |[<span style="color: orange">⛈️</span>](#syscall-wasip2wasm) &nbsp; [1](#syscall-wasip2wasm) / 1 |
testing |<span style="color: green">🟢</span> &nbsp; 33 |<span style="color: green">🟢</span> &nbsp; 23 |[<span style="color: orange">⛈️</span>](#testing-wasip2wasm) &nbsp; [1](#testing-wasip2wasm) / 23 |
testing/fstest |<span style="color: green">🟢</span> &nbsp; 5 |[<span style="color: orange">⛈️</span>](#testingfstest-wasip1wasm) &nbsp; [1](#testingfstest-wasip1wasm) / 5 |[<span style="color: orange">⛈️</span>](#testingfstest-wasip2wasm) &nbsp; [1](#testingfstest-wasip2wasm) / 5 |
testing/iotest |<span style="color: green">🟢</span> &nbsp; 18 |<span style="color: green">🟢</span> &nbsp; 18 |<span style="color: green">🟢</span> &nbsp; 18 |
testing/quick |[<span style="color: orange">⛈️</span>](#testingquick-linuxarm64) &nbsp; [1](#testingquick-linuxarm64) / 1 |[<span style="color: orange">⛈️</span>](#testingquick-wasip1wasm) &nbsp; [1](#testingquick-wasip1wasm) / 1 |[<span style="color: orange">⛈️</span>](#testingquick-wasip2wasm) &nbsp; [1](#testingquick-wasip2wasm) / 1 |
testing/slogtest |[<span style="color: red">❌</span>](#testingslogtest-linuxarm64) &nbsp; [1](#testingslogtest-linuxarm64) / 0 |[<span style="color: red">❌</span>](#testingslogtest-wasip1wasm) &nbsp; [1](#testingslogtest-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#testingslogtest-wasip2wasm) &nbsp; [1](#testingslogtest-wasip2wasm) / 0 |
text/scanner |<span style="color: green">🟢</span> &nbsp; 18 |<span style="color: green">🟢</span> &nbsp; 18 |<span style="color: green">🟢</span> &nbsp; 18 |
text/tabwriter |<span style="color: green">🟢</span> &nbsp; 3 |[<span style="color: orange">⛈️</span>](#texttabwriter-wasip1wasm) &nbsp; [1](#texttabwriter-wasip1wasm) / 2 |[<span style="color: orange">⛈️</span>](#texttabwriter-wasip2wasm) &nbsp; [1](#texttabwriter-wasip2wasm) / 2 |
text/template |[<span style="color: orange">⛈️</span>](#texttemplate-linuxarm64) &nbsp; [1](#texttemplate-linuxarm64) / 1 |[<span style="color: orange">⛈️</span>](#texttemplate-wasip1wasm) &nbsp; [1](#texttemplate-wasip1wasm) / 1 |[<span style="color: orange">⛈️</span>](#texttemplate-wasip2wasm) &nbsp; [1](#texttemplate-wasip2wasm) / 1 |
text/template/parse |<span style="color: green">🟢</span> &nbsp; 52 |[<span style="color: orange">⛈️</span>](#texttemplateparse-wasip1wasm) &nbsp; [1](#texttemplateparse-wasip1wasm) / 6 |[<span style="color: orange">⛈️</span>](#texttemplateparse-wasip2wasm) &nbsp; [1](#texttemplateparse-wasip2wasm) / 6 |
time |[<span style="color: red">❌</span>](#time-linuxarm64) &nbsp; [1](#time-linuxarm64) / 0 |[<span style="color: red">❌</span>](#time-wasip1wasm) &nbsp; [1](#time-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#time-wasip2wasm) &nbsp; [1](#time-wasip2wasm) / 0 |
time/tzdata |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
unicode |<span style="color: green">🟢</span> &nbsp; 28 |<span style="color: green">🟢</span> &nbsp; 28 |<span style="color: green">🟢</span> &nbsp; 28 |
unicode/utf16 |<span style="color: green">🟢</span> &nbsp; 8 |<span style="color: green">🟢</span> &nbsp; 8 |<span style="color: green">🟢</span> &nbsp; 8 |
unicode/utf8 |<span style="color: green">🟢</span> &nbsp; 14 |<span style="color: green">🟢</span> &nbsp; 14 |<span style="color: green">🟢</span> &nbsp; 14 |
unsafe |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |

## linux/arm64



### archive/tar linux/arm64

[🔝](#summary) build error

```text
FAIL	archive/tar	0.000s
# archive/tar
/usr/local/go/src/archive/tar/stat_unix.go:39:27: undefined: user.LookupId
/usr/local/go/src/archive/tar/stat_unix.go:45:27: undefined: user.LookupGroupId
```


### bufio linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/81
=== RUN   TestReadStringAllocs
    Unexpected number of allocations, got 0.000000, want 1
--- FAIL: TestReadStringAllocs (0.00s)

```


### context linux/arm64

[🔝](#summary) build error

```text
FAIL	context	0.000s
# context_test
/usr/local/go/src/context/x_test.go:21:27: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestParentFinishesChild: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:24:26: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestChildFinishesFirst: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:27:21: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestCancelRemoves: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:30:31: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestCustomContextGoroutines: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:50:20: t.Deadline undefined (type *testing.T has no field or method Deadline)
```


### crypto linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3576799793/main /tmp/tinygo3576799793/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-DF7B1E694F38017C37BF13447BDBB61BE010030F:((*crypto/aes.aesCipherAsm).Encrypt)
failed to run tool: ld.lld
FAIL	crypto	0.000s
error: failed to link /tmp/tinygo3576799793/main: exit status 1
```


### crypto/aes linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3110869284/main /tmp/tinygo3110869284/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.decryptBlockAsm
>>> referenced by cipher_asm.go:95 (/usr/local/go/src/crypto/aes/cipher_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8D35EAAFAECF0CB6D4C9C8D0DE17A7DA33F48ADB:((*crypto/aes.aesCipherAsm).Decrypt)

ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8D35EAAFAECF0CB6D4C9C8D0DE17A7DA33F48ADB:((*crypto/aes.aesCipherAsm).Encrypt)
failed to run tool: ld.lld
FAIL	crypto/aes	0.000s
error: failed to link /tmp/tinygo3110869284/main: exit status 1
```


### crypto/cipher linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo705651435/main /tmp/tinygo705651435/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.gcmAesInit
>>> referenced by aes_gcm.go:49 (/usr/local/go/src/crypto/aes/aes_gcm.go:49)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-B2C24388ED20E82D4A1FDF2B51982A53F2729CC5:(crypto/cipher.newGCMWithNonceAndTagSize)

ld.lld: error: undefined symbol: crypto/aes.decryptBlockAsm
>>> referenced by cipher_asm.go:95 (/usr/local/go/src/crypto/aes/cipher_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-B2C24388ED20E82D4A1FDF2B51982A53F2729CC5:((*crypto/aes.aesCipherAsm).Decrypt)

ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-B2C24388ED20E82D4A1FDF2B51982A53F2729CC5:((*crypto/aes.aesCipherAsm).Encrypt)
>>> referenced by aes_gcm.go:111 (/usr/local/go/src/crypto/aes/aes_gcm.go:111)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-B2C24388ED20E82D4A1FDF2B51982A53F2729CC5:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:164 (/usr/local/go/src/crypto/aes/aes_gcm.go:164)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-B2C24388ED20E82D4A1FDF2B51982A53F2729CC5:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Open$invoke)

ld.lld: error: undefined symbol: crypto/aes.gcmAesData
>>> referenced by aes_gcm.go:107 (/usr/local/go/src/crypto/aes/aes_gcm.go:107)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-B2C24388ED20E82D4A1FDF2B51982A53F2729CC5:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:114 (/usr/local/go/src/crypto/aes/aes_gcm.go:114)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-B2C24388ED20E82D4A1FDF2B51982A53F2729CC5:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:160 (/usr/local/go/src/crypto/aes/aes_gcm.go:160)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-B2C24388ED20E82D4A1FDF2B51982A53F2729CC5:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Open$invoke)
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/aes.gcmAesFinish
>>> referenced by aes_gcm.go:108 (/usr/local/go/src/crypto/aes/aes_gcm.go:108)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-B2C24388ED20E82D4A1FDF2B51982A53F2729CC5:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:123 (/usr/local/go/src/crypto/aes/aes_gcm.go:123)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-B2C24388ED20E82D4A1FDF2B51982A53F2729CC5:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:161 (/usr/local/go/src/crypto/aes/aes_gcm.go:161)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-B2C24388ED20E82D4A1FDF2B51982A53F2729CC5:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Open$invoke)
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/aes.gcmAesEnc
>>> referenced by aes_gcm.go:121 (/usr/local/go/src/crypto/aes/aes_gcm.go:121)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-B2C24388ED20E82D4A1FDF2B51982A53F2729CC5:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)

ld.lld: error: undefined symbol: crypto/aes.gcmAesDec
>>> referenced by aes_gcm.go:174 (/usr/local/go/src/crypto/aes/aes_gcm.go:174)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-B2C24388ED20E82D4A1FDF2B51982A53F2729CC5:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Open$invoke)
failed to run tool: ld.lld
FAIL	crypto/cipher	0.000s
error: failed to link /tmp/tinygo705651435/main: exit status 1
```


### crypto/ecdh linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1481571722/main /tmp/tinygo1481571722/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo1481571722/embed-a3a5d08c40939adb7c0e9e4f5b689721-2985690401.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/internal/nistec.p256Sqr
>>> referenced by p256_asm.go:584 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:584)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:586 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:586)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:588 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:588)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:(crypto/internal/nistec.p256Inverse)
>>> referenced 16 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Mul
>>> referenced by p256_asm.go:603 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:603)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:141 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:141)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:489 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:489)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced 8 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256BigToLittle
>>> referenced by p256_asm.go:95 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:(OUTLINED_FUNCTION_764)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256FromMont
>>> referenced by p256_asm.go:125 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:125)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:516 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:516)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:494 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:494)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256NegCond
>>> referenced by p256_asm.go:127 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:127)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:146 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:146)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:723 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:723)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointDoubleAsm
>>> referenced by p256_asm.go:660 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:660)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:661 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:661)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:662 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:662)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced 7 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAsm
>>> referenced by p256_asm.go:669 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:669)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:681 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:681)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:691 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:691)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Select
>>> referenced by p256_asm.go:703 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:703)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:722 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:722)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:739 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:739)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256MovCond
>>> referenced by p256_asm.go:725 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:725)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:742 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:742)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:648 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:648)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256LittleToBig
>>> referenced by p256_asm.go:517 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:517)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:478 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:478)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced by p256_asm.go:479 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:479)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).PublicKey$1)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256SelectAffine
>>> referenced by p256_asm.go:627 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:627)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced by p256_asm.go:642 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:642)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).PublicKey$1)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAffineAsm
>>> referenced by p256_asm.go:643 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:643)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:((*crypto/ecdh.PrivateKey).PublicKey$1)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdBigToLittle
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-5A74BC6C5DE36B0781C2ADFD7B7047B1357A9BAB:(OUTLINED_FUNCTION_784)
failed to run tool: ld.lld
FAIL	crypto/ecdh	0.000s
error: failed to link /tmp/tinygo1481571722/main: exit status 1
```


### crypto/ecdsa linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2437460144/main /tmp/tinygo2437460144/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo2437460144/embed-a3a5d08c40939adb7c0e9e4f5b689721-517235.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/aes.aesCipherAsm).Encrypt)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAsm
>>> referenced by p256_asm.go:387 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:387)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:669 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:669)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:681 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:681)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 3 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointDoubleAsm
>>> referenced by p256_asm.go:388 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:388)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:660 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:660)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:661 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:661)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 8 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256MovCond
>>> referenced by p256_asm.go:389 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:389)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:390 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:390)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:391 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:391)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).Add)
>>> referenced 4 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Mul
>>> referenced by p256_asm.go:489 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:489)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).Bytes)
>>> referenced by p256_asm.go:603 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:603)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(crypto/internal/nistec.p256Inverse)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(OUTLINED_FUNCTION_189)
>>> referenced 5 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256FromMont
>>> referenced by p256_asm.go:495 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:495)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).Bytes)
>>> referenced by p256_asm.go:125 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:125)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(OUTLINED_FUNCTION_1215)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256LittleToBig
>>> referenced by p256_asm.go:478 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:478)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).Bytes)
>>> referenced by p256_asm.go:479 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:479)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).Bytes)
>>> referenced by p256_asm.go:517 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:517)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).BytesX)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Sqr
>>> referenced by p256_asm.go:584 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:584)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:586 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:586)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:588 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:588)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(crypto/internal/nistec.p256Inverse)
>>> referenced 16 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdBigToLittle
>>> referenced by p256_asm.go:410 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:410)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:425 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:425)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_ordinv.go:27 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:27)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(crypto/internal/nistec.P256OrdInverse)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256SelectAffine
>>> referenced by p256_asm.go:627 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:627)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:642 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:642)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarBaseMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256NegCond
>>> referenced by p256_asm.go:629 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:629)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:723 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:723)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:740 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:740)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAffineAsm
>>> referenced by p256_asm.go:643 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:643)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarBaseMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Select
>>> referenced by p256_asm.go:703 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:703)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:722 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:722)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:739 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:739)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).ScalarMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256BigToLittle
>>> referenced by p256_asm.go:95 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(OUTLINED_FUNCTION_1291)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdMul
>>> referenced by p256_ordinv.go:51 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:51)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(crypto/internal/nistec.P256OrdInverse)
>>> referenced by p256_ordinv.go:53 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:53)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(crypto/internal/nistec.P256OrdInverse)
>>> referenced by p256_ordinv.go:54 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:54)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(crypto/internal/nistec.P256OrdInverse)
>>> referenced 7 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdSqr
>>> referenced by p256_ordinv.go:64 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:64)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(crypto/internal/nistec.P256OrdInverse)
>>> referenced by p256_ordinv.go:66 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:66)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(crypto/internal/nistec.P256OrdInverse)
>>> referenced by p256_ordinv.go:68 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:68)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(crypto/internal/nistec.P256OrdInverse)
>>> referenced 4 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdLittleToBig
>>> referenced by p256_ordinv.go:100 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:100)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C89B393798C9A5509BF6492389FB2156FA046854:(crypto/internal/nistec.P256OrdInverse)
failed to run tool: ld.lld
FAIL	crypto/ecdsa	0.000s
error: failed to link /tmp/tinygo2437460144/main: exit status 1
```


### crypto/ed25519 linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/9
=== RUN   TestEd25519Vectors
    skipping test: 'go build' unavailable: /usr/local/go/bin/go tool -n compile: fork/exec /usr/local/go/bin/go: operation not implemented
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    failed to run `go mod download -json filippo.io/mostly-harmless/ed25519vectors@v0.0.0-20210322192420-30a2d7243a94`, output: 
    FailNow is incomplete, requires runtime.Goexit()
    unexpected end of JSON input
    FailNow is incomplete, requires runtime.Goexit()
    failed to read ed25519vectors.json: open ed25519vectors.json: file does not exist
    FailNow is incomplete, requires runtime.Goexit()
    unexpected end of JSON input
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestEd25519Vectors (0.00s)

```


### crypto/elliptic linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1663278659/main /tmp/tinygo1663278659/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo1663278659/embed-a3a5d08c40939adb7c0e9e4f5b689721-583511610.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAsm
>>> referenced by p256_asm.go:387 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:387)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:669 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:669)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:681 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:681)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 3 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointDoubleAsm
>>> referenced by p256_asm.go:388 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:388)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:660 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:660)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:661 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:661)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 9 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256MovCond
>>> referenced by p256_asm.go:389 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:389)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:390 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:390)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:391 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:391)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).Add)
>>> referenced 4 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdBigToLittle
>>> referenced by p256_asm.go:410 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:410)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:425 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:425)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256SelectAffine
>>> referenced by p256_asm.go:627 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:627)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:642 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:642)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarBaseMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256NegCond
>>> referenced by p256_asm.go:629 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:629)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:723 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:723)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:740 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:740)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAffineAsm
>>> referenced by p256_asm.go:643 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:643)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarBaseMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Select
>>> referenced by p256_asm.go:703 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:703)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:722 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:722)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:739 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:739)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).ScalarMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256BigToLittle
>>> referenced by p256_asm.go:95 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:(OUTLINED_FUNCTION_830)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Sqr
>>> referenced by p256_asm.go:162 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:162)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:230 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:230)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:232 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:232)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced 16 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256FromMont
>>> referenced by p256_asm.go:125 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:125)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:494 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:494)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:495 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:495)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Mul
>>> referenced by p256_asm.go:141 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:141)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:603 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:603)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:492 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:492)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced 7 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256LittleToBig
>>> referenced by p256_asm.go:478 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:478)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:479 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:479)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8FA5BE76747A57968C9E4E31DF22FA93459ACB02:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
failed to run tool: ld.lld
FAIL	crypto/elliptic	0.000s
error: failed to link /tmp/tinygo1663278659/main: exit status 1
```


### crypto/rsa linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo41569430/main /tmp/tinygo41569430/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo41569430/embed-a3a5d08c40939adb7c0e9e4f5b689721-2166781742.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/aes.aesCipherAsm).Encrypt)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Sqr
>>> referenced by p256_asm.go:140 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:140)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:162 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:162)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointFromAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:230 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:230)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointFromAffine[*crypto/internal/nistec.P256Point])
>>> referenced 16 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Mul
>>> referenced by p256_asm.go:141 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:141)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:492 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:492)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:(OUTLINED_FUNCTION_272)
>>> referenced 6 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256NegCond
>>> referenced by p256_asm.go:146 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:146)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:629 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:629)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:723 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:723)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdBigToLittle
>>> referenced by p256_asm.go:410 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:410)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:425 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:425)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256SelectAffine
>>> referenced by p256_asm.go:627 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:627)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:642 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:642)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAffineAsm
>>> referenced by p256_asm.go:643 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:643)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256MovCond
>>> referenced by p256_asm.go:648 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:648)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:725 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:725)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:742 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:742)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointDoubleAsm
>>> referenced by p256_asm.go:660 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:660)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:661 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:661)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:662 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:662)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced 7 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAsm
>>> referenced by p256_asm.go:669 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:669)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:681 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:681)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:691 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:691)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Select
>>> referenced by p256_asm.go:703 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:703)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:722 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:722)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:739 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:739)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256BigToLittle
>>> referenced by p256_asm.go:95 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointFromAffine[*crypto/internal/nistec.P256Point])
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:(OUTLINED_FUNCTION_1226)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256FromMont
>>> referenced by p256_asm.go:125 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:125)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointFromAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:494 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:494)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:495 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:495)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256LittleToBig
>>> referenced by p256_asm.go:478 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:478)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:479 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:479)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3CAACE6A17DC4091A96BFDC99FCCCEC348AFF369:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
failed to run tool: ld.lld
FAIL	crypto/rsa	0.000s
error: failed to link /tmp/tinygo41569430/main: exit status 1
```


### crypto/subtle linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestConstantTimeByteEq
panic: unimplemented: (reflect.Type).NumIn()

```


### crypto/x509 linux/arm64

[🔝](#summary) build error

```text
FAIL	crypto/x509	0.000s
# crypto/x509_test
/usr/local/go/src/crypto/x509/hybrid_pool_test.go:63:17: c.ConnectionState undefined (type *net.TLSConn has no field or method ConnectionState)
```


### database/sql linux/arm64

[🔝](#summary) build error

```text
FAIL	database/sql	0.000s
# database/sql
/usr/local/go/src/database/sql/sql_test.go:4722:4: b.SetParallelism undefined (type *testing.B has no field or method SetParallelism)
```


### debug/buildinfo linux/arm64

[🔝](#summary) build error

```text
FAIL	debug/buildinfo	0.000s
# debug/buildinfo
/usr/local/go/src/debug/buildinfo/buildinfo.go:80:19: undefined: debug.ParseBuildInfo
```


### debug/elf linux/arm64

[🔝](#summary) build error

```text
FAIL	debug/elf	0.000s
# debug/elf
/usr/local/go/src/debug/elf/file_test.go:1159:10: undefined: net.ResolveIPAddr
```


### debug/gosym linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestLineFromAline
    no .gosymtab section
    SkipNow is incomplete, requires runtime.Goexit()
panic: runtime error at 0x000000000025e144: nil pointer dereference

```


### debug/pe linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestDefaultLinkerDWARF
    skipping windows only test
    SkipNow is incomplete, requires runtime.Goexit()
    skipping test: 'go run' not available on linux/arm64
    SkipNow is incomplete, requires runtime.Goexit()
    skipping test: 'go build' unavailable: /usr/local/go/bin/go tool -n compile: fork/exec /usr/local/go/bin/go: operation not implemented
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    building test executable for linktype 1 failed: exec: no command 
    FailNow is incomplete, requires runtime.Goexit()
    running test executable failed: fork/exec /tmp/TestDefaultLinkerDWARF75078143/000/a.exe: operation not implemented 
    FailNow is incomplete, requires runtime.Goexit()
    Testprog output:
    unexpected program output: 
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error at 0x00000000002740a4: index out of range

```


### encoding/binary linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/20
=== RUN   TestEarlyBoundsChecks
panic: runtime error at 0x000000000024e558: index out of range

```


### encoding/gob linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2386290610/main /tmp/tinygo2386290610/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo2386290610/main /tmp/tinygo2386290610/main -test.v
/tmp/tinygo2386290610/main /tmp/tinygo2386290610/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
FAIL	encoding/gob	0.013s
```


### encoding/pem linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/7
=== RUN   TestFuzz
panic: unimplemented: (reflect.Type).NumOut()

```


### encoding/xml linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/336
=== RUN   TestCVE202228131

```


### errors linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 19/60
=== RUN   TestAs
--- FAIL: TestAs (0.00s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0xffff57a91930)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0xffff57a91930) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff57a91930)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff57a91930) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0xffff57a91930)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0xffff57a91930) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0xffff57a91930)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0xffff57a91930) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0xffff57a91970)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0xffff57a91970) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0xffff57a91950)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0xffff57a91950) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff57a91950)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff57a91950) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0xffff57a91950)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff57a919b0)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0xffff57a91950) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0xffff57a91950)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff57a919b0)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0xffff57a91950) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0xffff57a91950)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0xffff57a91950) (0.00s)
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff57a91930)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff57a91930) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0xffff57a91930)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0xffff57a91930) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0xffff57a91970)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0xffff57a91970) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff57a91950)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff57a91950) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0xffff57a91950)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff57a919b0)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0xffff57a91950) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0xffff57a91950)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff57a919b0)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0xffff57a91950) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0xffff57a91930)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0xffff57a91930) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0xffff57a91930)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0xffff57a91930) (0.00s)

```


### flag linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 2/24
=== RUN   TestExitCode
    unexpected exit code for test case {flag:-h flagHandle: expectExit:0} 
        : got -1, expect 0
    unexpected exit code for test case {flag:-help flagHandle: expectExit:0} 
        : got -1, expect 0
    unexpected exit code for test case {flag:-undefined flagHandle: expectExit:2} 
        : got -1, expect 2
    unexpected exit code for test case {flag:-h flagHandle:h expectExit:123} 
        : got -1, expect 123
    unexpected exit code for test case {flag:-help flagHandle:help expectExit:123} 
        : got -1, expect 123
--- FAIL: TestExitCode (0.00s)
=== RUN   TestDefineAfterSet
    DefineAfterSet
        : expected panic("flag myFlag set at .*/flag_test.go:.* before being defined"), but got panic("flag myFlag set at ?:0 before being defined")
--- FAIL: TestDefineAfterSet (0.00s)

```


### fmt linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestSprintf
    Sprintf("%#v", 0x267654) = "(func)(0x267654)" want "(func(*testing.T))(0xPTR)"
panic: runtime error at 0x0000000000231cd0: nil pointer dereference

```


### go/build linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 16/56
=== RUN   TestDotSlashImport
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
    import "./file": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestDotSlashImport (0.00s)
=== RUN   TestLocalDirectory
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestLocalDirectory (0.00s)
=== RUN   TestImportCmd
    import "cmd/internal/objfile": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportCmd (0.01s)
=== RUN   TestImportDirNotExist
    skipping test: 'go build' unavailable: /usr/local/go/bin/go tool -n compile: fork/exec /usr/local/go/bin/go: operation not implemented
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportDirNotExist (0.00s)
=== RUN   TestImportDirNotExist/GO111MODULE=off
    --- PASS: TestImportDirNotExist/GO111MODULE=off (0.00s)
=== RUN   TestImportDirNotExist/GO111MODULE=on
        Import(full, 0) got error: "go/build: go list go/build/doesnotexist: fork/exec /usr/local/go/bin/go: operation not implemented\n\n", want "cannot find package" or "is not in std" error
        Import(full, FindOnly) got error: "go/build: go list go/build/doesnotexist: fork/exec /usr/local/go/bin/go: operation not implemented\n\n", want "cannot find package" or "is not in std" error
    --- FAIL: TestImportDirNotExist/GO111MODULE=on (0.00s)
=== RUN   TestImportVendor
    skipping test: 'go build' unavailable: /usr/local/go/bin/go tool -n compile: fork/exec /usr/local/go/bin/go: operation not implemented
    SkipNow is incomplete, requires runtime.Goexit()
    cannot find vendored c/d from testdata src/a/b directory: import "c/d": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportVendor (0.00s)
=== RUN   TestImportVendorFailure
    skipping test: 'go build' unavailable: /usr/local/go/bin/go tool -n compile: fork/exec /usr/local/go/bin/go: operation not implemented
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportVendorFailure (0.00s)
=== RUN   TestImportVendorParentFailure
    skipping test: 'go build' unavailable: /usr/local/go/bin/go tool -n compile: fork/exec /usr/local/go/bin/go: operation not implemented
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportVendorParentFailure (0.00s)
=== RUN   TestImportPackageOutsideModule
    skipping test: 'go build' unavailable: /usr/local/go/bin/go tool -n compile: fork/exec /usr/local/go/bin/go: operation not implemented
    SkipNow is incomplete, requires runtime.Goexit()
    error when importing package when no go.mod is present: got "go/build: go list example.com/p: fork/exec /usr/local/go/bin/go: operation not implemented\n\n"; want "go.mod file not found in current directory or any parent directory"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportPackageOutsideModule (0.00s)
=== RUN   TestIssue23594
    could not import testdata: import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestIssue23594 (0.00s)
=== RUN   TestMissingImportErrorRepetition
    skipping test: 'go build' unavailable: /usr/local/go/bin/go tool -n compile: fork/exec /usr/local/go/bin/go: operation not implemented
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestMissingImportErrorRepetition (0.00s)
=== RUN   TestCgoImportsIgnored
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestCgoImportsIgnored (0.00s)
=== RUN   TestAllTags
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestAllTags (0.00s)
=== RUN   TestAllTagsNonSourceFile
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestAllTagsNonSourceFile (0.00s)
=== RUN   TestDirectives
    could not import testdata: import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestDirectives (0.00s)
=== RUN   TestImportDirNotExist/GO111MODULE=off
    --- PASS: TestImportDirNotExist/GO111MODULE=off (0.00s)
=== RUN   TestImportDirNotExist/GO111MODULE=on
        Import(full, 0) got error: "go/build: go list go/build/doesnotexist: fork/exec /usr/local/go/bin/go: operation not implemented\n\n", want "cannot find package" or "is not in std" error
        Import(full, FindOnly) got error: "go/build: go list go/build/doesnotexist: fork/exec /usr/local/go/bin/go: operation not implemented\n\n", want "cannot find package" or "is not in std" error
    --- FAIL: TestImportDirNotExist/GO111MODULE=on (0.00s)

```


### go/constant linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestOps
panic: runtime error at 0x0000000000257f90: divide by zero

```


### go/doc linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3813131730/main /tmp/tinygo3813131730/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo3813131730/main /tmp/tinygo3813131730/main -test.v
/tmp/tinygo3813131730/main /tmp/tinygo3813131730/main -test.v
panic: unimplemented: (reflect.Type).NumOut()
FAIL	go/doc	0.050s
```


### go/doc/comment linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/10059
=== RUN   TestStd
    skipping test: 'go build' unavailable: /usr/local/go/bin/go tool -n compile: fork/exec /usr/local/go/bin/go: operation not implemented
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    exec: no command
    FailNow is incomplete, requires runtime.Goexit()
    stdPkgs is out of date: regenerate with 'go generate'
        diff stdPkgs want
        --- stdPkgs
        +++ want
        @@ -1,36 +1,1 @@
        -bufio
        -bytes
        -cmp
        -context
        -crypto
        -embed
        -encoding
        -errors
        -expvar
        -flag
        -fmt
        -hash
        -html
        -image
        -io
        -log
        -maps
        -math
        -mime
        -net
        -os
        -path
        -plugin
        -reflect
        -regexp
        -runtime
        -slices
        -sort
        -strconv
        -strings
        -sync
        -syscall
        -testing
        -time
        -unicode
        -unsafe
        +
--- FAIL: TestStd (0.00s)

```


### go/importer linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 2/2
=== RUN   TestForCompiler
    skipping test: 'go build' unavailable: /usr/local/go/bin/go tool -n compile: fork/exec /usr/local/go/bin/go: operation not implemented
    SkipNow is incomplete, requires runtime.Goexit()
    skipping test: 'go build' unavailable: /usr/local/go/bin/go tool -n compile: fork/exec /usr/local/go/bin/go: operation not implemented
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    go list math/big: exec: no command
    FailNow is incomplete, requires runtime.Goexit()
=== RUN   TestForCompiler/LookupDefault
panic: runtime error at 0x00000000002f3834: nil pointer dereference
=== RUN   TestForCompiler/LookupDefault
panic: runtime error at 0x00000000002f3834: nil pointer dereference

```


### go/parser linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 2/43
=== RUN   TestParseDepthLimit/array/small
=== RUN   TestParseDepthLimit
=== RUN   TestParseDepthLimit/array/small

```


### go/printer linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 12/12
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.07s)
=== RUN   TestFiles
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.00s)
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.02s)
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.01s)
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.01s)
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.01s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.02s)
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.09s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.07s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.16s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.01s)
=== RUN   TestFiles/slow.input
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.02s)
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.01s)
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.01s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.02s)
=== RUN   TestFiles/slow.input
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.00s)
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.01s)
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.09s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.16s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.01s)

```


### go/token linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo499658470/main /tmp/tinygo499658470/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo499658470/main /tmp/tinygo499658470/main -test.v
/tmp/tinygo499658470/main /tmp/tinygo499658470/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
FAIL	go/token	0.037s
```


### go/types linux/arm64

[🔝](#summary) build error

```text
FAIL	go/types	0.000s
# go/types_test
/usr/local/go/src/go/types/self_test.go:103:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
```


### hash/crc32 linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/8
=== RUN   TestArchIEEE
    Arch-specific IEEE not available.
    SkipNow is incomplete, requires runtime.Goexit()
panic: arch-specific crc32 instruction for IEEE not available

```


### hash/maphash linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/15
=== RUN   TestSmhasherTwoNonzero
panic: runtime error at 0x000000000022ecf8: out of memory

```


### html/template linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestAddParseTreeHTML
panic: unimplemented: (reflect.Type).NumOut()

```


### image/color linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestSqDiff
panic: unimplemented: (reflect.Type).NumIn()

```


### image/draw linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/9
=== RUN   TestSqDiff
panic: unimplemented: (reflect.Type).NumIn()

```


### image/gif linux/arm64

[🔝](#summary) build error

```text
FAIL	image/gif	0.000s
# image/gif
/usr/local/go/src/image/gif/reader_test.go:421:26: s1.HeapAlloc undefined (type *runtime.MemStats has no field or method HeapAlloc)
/usr/local/go/src/image/gif/reader_test.go:421:41: s0.HeapAlloc undefined (type *runtime.MemStats has no field or method HeapAlloc)
```


### image/jpeg linux/arm64

[🔝](#summary) build error

```text
FAIL	image/jpeg	0.000s
# image/jpeg
/usr/local/go/src/image/jpeg/reader_test.go:253:9: undefined: debug.SetTraceback
```


### image/png linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/13
=== RUN   TestDimensionOverflow
panic: runtime error at 0x000000000025ca64: out of memory

```


### io linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 4/60
=== RUN   TestMultiWriter_WriteStringSingleAlloc
    num allocations = 0; want 1
--- FAIL: TestMultiWriter_WriteStringSingleAlloc (0.00s)
=== RUN   TestMultiWriterSingleChainFlatten
    multiWriter did not flatten chained multiWriters: expected writeDepth 12, got 4
--- FAIL: TestMultiWriterSingleChainFlatten (0.00s)
=== RUN   TestMultiReaderFlatten
    multiReader did not flatten chained multiReaders: expected readDepth 3, got 1
--- FAIL: TestMultiReaderFlatten (0.00s)
=== RUN   TestMultiReaderFreesExhaustedReaders
    timeout waiting for collection of buf1
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestMultiReaderFreesExhaustedReaders (5.01s)

```


### io/fs linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/6
=== RUN   TestCVE202230630

```


### log linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/9
=== RUN   TestAll
    log output should match "^.*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^.*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/25 19:19:05.820637 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/25 19:19:05.820665 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/25 19:19:05.821226 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/25 19:19:05.821247 ???:0: hello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/25 19:19:05.821269 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/25 19:19:05.821734 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/25 19:19:05.822113 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/25 19:19:05.822138 ???:0: XXXhello 23 world"
--- FAIL: TestAll (0.00s)

```


### log/slog linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1632294990/main /tmp/tinygo1632294990/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo1632294990/embed-a3a5d08c40939adb7c0e9e4f5b689721-2969330575.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo1632294990/main /tmp/tinygo1632294990/main -test.v
/tmp/tinygo1632294990/main /tmp/tinygo1632294990/main -test.v
panic: runtime.Caller failed
FAIL	log/slog	0.019s
```


### log/syslog linux/arm64

[🔝](#summary) build error

```text
FAIL	log/syslog	0.000s
# log/syslog
/usr/local/go/src/log/syslog/syslog_test.go:35:21: oe.Temporary undefined (type *net.OpError has no field or method Temporary)
/usr/local/go/src/log/syslog/syslog_test.go:110:15: undefined: net.ListenPacket
```


### maps linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1427267676/main /tmp/tinygo1427267676/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: maps.clone
>>> referenced by maps.go:46 (/usr/local/go/src/maps/maps.go:46)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-E741FD614938CB8F938506574028B662B05CE9D0:(maps.Clone[map[int]int int int])
>>> referenced by maps.go:46 (/usr/local/go/src/maps/maps.go:46)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-E741FD614938CB8F938506574028B662B05CE9D0:(maps.TestCloneLarge)
failed to run tool: ld.lld
FAIL	maps	0.000s
error: failed to link /tmp/tinygo1427267676/main: exit status 1
```


### math/big linux/arm64

[🔝](#summary) build error

```text
FAIL	math/big	0.000s
# math/big
/usr/local/go/src/math/bits/bits.go:472:10: interp: running for more than 3m0s, timing out (executed calls: 30012955)
  %0 = and i64 %x, 4294967295, !dbg !30820

traceback:
/usr/local/go/src/math/bits/bits.go:472:10:
  %0 = and i64 %x, 4294967295, !dbg !30820
/usr/local/go/src/math/bits/bits.go:450:15:
  %9 = call { i64, i64 } @"math/bits.Mul64"(i64 %x, i64 %y, ptr undef), !dbg !30828
/usr/local/go/src/math/big/arith.go:51:20:
  %0 = call { i64, i64 } @"math/bits.Mul"(i64 %x, i64 %y, ptr undef), !dbg !30815
/usr/local/go/src/math/big/arith.go:192:24:
  %13 = call { i64, i64 } @"math/big.mulAddWWW_g"(i64 %12, i64 %y, i64 %6, ptr undef), !dbg !30833
/usr/local/go/src/math/big/arith_decl_pure.go:44:20:
  %12 = call i64 @"math/big.mulAddVWW_g"(ptr %6, i64 %7, i64 %8, ptr %9, i64 %10, i64 %11, i64 %y, i64 %r, ptr undef), !dbg !30816
/usr/local/go/src/math/big/nat.go:191:18:
  %32 = call i64 @"math/big.mulAddVWW"(ptr %26, i64 %27, i64 %28, ptr %29, i64 %30, i64 %31, i64 %y, i64 %r, ptr undef), !dbg !30837
/usr/local/go/src/math/big/natconv.go:213:19:
  %98 = call { ptr, i64, i64 } @"(math/big.nat).mulAddWW"(ptr %92, i64 %93, i64 %94, ptr %95, i64 %96, i64 %97, i64 %47, i64 %89, ptr undef), !dbg !30957
/usr/local/go/src/math/big/nat_test.go:92:31:
  %8 = call { { ptr, i64, i64 }, i64, i64, %runtime._interface } @"(math/big.nat).scan"(ptr null, i64 0, i64 0, ptr %6, ptr %7, i64 0, i1 false, ptr undef), !dbg !30812
/usr/local/go/src/math/big:
  %19 = call { ptr, i64, i64 } @"math/big.natFromString"(ptr %17, i64 %18, ptr undef), !dbg !30819
```


### math/rand linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 8/43
=== RUN   TestDefaultRace
--- FAIL: TestDefaultRace (0.00s)
=== RUN   TestDefaultRace/0
        fork/exec /tmp/tinygo2469119237/main: operation not implemented
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/1
        fork/exec /tmp/tinygo2469119237/main: operation not implemented
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestDefaultRace/2
        fork/exec /tmp/tinygo2469119237/main: operation not implemented
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestDefaultRace/3
        fork/exec /tmp/tinygo2469119237/main: operation not implemented
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestDefaultRace/4
        fork/exec /tmp/tinygo2469119237/main: operation not implemented
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestDefaultRace/5
        fork/exec /tmp/tinygo2469119237/main: operation not implemented
    --- FAIL: TestDefaultRace/5 (0.00s)
=== RUN   TestDefaultRace/3
        fork/exec /tmp/tinygo2469119237/main: operation not implemented
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestDefaultRace/4
        fork/exec /tmp/tinygo2469119237/main: operation not implemented
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestDefaultRace/2
        fork/exec /tmp/tinygo2469119237/main: operation not implemented
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestRegress
panic: unimplemented: (reflect.Type).Method()
=== RUN   TestDefaultRace/0
        fork/exec /tmp/tinygo2469119237/main: operation not implemented
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/1
        fork/exec /tmp/tinygo2469119237/main: operation not implemented
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestDefaultRace/5
        fork/exec /tmp/tinygo2469119237/main: operation not implemented
    --- FAIL: TestDefaultRace/5 (0.00s)

```


### math/rand/v2 linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1589010499/main /tmp/tinygo1589010499/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: internal/chacha8rand.block
>>> referenced by chacha8.go:63 (/usr/local/go/src/internal/chacha8rand/chacha8.go:63)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-41AB6AA57CA8BDAFB9032CE81E8509AB3BA1662B:((*internal/chacha8rand.State).Init)
>>> referenced by chacha8.go:88 (/usr/local/go/src/internal/chacha8rand/chacha8.go:88)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-41AB6AA57CA8BDAFB9032CE81E8509AB3BA1662B:((*math/rand/v2.ChaCha8).Uint64)
>>> referenced by chacha8.go:150 (/usr/local/go/src/internal/chacha8rand/chacha8.go:150)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-41AB6AA57CA8BDAFB9032CE81E8509AB3BA1662B:(math/rand/v2_test.TestChaCha8Marshal)
failed to run tool: ld.lld
FAIL	math/rand/v2	0.000s
error: failed to link /tmp/tinygo1589010499/main: exit status 1
```


### mime linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/14
=== RUN   TestTypeByExtension_LocalData
panic: runtime error at 0x0000000000237f38: deadlocked: no event source

```


### net/netip linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 8/256
=== RUN   TestInlining
    skipping test: 'go build' unavailable: /usr/local/go/bin/go tool -n compile: fork/exec /usr/local/go/bin/go: operation not implemented
    SkipNow is incomplete, requires runtime.Goexit()
    skipping test: 'go build' unavailable: /usr/local/go/bin/go tool -n compile: fork/exec /usr/local/go/bin/go: operation not implemented
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    go build: exec: no command, 
    FailNow is incomplete, requires runtime.Goexit()
    "(*uint128).halves" is no longer inlinable
    "Addr.BitLen" is no longer inlinable
    "Addr.hasZone" is no longer inlinable
    "Addr.Is4" is no longer inlinable
    "Addr.Is4In6" is no longer inlinable
    "Addr.Is6" is no longer inlinable
    "Addr.IsLoopback" is no longer inlinable
    "Addr.IsMulticast" is no longer inlinable
    "Addr.IsInterfaceLocalMulticast" is no longer inlinable
    "Addr.IsValid" is no longer inlinable
    "Addr.IsUnspecified" is no longer inlinable
    "Addr.Less" is no longer inlinable
    "Addr.Unmap" is no longer inlinable
    "Addr.Zone" is no longer inlinable
    "Addr.v4" is no longer inlinable
    "Addr.v6" is no longer inlinable
    "Addr.v6u16" is no longer inlinable
    "Addr.withoutZone" is no longer inlinable
    "AddrPortFrom" is no longer inlinable
    "AddrPort.Addr" is no longer inlinable
    "AddrPort.Port" is no longer inlinable
    "AddrPort.IsValid" is no longer inlinable
    "Prefix.IsSingleIP" is no longer inlinable
    "Prefix.Masked" is no longer inlinable
    "Prefix.IsValid" is no longer inlinable
    "PrefixFrom" is no longer inlinable
    "Prefix.Addr" is no longer inlinable
    "Prefix.Bits" is no longer inlinable
    "AddrFrom4" is no longer inlinable
    "IPv6LinkLocalAllNodes" is no longer inlinable
    "IPv6Unspecified" is no longer inlinable
    "MustParseAddr" is no longer inlinable
    "MustParseAddrPort" is no longer inlinable
    "MustParsePrefix" is no longer inlinable
    "appendDecimal" is no longer inlinable
    "appendHex" is no longer inlinable
    "uint128.addOne" is no longer inlinable
    "uint128.and" is no longer inlinable
    "uint128.bitsClearedFrom" is no longer inlinable
    "uint128.bitsSetFrom" is no longer inlinable
    "uint128.isZero" is no longer inlinable
    "uint128.not" is no longer inlinable
    "uint128.or" is no longer inlinable
    "uint128.subOne" is no longer inlinable
    "uint128.xor" is no longer inlinable
    "Addr.Next" is no longer inlinable
    "Addr.Prev" is no longer inlinable
--- FAIL: TestInlining (0.00s)
=== RUN   TestAddrStringAllocs
--- FAIL: TestAddrStringAllocs (0.02s)
=== RUN   TestAddrStringAllocs/zero
    --- PASS: TestAddrStringAllocs/zero (0.00s)
=== RUN   TestAddrStringAllocs/ipv4
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4 (0.00s)
=== RUN   TestAddrStringAllocs/ipv6
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv6 (0.01s)
=== RUN   TestAddrStringAllocs/ipv6+zone
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv6+zone (0.01s)
=== RUN   TestAddrStringAllocs/ipv4-in-ipv6
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4-in-ipv6 (0.00s)
=== RUN   TestAddrStringAllocs/ipv4-in-ipv6+zone
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4-in-ipv6+zone (0.00s)
=== RUN   TestAddrStringAllocs/ipv4-in-ipv6
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4-in-ipv6 (0.00s)
=== RUN   TestAddrStringAllocs/ipv6+zone
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv6+zone (0.01s)
=== RUN   TestAddrStringAllocs/ipv4-in-ipv6+zone
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4-in-ipv6+zone (0.00s)
=== RUN   TestAddrStringAllocs/zero
    --- PASS: TestAddrStringAllocs/zero (0.00s)
=== RUN   TestAddrStringAllocs/ipv4
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4 (0.00s)
=== RUN   TestAddrStringAllocs/ipv6
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv6 (0.01s)

```


### net/rpc/jsonrpc linux/arm64

[🔝](#summary) build error

```text
FAIL	net/rpc/jsonrpc	0.000s
# net/rpc
/usr/local/go/src/net/rpc/server.go:290:14: method.IsExported undefined (type reflect.Method has no field or method IsExported)
```


### net/smtp linux/arm64

[🔝](#summary) build error

```text
FAIL	net/smtp	0.000s
# net/smtp
/usr/local/go/src/net/smtp/smtp.go:72:24: undefined: tls.Conn
/usr/local/go/src/net/smtp/smtp.go:172:25: undefined: tls.Conn
/usr/local/go/src/net/smtp/smtp_test.go:591:19: undefined: tls.X509KeyPair
/usr/local/go/src/net/smtp/smtp_test.go:598:17: undefined: tls.Listen
/usr/local/go/src/net/smtp/smtp_test.go:600:17: undefined: tls.Listen
/usr/local/go/src/net/smtp/smtp_test.go:1009:9: cs.Version undefined (type tls.ConnectionState has no field or method Version)
/usr/local/go/src/net/smtp/smtp_test.go:1009:29: cs.HandshakeComplete undefined (type tls.ConnectionState has no field or method HandshakeComplete)
/usr/local/go/src/net/smtp/smtp_test.go:1049:24: undefined: tls.X509KeyPair
/usr/local/go/src/net/smtp/smtp_test.go:1054:12: undefined: tls.Server
```


### net/url linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3139644964/main /tmp/tinygo3139644964/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo3139644964/main /tmp/tinygo3139644964/main -test.v
/tmp/tinygo3139644964/main /tmp/tinygo3139644964/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
FAIL	net/url	0.014s
```


### os/signal linux/arm64

[🔝](#summary) build error

```text
FAIL	os/signal	0.000s
# os/signal
/usr/local/go/src/os/signal/signal_test.go:439:24: t.Deadline undefined (type *testing.T has no field or method Deadline)
/usr/local/go/src/os/signal/signal_test.go:482:24: t.Deadline undefined (type *testing.T has no field or method Deadline)
/usr/local/go/src/os/signal/signal_test.go:562:24: t.Deadline undefined (type *testing.T has no field or method Deadline)
/usr/local/go/src/os/signal/signal_test.go:612:23: t.Deadline undefined (type *testing.T has no field or method Deadline)
/usr/local/go/src/os/signal/signal_test.go:751:25: t.Deadline undefined (type *testing.T has no field or method Deadline)
```


### path/filepath linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestCVE202230632

```


### plugin linux/arm64

[🔝](#summary) build error

```text
FAIL	plugin	0.000s
# plugin
../../../usr/local/go/src/plugin/plugin_dlopen.go:10:6: not implemented: build constraints in #cgo line
lib/musl/include/limits.h:40:10: fatal: 'bits/limits.h' file not found
../../../usr/local/go/src/plugin/plugin_dlopen.go:12:10: note: in file included from plugin_dlopen.go!cgo.c:5:
```


### regexp linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/14
=== RUN   TestOnePassCutoff

```


### slices linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/11
=== RUN   TestInsertPanics
panic: runtime error at 0x0000000000285364: slice out of range

```


### strings linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 2/71
=== RUN   TestBuilderGrow
    growLen=100: got 0 allocs during Write; want 1
    growLen=1000: got 0 allocs during Write; want 1
    growLen=10000: got 0 allocs during Write; want 1
    growLen=100000: got 0 allocs during Write; want 1
--- FAIL: TestBuilderGrow (0.16s)
=== RUN   TestBuilderAllocs
    Builder allocs = 0; want 1
--- FAIL: TestBuilderAllocs (0.00s)

```


### sync/atomic linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 6/68
=== RUN   TestStoreLoadSeqCst32
    Skipping test on 1 processor machine
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestStoreLoadSeqCst32 (0.00s)
=== RUN   TestStoreLoadSeqCst64
    Skipping test on 1 processor machine
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestStoreLoadSeqCst64 (0.00s)
=== RUN   TestStoreLoadRelAcq32
    Skipping test on 1 processor machine
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestStoreLoadRelAcq32 (0.00s)
=== RUN   TestStoreLoadRelAcq64
    Skipping test on 1 processor machine
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestStoreLoadRelAcq64 (0.00s)
=== RUN   TestUnaligned64
    test only runs on 32-bit systems
    SkipNow is incomplete, requires runtime.Goexit()
    LoadUint64 did not panic
    LoadUint64Method did not panic
    StoreUint64 did not panic
    StoreUint64Method did not panic
    CompareAndSwapUint64 did not panic
    CompareAndSwapUint64Method did not panic
    AddUint64 did not panic
    AddUint64Method did not panic
--- FAIL: TestUnaligned64 (0.00s)
=== RUN   TestNilDeref

```


### syscall linux/arm64

[🔝](#summary) build error

```text
FAIL	syscall	0.000s
# syscall_test
/usr/local/go/src/syscall/creds_test.go:53:19: undefined: net.FileConn
/usr/local/go/src/syscall/creds_test.go:60:19: undefined: net.FileConn
/usr/local/go/src/syscall/exec_linux_test.go:671:17: undefined: user.Lookup
/usr/local/go/src/syscall/exec_linux_test.go:708:14: f.Chmod undefined (type *os.File has no field or method Chmod)
/usr/local/go/src/syscall/exec_pdeathsig_test.go:116:18: undefined: user.Lookup
/usr/local/go/src/syscall/syscall_linux_test.go:244:11: undefined: os.Chown
/usr/local/go/src/syscall/syscall_unix_test.go:183:16: undefined: net.FileConn
/usr/local/go/src/syscall/syscall_unix_test.go:238:14: undefined: net.UnixConn
/usr/local/go/src/syscall/syscall_unix_test.go:242:18: undefined: net.FileConn
```


### testing/quick linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestCheckEqual
panic: unimplemented: (reflect.Type).NumIn()

```


### testing/slogtest linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2217622982/main /tmp/tinygo2217622982/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo2217622982/main /tmp/tinygo2217622982/main -test.v
/tmp/tinygo2217622982/main /tmp/tinygo2217622982/main -test.v
panic: runtime.Caller failed
FAIL	testing/slogtest	0.014s
```


### text/template linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestExecute
panic: unimplemented: (reflect.Type).NumOut()

```


### time linux/arm64

[🔝](#summary) build error

```text
FAIL	time	0.000s
# time_test
/usr/local/go/src/time/sleep_test.go:714:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:715:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:716:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:787:8: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:788:8: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:789:8: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
```


## wasip1/wasm



### archive/tar wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/58
=== RUN   TestFileInfoHeaderSymlink
    skipping test: cannot make symlinks on wasip1/wasm: symlinks unsupported: symlink /tmp/176284487/testfile.txt /tmp/176284487/testlink: errno 63
    SkipNow is incomplete, requires runtime.Goexit()
    symlink /tmp/TestFileInfoHeaderSymlink24537895/000 /tmp/TestFileInfoHeaderSymlink24537895/000/link: errno 63
    FailNow is incomplete, requires runtime.Goexit()
    lstat /tmp/TestFileInfoHeaderSymlink24537895/000/link: file does not exist
    FailNow is incomplete, requires runtime.Goexit()
    archive/tar: FileInfo is nil
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo205996663/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2d060 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x9a8b - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0xc2aa2 - archive/tar.TestFileInfoHeaderSymlink
           3: 0x39a9c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x74a88 - (*testing.T).Run
           5: 0x397a0 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x39a9c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x348d6 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/64/64e4f0b94238e71ca92a746be092ee54ca795a74809f454318857aae67ac27fc-d:137:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x2e96d - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0xa92 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x2e842 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### archive/zip wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/84
=== RUN   TestZip64EdgeCase

```


### bufio wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/42
=== RUN   TestReadStringAllocs
    Unexpected number of allocations, got 0.000000, want 1
--- FAIL: TestReadStringAllocs (0.00s)
=== RUN   TestNegativeRead
panic: bufio: reader returned negative count from Read
Error: failed to run main module `/tmp/tinygo2065115373/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2950 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xc7da - (*bufio.Reader).Read
           2: 0x7e8a7 - bufio_test.TestNegativeRead
                           at /usr/local/go/src/bufio/bufio_test.go:1303:8
           3: 0x269c5 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x4d9bf - (*testing.T).Run
           5: 0x266c9 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x269c5 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x20bce - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/06/069a56f2cf2c2675af173cda287292b2d6132751fa3da9153f4e8a10b1e3d344-d:241:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x1c703 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x77e - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          10: 0x1c508 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### bytes wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/13
=== RUN   TestReadFromPanicReader
panic: oops
Error: failed to run main module `/tmp/tinygo2103243732/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x4770 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x118f6 - (bytes_test.panicReader).Read
                           at /usr/local/go/src/bytes/buffer_test.go:271:8
           2: 0x10c8c - (bytes_test.panicReader).Read$invoke
                           at /usr/local/go/src/bytes/buffer_test.go:269:22              - (Go interface method)
                           at <Go interface method>
           3: 0x14f62 - (*bytes.Buffer).ReadFrom
                           at /usr/local/go/src/bytes/buffer.go:211:23
           4: 0x7979f - bytes_test.TestReadFromPanicReader
                           at /usr/local/go/src/bytes/buffer_test.go:297:15
           5: 0x29040 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x28d32 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x29040 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x22b6b - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/e9/e93c8444dc8df6f4a356946eb7b5b36c54937c0dfbc9b92af48cbe8e6cdc6d17-d:459:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x1cc38 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x952 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x1cb15 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### compress/flate wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/23
=== RUN   TestBestSpeed

```


### context wasip1/wasm

[🔝](#summary) build error

```text
FAIL	context	0.000s
# context_test
/usr/local/go/src/context/x_test.go:21:27: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestParentFinishesChild: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:24:26: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestChildFinishesFirst: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:27:21: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestCancelRemoves: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:30:31: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestCustomContextGoroutines: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:50:20: t.Deadline undefined (type *testing.T has no field or method Deadline)
```


### crypto wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestRC4OutOfBoundsWrite
panic: runtime error: index out of range
Error: failed to run main module `/tmp/tinygo941968970/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x15bff - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x124a - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:160:16
           2: 0x5d227 - <unknown>!(*crypto/rc4.Cipher).XORKeyStream$bound
           3: 0x5d5c2 - crypto_test.test
                           at /usr/local/go/src/crypto/issue21104_test.go:60:5
           4: 0x5cfe6 - crypto_test.TestRC4OutOfBoundsWrite
                           at /usr/local/go/src/crypto/issue21104_test.go:21:6
           5: 0x20e3c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x20b32 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x20e3c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x1bb2c - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/ae/ae5003e243985acd87c6eaa8aa139ba382fcef53385b020be05280b51425c1a5-d:57:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x1793c - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x520 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x17812 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/aes wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/9
=== RUN   TestShortBlocks
panic: crypto/aes: input not full block
Error: failed to run main module `/tmp/tinygo1750896320/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x227f - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x23893 - (*crypto/aes.aesCipher).Encrypt
                           at /usr/local/go/src/crypto/aes/cipher.go:60:8              - (Go interface method)
                           at <Go interface method>
           2: 0x64895 - crypto/aes.TestShortBlocks$2
                           at /usr/local/go/src/crypto/aes/aes_test.go:327:69
           3: 0x64b0b - crypto/aes.mustPanic
                           at /usr/local/go/src/crypto/aes/aes_test.go:344:3
           4: 0x64298 - crypto/aes.TestShortBlocks
                           at /usr/local/go/src/crypto/aes/aes_test.go:327:11
           5: 0x17be8 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x178df - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x17be8 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x11ce5 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/fb/fbd7cbbdabeaf1f6755c53f198ce468296a770fe68d3e21898f1ad5b22c4718e-d:77:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0xdb07 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x541 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0xd9de - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/cipher wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/5
=== RUN   TestCryptBlocks
panic: crypto/cipher: input not full blocks
Error: failed to run main module `/tmp/tinygo1795815006/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x32b3 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x68bf4 - (*crypto/cipher.cbcDecrypter).CryptBlocks
                           at /usr/local/go/src/crypto/cipher/cbc.go:145:8              - (Go interface method)
                           at <Go interface method>
           2: 0x6b157 - crypto/cipher_test.TestCryptBlocks$1
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:20:80
           3: 0x6b3c5 - crypto/cipher_test.mustPanic
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:37:3
           4: 0x6ade3 - crypto/cipher_test.TestCryptBlocks
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:20:11
           5: 0x1aad3 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x1a7c9 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x1aad3 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x14d25 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/61/6162e4542004ff5d4561a2904bdcadfd96d18761f8e4484f36f3c8725ffde61c-d:107:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x10b31 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x61c - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x10a07 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/ecdh wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/47
=== RUN   TestLinker
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    [ build -o hello.exe hello.go]: exec: no command
    FailNow is incomplete, requires runtime.Goexit()
    [./hello.exe]: open /dev/null: file does not exist
    FailNow is incomplete, requires runtime.Goexit()
    unexpected output: 
    [ tool nm hello.exe]: exec: no command
    FailNow is incomplete, requires runtime.Goexit()
    no P384 symbols found in program using ecdh.P384, test is broken
--- FAIL: TestLinker (0.01s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestLinker44516973: errno 52

```


### crypto/ed25519 wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/9
=== RUN   TestEd25519Vectors
    skipping test: no external network on wasip1
    SkipNow is incomplete, requires runtime.Goexit()
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    failed to run `go mod download -json filippo.io/mostly-harmless/ed25519vectors@v0.0.0-20210322192420-30a2d7243a94`, output: 
    FailNow is incomplete, requires runtime.Goexit()
    unexpected end of JSON input
    FailNow is incomplete, requires runtime.Goexit()
    failed to read ed25519vectors.json: open ed25519vectors.json: file does not exist
    FailNow is incomplete, requires runtime.Goexit()
    unexpected end of JSON input
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestEd25519Vectors (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestEd25519Vectors47870363: errno 52

```


### crypto/hmac wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestNonUniqueHash
panic: crypto/hmac: hash generation function does not produce unique values
Error: failed to run main module `/tmp/tinygo3948225957/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x22a7 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x65d22 - crypto/hmac.New
           2: 0x66c8d - crypto/hmac.TestNonUniqueHash
                           at /usr/local/go/src/crypto/hmac/hmac_test.go:597:45
           3: 0x1da57 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x1d74d - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           5: 0x1da57 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x1889f - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/8d/8dd68077524b4f9a102e80f0c613dde97831cb4f7273bcbb1841dcbf81bac77a-d:59:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           7: 0x146ab - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           8:  0x55f - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           9: 0x14581 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/rsa wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestEncryptPKCS1v15
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo3594800830/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x42cd - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6564 - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0xea981 - (Go interface method)
           3: 0xec52f - testing/quick.Check
                           at /usr/local/go/src/testing/quick/quick.go:273:17              - crypto/rsa_test.TestEncryptPKCS1v15
                           at /usr/local/go/src/crypto/rsa/pkcs1v15_test.go:118:13
           4: 0x361a0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x791ce - (*testing.T).Run
           6: 0x35ea8 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x361a0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x2eb3c - <unknown>!runtime.run$1
           9: 0x2bf9a - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0xab8 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x2be76 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/subtle wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestConstantTimeByteEq
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo124097812/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x3238 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x34da - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x5d5cf - (Go interface method)
           3: 0x5d7cc - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48
           4: 0x5e0ae - crypto/subtle.TestConstantTimeByteEq
                           at /usr/local/go/src/crypto/subtle/constant_time_test.go:59:25
           5: 0x14bad - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x148a4 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x14bad - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0xe461 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/7c/7cc9948b16646f06706c44112c930c26b98cbd01318a65fa88edfa29a37f5dbe-d:69:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0xa1a5 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x55d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0xa07c - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/x509 wasip1/wasm

[🔝](#summary) build error

```text
FAIL	crypto/x509	0.000s
# crypto/x509_test
/usr/local/go/src/crypto/x509/hybrid_pool_test.go:63:17: c.ConnectionState undefined (type *net.TLSConn has no field or method ConnectionState)
```


### database/sql wasip1/wasm

[🔝](#summary) build error

```text
FAIL	database/sql	0.000s
# database/sql
/usr/local/go/src/database/sql/sql_test.go:4722:4: b.SetParallelism undefined (type *testing.B has no field or method SetParallelism)
```


### debug/buildinfo wasip1/wasm

[🔝](#summary) build error

```text
FAIL	debug/buildinfo	0.000s
# debug/buildinfo
/usr/local/go/src/debug/buildinfo/buildinfo.go:80:19: undefined: debug.ParseBuildInfo
```


### debug/elf wasip1/wasm

[🔝](#summary) build error

```text
FAIL	debug/elf	0.000s
# debug/elf
/usr/local/go/src/debug/elf/file_test.go:1159:10: undefined: net.ResolveIPAddr
```


### debug/gosym wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestLineFromAline
    skipping on non-ELF system wasip1
    SkipNow is incomplete, requires runtime.Goexit()
    open main: file does not exist
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo88710859/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x29110 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x86a6 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x8dc5b - (*debug/elf.File).Section
           3: 0xa01d2 - debug/gosym.crack
                           at /usr/local/go/src/debug/gosym/pclntab_test.go:81:10
           4: 0x9dc70 - debug/gosym.getTable
                           at /usr/local/go/src/debug/gosym/pclntab_test.go:72:17
           5: 0xa0987 - debug/gosym.TestLineFromAline
                           at /usr/local/go/src/debug/gosym/pclntab_test.go:113:14
           6: 0x387e2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x384d4 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x387e2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x2de59 - <unknown>!runtime.run$1
          10: 0x2af5d - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11:  0x9d4 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x2adfa - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### debug/pe wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestDefaultLinkerDWARF
    skipping test: gcc is missing
    SkipNow is incomplete, requires runtime.Goexit()
    skipping windows only test
    SkipNow is incomplete, requires runtime.Goexit()
    skipping test: 'go run' not available on wasip1/wasm
    SkipNow is incomplete, requires runtime.Goexit()
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    building test executable for linktype 1 failed: exec: no command 
    FailNow is incomplete, requires runtime.Goexit()
    running test executable failed: open /dev/null: file does not exist 
    FailNow is incomplete, requires runtime.Goexit()
    Testprog output:
    unexpected program output: 
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: index out of range
Error: failed to run main module `/tmp/tinygo848688663/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x288e7 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x4697 - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:160:16
           2: 0xc1888 - <unknown>!debug/pe.testDWARF
           3: 0xbbc87 - debug/pe.testCgoDWARF
                           at /usr/local/go/src/debug/pe/file_cgo_test.go:19:11
           4: 0xc1df9 - debug/pe.TestDefaultLinkerDWARF
                           at /usr/local/go/src/debug/pe/file_cgo_test.go:23:14
           5: 0x35db0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x35aa2 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x35db0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x303fa - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/c6/c6b2594ecf7e1bc0013e59951cbc3017ad5a6d482f8dd4bcd166624b7c686322-d:71:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x2a632 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0xa68 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x2a4cf - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### encoding/binary wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/16
=== RUN   TestUnexportedRead
panic: reflect: value is not settable
Error: failed to run main module `/tmp/tinygo299162497/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2f52 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xacc1 - (reflect.Value).checkRO
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:56:8
           2: 0xb1f0 - (reflect.Value).SetInt
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:1132:11
           3: 0x64eea - (*encoding/binary.decoder).int32
                           at /usr/local/go/src/encoding/binary/binary.go:656:11              - (*encoding/binary.decoder).value
                           at /usr/local/go/src/encoding/binary/binary.go:656:25
           4: 0x64b4b - (*encoding/binary.decoder).value
                           at /usr/local/go/src/encoding/binary/binary.go:636:12
           5: 0x63c38 - encoding/binary.Read
           6: 0x6db30 - encoding/binary.TestUnexportedRead
                           at /usr/local/go/src/encoding/binary/binary_test.go:395:6
           7: 0x212f7 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x493af - (*testing.T).Run
           9: 0x20fff - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x212f7 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x1bb3b - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/fb/fbc5d26cd0caebeb345e8f586b2417fd3156bc04f7d17813959166a5c6f5f5bb-d:179:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          12: 0x17945 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13:  0x66e - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x1781b - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### encoding/gob wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo987979828/main /tmp/tinygo987979828/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo987979828/main --output /tmp/tinygo987979828/main
FAIL	encoding/gob	0.000s
error: wasm-opt failed: signal: killed
```


### encoding/pem wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/4
=== RUN   TestCVE202224675

```


### encoding/xml wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/336
=== RUN   TestCVE202228131
Error: failed to run main module `/tmp/tinygo3806335668/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x147c - runtime.memzero
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime.go:42:6              - runtime.alloc
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/gc_blocks.go:376:11
           1: 0x23e4 - runtime.sliceAppend
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/slice.go:30:15
           2: 0x8596f - encoding/xml.addFieldInfo
                           at /usr/local/go/src/encoding/xml/typeinfo.go:295:24
           3: 0x81c40 - encoding/xml.getTypeInfo
                           at /usr/local/go/src/encoding/xml/typeinfo.go:102:26
           4: 0x89bda - <unknown>!(*encoding/xml.Decoder).unmarshal
           5: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
           6: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
           7: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
           8: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
           9: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          10: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          11: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          12: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          13: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          14: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          15: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          16: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          17: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          18: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          19: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          20: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          21: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          22: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          23: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          24: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          25: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          26: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          27: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          28: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          29: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          30: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          31: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          32: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          33: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          34: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          35: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          36: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          37: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          38: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          39: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          40: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          41: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          42: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          43: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          44: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          45: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          46: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          47: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          48: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          49: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          50: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          51: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          52: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          53: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          54: 0x8ada0 - <unknown>!(*encoding/xml.Decoder).unmarshal
          55: 0x88bf0 - (*encoding/xml.Decoder).DecodeElement
          56: 0x886a4 - (*encoding/xml.Decoder).Decode
                           at /usr/local/go/src/encoding/xml/read.go:140:24
          57: 0x8838a - encoding/xml.Unmarshal
                           at /usr/local/go/src/encoding/xml/read.go:134:49
          58: 0xa4a2f - encoding/xml.TestCVE202228131
                           at /usr/local/go/src/encoding/xml/read_test.go:1106:18
          59: 0x3040d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          60: 0x6475b - (*testing.T).Run
          61: 0x30115 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          62: 0x3040d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          63: 0x265ca - <unknown>!runtime.run$1
          64: 0x23892 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          65:  0x7a4 - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          66: 0x23768 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: out of bounds memory access

```


### errors wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 21/56
=== RUN   TestAs
--- FAIL: TestAs (0.02s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0x44e30)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0x44e30) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44e30)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44e30) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0x44e30)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0x44e30) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0x44e30)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0x44e30) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0x44e50)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0x44e50) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0x44e40)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0x44e40) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44e40)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44e40) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0x44e40)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x44e70)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x26cdc)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0x44e40) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0x44e40)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x44e70)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x26cdc)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0x44e40) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAsValidation
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo4037084912/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x34d1 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x10295 - (Go interface method)
                           at /usr/local/go/src/errors/wrap.go:102:8              - errors.As
                           at /usr/local/go/src/errors/wrap.go:109:24
           2: 0x679e1 - errors_test.TestAsValidation$1
                           at /usr/local/go/src/errors/wrap_test.go:232:22
           3: 0x2274b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x49820 - (*testing.T).Run
           5: 0x67826 - errors_test.TestAsValidation
                           at /usr/local/go/src/errors/wrap_test.go:228:8
           6: 0x2274b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x49820 - (*testing.T).Run
           8: 0x22453 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x2274b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x1dc51 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/29/296ea2046c05354d953725f9ec87bf4599cebf04d3fee3fb5de97bc80e2f53e0-d:83:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          11: 0x19a7a - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12:  0x665 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x19950 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0x44e30)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0x44e30) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0x44e30)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0x44e30) (0.00s)
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0x44e40)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x44e70)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x26cdc)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0x44e40) (0.00s)
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo4037084912/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x34d1 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x10295 - (Go interface method)
                           at /usr/local/go/src/errors/wrap.go:102:8              - errors.As
                           at /usr/local/go/src/errors/wrap.go:109:24
           2: 0x679e1 - errors_test.TestAsValidation$1
                           at /usr/local/go/src/errors/wrap_test.go:232:22
           3: 0x2274b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x49820 - (*testing.T).Run
           5: 0x67826 - errors_test.TestAsValidation
                           at /usr/local/go/src/errors/wrap_test.go:228:8
           6: 0x2274b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x49820 - (*testing.T).Run
           8: 0x22453 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x2274b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x1dc51 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/29/296ea2046c05354d953725f9ec87bf4599cebf04d3fee3fb5de97bc80e2f53e0-d:83:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          11: 0x19a7a - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12:  0x665 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x19950 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44e30)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44e30) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0x44e50)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0x44e50) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0x44e40)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0x44e40) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0x44e40)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x44e70)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x26cdc)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0x44e40) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44e40)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44e40) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0x44e30)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0x44e30) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)

```


### flag wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/14
=== RUN   TestPrintDefaults
panic: panic!
Error: failed to run main module `/tmp/tinygo2294966064/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x47c2 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x2d657 - (*flag_test.zeroPanicker).String
                           at /usr/local/go/src/flag/flag_test.go:479:8
           2: 0x536f6 - (Go interface method)
           3: 0x52dff - (Go interface method)
                           at /usr/local/go/src/flag/flag.go:560:46              - flag.isZeroValue
                           at /usr/local/go/src/flag/flag.go:545:27              - (*flag.FlagSet).PrintDefaults$1
                           at /usr/local/go/src/flag/flag.go:630:32
           4: 0x53419 - (*flag.FlagSet).VisitAll
                           at /usr/local/go/src/flag/flag.go:458:5
           5: 0x51e3d - (*flag.FlagSet).PrintDefaults
                           at /usr/local/go/src/flag/flag.go:609:12
           6: 0x8c5bf - flag_test.TestPrintDefaults
                           at /usr/local/go/src/flag/flag_test.go:538:18
           7: 0x22c88 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x2297a - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x22c88 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x1d505 - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10
          11: 0x1991d - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12:  0x8cc - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x197ba - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### fmt wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestSprintf
    Sprintf("%#v", 0x2f) = "(func)(0x2f)" want "(func(*testing.T))(0xPTR)"
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo244666447/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x17912 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x53f7 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x2e92 - (*reflect.rawType).isNamed
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:491:11
           3: 0x327c - <unknown>!(*reflect.rawType).String
           4: 0xb06d - (reflect.Value).String
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:506:33
           5: 0x46a83 - (Go interface method)
                           at /usr/local/go/src/regexp/syntax/prog.go:125:17
           6: 0x6a2fa - <unknown>!(*fmt.pp).handleMethods
           7: 0x6400a - <unknown>!(*fmt.pp).printArg
           8: 0x66bd5 - <unknown>!(*fmt.pp).doPrintf
           9: 0x4e9af - fmt.Sprintf
                           at /usr/local/go/src/fmt/print.go:239:12
          10: 0x99675 - fmt_test.TestSprintf
                           at /usr/local/go/src/fmt/fmt_test.go:1095:15
          11: 0x42774 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x7f280 - (*testing.T).Run
          13: 0x4247c - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          14: 0x42774 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          15: 0x1d8c4 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/66/665da5d4c977fc2a206006294ded03ebd6df63735e00381c714cf30190ea5398-d:233:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          16: 0x1954c - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          17:  0x72d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          18: 0x19422 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/build wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 17/56
=== RUN   TestDotSlashImport
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
    import "./file": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestDotSlashImport (0.01s)
=== RUN   TestLocalDirectory
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
    ImportPath=".", want "go/build"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestLocalDirectory (0.05s)
=== RUN   TestImportCmd
    go/build: go list cmd/internal/objfile: open /dev/null: file does not exist
        
        
    FailNow is incomplete, requires runtime.Goexit()
    Import cmd/internal/objfile returned Dir="", want ".../src/cmd/internal/objfile"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportCmd (0.00s)
=== RUN   TestImportDirNotExist
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportDirNotExist (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestImportDirNotExist143670194: errno 52
=== RUN   TestImportDirNotExist/GO111MODULE=off
    --- PASS: TestImportDirNotExist/GO111MODULE=off (0.00s)
=== RUN   TestImportDirNotExist/GO111MODULE=on
        Import(full, 0) got error: "go/build: go list go/build/doesnotexist: open /dev/null: file does not exist\n\n", want "cannot find package" or "is not in std" error
        Import(full, FindOnly) got error: "go/build: go list go/build/doesnotexist: open /dev/null: file does not exist\n\n", want "cannot find package" or "is not in std" error
    --- FAIL: TestImportDirNotExist/GO111MODULE=on (0.00s)
=== RUN   TestImportVendor
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    cannot find vendored c/d from testdata src/a/b directory: import "c/d": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportVendor (0.00s)
=== RUN   TestImportVendorFailure
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportVendorFailure (0.00s)
=== RUN   TestImportVendorParentFailure
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportVendorParentFailure (0.00s)
=== RUN   TestImportPackageOutsideModule
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    error when importing package when no go.mod is present: got "go/build: go list example.com/p: open /dev/null: file does not exist\n\n"; want "go.mod file not found in current directory or any parent directory"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportPackageOutsideModule (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestImportPackageOutsideModule73937864: errno 52
=== RUN   TestIssue23594
    could not import testdata: import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestIssue23594 (0.01s)
=== RUN   TestMissingImportErrorRepetition
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestMissingImportErrorRepetition (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestMissingImportErrorRepetition205284844: errno 52
=== RUN   TestCgoImportsIgnored
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestCgoImportsIgnored (0.01s)
=== RUN   TestAllTags
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestAllTags (0.02s)
=== RUN   TestAllTagsNonSourceFile
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestAllTagsNonSourceFile (0.00s)
=== RUN   TestDirectives
    could not import testdata: import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestDirectives (0.05s)
=== RUN   TestFindImports
    open /usr/local/go/src/go/build: file does not exist
    FailNow is incomplete, requires runtime.Goexit()
    go/build imports []
    expected to find "bytes" in import list
    expected to find "os" in import list
    expected to find "path/filepath" in import list
    expected to find "strings" in import list
--- FAIL: TestFindImports (0.00s)
=== RUN   TestImportDirNotExist/GO111MODULE=on
        Import(full, 0) got error: "go/build: go list go/build/doesnotexist: open /dev/null: file does not exist\n\n", want "cannot find package" or "is not in std" error
        Import(full, FindOnly) got error: "go/build: go list go/build/doesnotexist: open /dev/null: file does not exist\n\n", want "cannot find package" or "is not in std" error
    --- FAIL: TestImportDirNotExist/GO111MODULE=on (0.00s)
=== RUN   TestImportDirNotExist/GO111MODULE=off
    --- PASS: TestImportDirNotExist/GO111MODULE=off (0.00s)

```


### go/build/constraint wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 7/13
=== RUN   TestLex
=== RUN   TestLex/0
    --- PASS: TestLex/0 (0.00s)
=== RUN   TestLex/1
    --- PASS: TestLex/1 (0.00s)
=== RUN   TestLex/2
    --- PASS: TestLex/2 (0.00s)
=== RUN   TestLex/3
    --- PASS: TestLex/3 (0.00s)
=== RUN   TestLex/4
    --- PASS: TestLex/4 (0.00s)
=== RUN   TestLex/5
panic: invalid syntax at ²
Error: failed to run main module `/tmp/tinygo2468154774/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x281e - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x63740 - (*go/build/constraint.exprParser).lex
                           at /usr/local/go/src/go/build/constraint/expr.go:339:8
           2: 0x65b75 - go/build/constraint.lexHelp
                           at /usr/local/go/src/go/build/constraint/expr_test.go:108:7              - go/build/constraint.TestLex$1
                           at /usr/local/go/src/go/build/constraint/expr_test.go:77:24
           3: 0x26223 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x4834c - (*testing.T).Run
           5: 0x65939 - go/build/constraint.TestLex
                           at /usr/local/go/src/go/build/constraint/expr_test.go:73:8
           6: 0x26223 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x4834c - (*testing.T).Run
           8: 0x25f2b - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x26223 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x22614 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/30/30202da01dd9f128e3d8052cae5abedd5e12e2a69b87c6de9d7decc51b0c3b37-d:63:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          11: 0x1e46b - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12:  0x563 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x1e341 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestLex/1
    --- PASS: TestLex/1 (0.00s)
=== RUN   TestLex/2
    --- PASS: TestLex/2 (0.00s)
=== RUN   TestLex/3
    --- PASS: TestLex/3 (0.00s)
=== RUN   TestLex/4
    --- PASS: TestLex/4 (0.00s)
=== RUN   TestLex/0
    --- PASS: TestLex/0 (0.00s)
=== RUN   TestLex/5
panic: invalid syntax at ²
Error: failed to run main module `/tmp/tinygo2468154774/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x281e - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x63740 - (*go/build/constraint.exprParser).lex
                           at /usr/local/go/src/go/build/constraint/expr.go:339:8
           2: 0x65b75 - go/build/constraint.lexHelp
                           at /usr/local/go/src/go/build/constraint/expr_test.go:108:7              - go/build/constraint.TestLex$1
                           at /usr/local/go/src/go/build/constraint/expr_test.go:77:24
           3: 0x26223 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x4834c - (*testing.T).Run
           5: 0x65939 - go/build/constraint.TestLex
                           at /usr/local/go/src/go/build/constraint/expr_test.go:73:8
           6: 0x26223 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x4834c - (*testing.T).Run
           8: 0x25f2b - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x26223 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x22614 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/30/30202da01dd9f128e3d8052cae5abedd5e12e2a69b87c6de9d7decc51b0c3b37-d:63:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          11: 0x1e46b - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12:  0x563 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x1e341 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/constant wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestOps
panic: division by zero
Error: failed to run main module `/tmp/tinygo1861709763/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x1b0c - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x5be7a - (*math/big.Rat).SetFrac64
                           at /usr/local/go/src/math/big/rat.go:321:8              - math/big.NewRat
                           at /usr/local/go/src/math/big/rat.go:34:27
           2: 0x84fe5 - go/constant.BinaryOp
                           at /usr/local/go/src/go/constant/value.go:1136:19
           3: 0x876f7 - go/constant.doOp
                           at /usr/local/go/src/go/constant/value_test.go:534:18              - go/constant.TestOps
                           at /usr/local/go/src/go/constant/value_test.go:345:14
           4: 0x1e0e0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x1ddd6 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x1e0e0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x182f3 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/58/583445e0700a8fe2773fdef84b84344a144e28b007bdfab093c213a38db43c7d-d:79:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x13c14 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x670 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x13aea - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/doc wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3344669691/main /tmp/tinygo3344669691/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo3344669691/main --output /tmp/tinygo3344669691/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=. --dir=/tmp::/tmp /tmp/tinygo3344669691/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=.. --dir=../.. --dir=../../.. --dir=. --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --dir=. --dir=/tmp::/tmp /tmp/tinygo3344669691/main -test.v
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo3344669691/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x631d - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6e9b - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0x3b6e4 - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0x274d1 - <unknown>!runtime.initAll
           4: 0x21a58 - <unknown>!runtime.run$1
           5: 0x21812 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           6:  0xb31 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           7: 0x216e7 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	go/doc	0.759s
```


### go/doc/comment wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/10059
=== RUN   TestStd
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
    SkipNow is incomplete, requires runtime.Goexit()
    exec: no command
    FailNow is incomplete, requires runtime.Goexit()
    stdPkgs is out of date: regenerate with 'go generate'
        diff stdPkgs want
        --- stdPkgs
        +++ want
        @@ -1,36 +1,1 @@
        -bufio
        -bytes
        -cmp
        -context
        -crypto
        -embed
        -encoding
        -errors
        -expvar
        -flag
        -fmt
        -hash
        -html
        -image
        -io
        -log
        -maps
        -math
        -mime
        -net
        -os
        -path
        -plugin
        -reflect
        -regexp
        -runtime
        -slices
        -sort
        -strconv
        -strings
        -sync
        -syscall
        -testing
        -time
        -unicode
        -unsafe
        +
--- FAIL: TestStd (0.00s)

```


### go/importer wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/2
=== RUN   TestForCompiler
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
    SkipNow is incomplete, requires runtime.Goexit()
    go list math/big: exec: no command
    FailNow is incomplete, requires runtime.Goexit()
=== RUN   TestForCompiler/LookupDefault
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo2490137773/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x38588 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0xaf41 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x1df134 - (Go interface method)
           3: 0x213098 - go/importer.TestForCompiler$1
                           at /usr/local/go/src/go/importer/importer_test.go:41:25
           4: 0x4e1ff - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x20d1c1 - (*testing.T).Run
           6: 0x212de3 - go/importer.TestForCompiler
                           at /usr/local/go/src/go/importer/importer_test.go:39:7
           7: 0x4e1ff - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x20d1c1 - (*testing.T).Run
           9: 0x4df02 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x4e1ff - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x3d0a6 - <unknown>!runtime.run$1
          12: 0x3a0f5 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x10fe - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x39f91 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestForCompiler/LookupDefault
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo2490137773/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x38588 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0xaf41 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x1df134 - (Go interface method)
           3: 0x213098 - go/importer.TestForCompiler$1
                           at /usr/local/go/src/go/importer/importer_test.go:41:25
           4: 0x4e1ff - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x20d1c1 - (*testing.T).Run
           6: 0x212de3 - go/importer.TestForCompiler
                           at /usr/local/go/src/go/importer/importer_test.go:39:7
           7: 0x4e1ff - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x20d1c1 - (*testing.T).Run
           9: 0x4df02 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x4e1ff - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x3d0a6 - <unknown>!runtime.run$1
          12: 0x3a0f5 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x10fe - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x39f91 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/parser wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/27
=== RUN   TestParseFile
panic: (124656:0x00020328)
Error: failed to run main module `/tmp/tinygo3201170289/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x53e2 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x82327 - (*go/parser.parser).error
                           at /usr/local/go/src/go/parser/parser.go:277:9
           2: 0x8be1f - (*go/parser.parser).parseIndexOrSliceOrInstance
                           at /usr/local/go/src/go/parser/parser.go:1587:12              - (*go/parser.parser).parsePrimaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1732:37
           3: 0x96adb - (*go/parser.parser).parseUnaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1835:27
           4: 0x8c5bc - (*go/parser.parser).parseBinaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1856:23
           5: 0x8c864 - (*go/parser.parser).parseBinaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1870:25
           6: 0x9623d - (*go/parser.parser).parseExpr
                           at /usr/local/go/src/go/parser/parser.go:1881:26
           7: 0x89ead - (*go/parser.parser).parseExprList
                           at /usr/local/go/src/go/parser/parser.go:502:33              - (*go/parser.parser).parseList
                           at /usr/local/go/src/go/parser/parser.go:514:25
           8: 0x8557b - <unknown>!(*go/parser.parser).parseValueSpec$bound
           9: 0x8300c - (*go/parser.parser).parseGenDecl
                           at /usr/local/go/src/go/parser/parser.go:2740:24
          10: 0x83955 - (*go/parser.parser).parseDecl
                           at /usr/local/go/src/go/parser/parser.go:2835:9
          11: 0x80ab0 - go/parser.ParseFile
                           at /usr/local/go/src/go/parser/parser.go:2886:38
          12: 0x9d5f0 - go/parser.TestParseFile
                           at /usr/local/go/src/go/parser/parser_test.go:46:21
          13: 0x26e71 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          14: 0x6ae61 - (*testing.T).Run
          15: 0x26b79 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          16: 0x26e71 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          17: 0x1d255 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/df/df1ffbc2f67009cb7164e9eddbd8e4a1427bd474a1a1b5ebd8579dc5d45f2a14-d:107:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          18: 0x185c0 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          19:  0x87d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          20: 0x18496 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/printer wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 12/12
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.28s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.10s)
=== RUN   TestFiles/slow.input
panic: runtime error: slice out of range
Error: failed to run main module `/tmp/tinygo3909123806/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x16af8 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x3bd4 - runtime.slicePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:165:16
           2: 0x3a17f - os.ReadFile
           3: 0xc88f7 - go/printer.runcheck
                           at /usr/local/go/src/go/printer/printer_test.go:121:25              - go/printer.check$1
                           at /usr/local/go/src/go/printer/printer_test.go:152:11
           4: 0xc8dc1 - <goroutine wrapper>
                           at /usr/local/go/src/go/printer/printer_test.go:151:2
           5:  0x91e - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x18831 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.02s)
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.00s)
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.05s)
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.03s)
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.03s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.12s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.21s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.06s)
=== RUN   TestFiles
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.00s)
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.05s)
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.03s)
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.02s)
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.03s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.12s)
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.28s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.21s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.10s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.06s)
=== RUN   TestFiles/slow.input
panic: runtime error: slice out of range
Error: failed to run main module `/tmp/tinygo3909123806/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x16af8 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x3bd4 - runtime.slicePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:165:16
           2: 0x3a17f - os.ReadFile
           3: 0xc88f7 - go/printer.runcheck
                           at /usr/local/go/src/go/printer/printer_test.go:121:25              - go/printer.check$1
                           at /usr/local/go/src/go/printer/printer_test.go:152:11
           4: 0xc8dc1 - <goroutine wrapper>
                           at /usr/local/go/src/go/printer/printer_test.go:151:2
           5:  0x91e - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x18831 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/token wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2475071640/main /tmp/tinygo2475071640/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo2475071640/main --output /tmp/tinygo2475071640/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=. --dir=/tmp::/tmp /tmp/tinygo2475071640/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=.. --dir=../.. --dir=../../.. --dir=. --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --dir=. --dir=/tmp::/tmp /tmp/tinygo2475071640/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
Error: failed to run main module `/tmp/tinygo2475071640/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x27f5 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x36d24 - encoding/gob.checkId
                           at /usr/local/go/src/encoding/gob/type.go:633:8
           2: 0x2261e - <unknown>!runtime.run$1
           3: 0x1eb1b - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           4:  0x7f1 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           5: 0x1e9f7 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	go/token	0.640s
```


### go/types wasip1/wasm

[🔝](#summary) build error

```text
FAIL	go/types	0.000s
# go/types_test
/usr/local/go/src/go/types/self_test.go:103:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
```


### hash/crc32 wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/8
=== RUN   TestArchIEEE
    Arch-specific IEEE not available.
    SkipNow is incomplete, requires runtime.Goexit()
panic: not available
Error: failed to run main module `/tmp/tinygo384046586/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x3127 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x60158 - hash/crc32.archInitIEEE
                           at /usr/local/go/src/hash/crc32/crc32_otherarch.go:10:57
           2: 0x63e65 - hash/crc32.TestArchIEEE
                           at /usr/local/go/src/hash/crc32/crc32_test.go:232:14
           3: 0x1dacf - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x46cb5 - (*testing.T).Run
           5: 0x1d7d7 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x1dacf - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x17aca - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/42/42abff43a2f6d063760b5c32884a73c3b8a5ebac782b8fcf07ac3452956a7eef-d:67:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x13a2b - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x5b8 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x13908 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### hash/maphash wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/13
=== RUN   TestSmhasherSmallKeys

```


### html/template wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestAddParseTreeHTML
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo2220403285/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x6313 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x75fc - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0xf6e28 - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0x100c67 - (*text/template.Template).Funcs
                           at /usr/local/go/src/text/template/template.go:181:15
           4: 0x129122 - (*html/template.escaper).commit
                           at /usr/local/go/src/html/template/escape.go:918:25              - html/template.escapeTemplate
                           at /usr/local/go/src/html/template/escape.go:40:17
           5: 0x129dc4 - (*html/template.Template).lookupAndEscapeTemplate
                           at /usr/local/go/src/html/template/template.go:163:23              - (*html/template.Template).ExecuteTemplate
                           at /usr/local/go/src/html/template/template.go:135:40
           6: 0x133130 - html/template.TestAddParseTreeHTML
                           at /usr/local/go/src/html/template/clone_test.go:25:29
           7: 0x4cea2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x106fd4 - (*testing.T).Run
           9: 0x4cbaa - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x4cea2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x3d3d5 - <unknown>!runtime.run$1
          12: 0x3a6b9 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13:  0xe98 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x3a595 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### image wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestNewXxxBadRectangle
panic: image: NewRGBA Rectangle has huge or negative dimensions
Error: failed to run main module `/tmp/tinygo2264896461/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x3cae - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6a3aa - (image.Rectangle).Dx
                           at /usr/local/go/src/image/image.go:96:8              - image.pixelBufferLength
                           at /usr/local/go/src/image/image.go:94:47
           2: 0x68703 - image.NewRGBA
                           at /usr/local/go/src/image/image.go:229:42
           3: 0x76579 - image.TestNewXxxBadRectangle$2
                           at /usr/local/go/src/image/image_test.go:108:39
           4: 0x7671f - image.TestNewXxxBadRectangle$1
                           at /usr/local/go/src/image/image_test.go:94:10
           5: 0x75547 - image.TestNewXxxBadRectangle
                           at /usr/local/go/src/image/image_test.go:138:16
           6: 0x2d3c1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x2d0b7 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x2d3c1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x26a98 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/03/03696e0658b26ce2ed516312d26adbf88abfcc3eab0abe0b39a79e0462e8f45c-d:101:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          10: 0x22522 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11:  0x7ec - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x223f8 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### image/color wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestSqDiff
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo1503808192/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2299 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x253b - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x5ca2f - (Go interface method)
           3: 0x5d807 - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48              - image/color.TestSqDiff
                           at /usr/local/go/src/image/color/color_test.go:44:28
           4: 0x1cff9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x1ccef - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x1cff9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x1705d - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/4d/4dadc14d436b349970b7a4071a99fc9f8aefe01c3235a3bddedb0326061282e8-d:73:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x12db7 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x55b - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x12c8d - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### image/draw wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/9
=== RUN   TestSqDiff
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo2008385991/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x3f40 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x41e2 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x7c205 - (Go interface method)
           3: 0x8e61d - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48              - image/draw.TestSqDiff
                           at /usr/local/go/src/image/draw/draw_test.go:807:28
           4: 0x365c2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x362b8 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x365c2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x30bc7 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/2a/2a9b332c08e48a6461f4d90bdca395e8895837da22f04105e348adb36252d90f-d:105:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x2a701 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x7f6 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x2a5d7 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### image/gif wasip1/wasm

[🔝](#summary) build error

```text
FAIL	image/gif	0.000s
# image/gif
/usr/local/go/src/image/gif/reader_test.go:421:26: s1.HeapAlloc undefined (type *runtime.MemStats has no field or method HeapAlloc)
/usr/local/go/src/image/gif/reader_test.go:421:41: s0.HeapAlloc undefined (type *runtime.MemStats has no field or method HeapAlloc)
```


### image/jpeg wasip1/wasm

[🔝](#summary) build error

```text
FAIL	image/jpeg	0.000s
# image/jpeg
/usr/local/go/src/image/jpeg/reader_test.go:253:9: undefined: debug.SetTraceback
```


### image/png wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/13
=== RUN   TestDimensionOverflow

```


### index/suffixarray wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 4/11
=== RUN   TestNew64/ababab...
    --- PASS: TestNew64/ababab... (9.73s)
=== RUN   TestNew64/forcealloc
    --- PASS: TestNew64/forcealloc (1.24s)
=== RUN   TestNew64/exhaustive2
=== RUN   TestNew64
=== RUN   TestNew64/ababab...
    --- PASS: TestNew64/ababab... (9.73s)
=== RUN   TestNew64/forcealloc
    --- PASS: TestNew64/forcealloc (1.24s)
=== RUN   TestNew64/exhaustive2

```


### io wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 4/60
=== RUN   TestMultiWriter_WriteStringSingleAlloc
    num allocations = 0; want 1
--- FAIL: TestMultiWriter_WriteStringSingleAlloc (0.00s)
=== RUN   TestMultiWriterSingleChainFlatten
    multiWriter did not flatten chained multiWriters: expected writeDepth 12, got 4
--- FAIL: TestMultiWriterSingleChainFlatten (0.00s)
=== RUN   TestMultiReaderFlatten
    multiReader did not flatten chained multiReaders: expected readDepth 3, got 1
--- FAIL: TestMultiReaderFlatten (0.00s)
=== RUN   TestMultiReaderFreesExhaustedReaders
    timeout waiting for collection of buf1
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestMultiReaderFreesExhaustedReaders (5.02s)

```


### io/fs wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/6
=== RUN   TestCVE202230630
Error: failed to run main module `/tmp/tinygo4187190271/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x1452f - path.Match
                           at /usr/local/go/src/path/match.go:42:35
           1: 0x39ba1 - (Go interface assert)
                           at /usr/local/go/src/io/fs/glob.go:49:25              - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:44:22
           2: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           3: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           4: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           5: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           6: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           7: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           8: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           9: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          10: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          11: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          12: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          13: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          14: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          15: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          16: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          17: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          18: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          19: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          20: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          21: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          22: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          23: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          24: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          25: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          26: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          27: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          28: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          29: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          30: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          31: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          32: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          33: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          34: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          35: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          36: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          37: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          38: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          39: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          40: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          41: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          42: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          43: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          44: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          45: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          46: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          47: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          48: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          49: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          50: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          51: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          52: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          53: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          54: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          55: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          56: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          57: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          58: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          59: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          60: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          61: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          62: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          63: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          64: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          65: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          66: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          67: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          68: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          69: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          70: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          71: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          72: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          73: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          74: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          75: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          76: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          77: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          78: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          79: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          80: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          81: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          82: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          83: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          84: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          85: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          86: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          87: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          88: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          89: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          90: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          91: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          92: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          93: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          94: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          95: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          96: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          97: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          98: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          99: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         100: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         101: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         102: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         103: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         104: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         105: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         106: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         107: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         108: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         109: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         110: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         111: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         112: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         113: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         114: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         115: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         116: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         117: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         118: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         119: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         120: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         121: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         122: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         123: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         124: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         125: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         126: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         127: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         128: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         129: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         130: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         131: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         132: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         133: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         134: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         135: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         136: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         137: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         138: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         139: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         140: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         141: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         142: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         143: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         144: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         145: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         146: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         147: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         148: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         149: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         150: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         151: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         152: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         153: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         154: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         155: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         156: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         157: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         158: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         159: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         160: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         161: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         162: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         163: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         164: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         165: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         166: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         167: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         168: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         169: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         170: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         171: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         172: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         173: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         174: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         175: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         176: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         177: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         178: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         179: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         180: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         181: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         182: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         183: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         184: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         185: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         186: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         187: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         188: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         189: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         190: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         191: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         192: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         193: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         194: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         195: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         196: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         197: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         198: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         199: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         200: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         201: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         202: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         203: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         204: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         205: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         206: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         207: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         208: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         209: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         210: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         211: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         212: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         213: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         214: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         215: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         216: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         217: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         218: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         219: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         220: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         221: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         222: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         223: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         224: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         225: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         226: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         227: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         228: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         229: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         230: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         231: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         232: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         233: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         234: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         235: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         236: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         237: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         238: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         239: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         240: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         241: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         242: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         243: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         244: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         245: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         246: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         247: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         248: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         249: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         250: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         251: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         252: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         253: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         254: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         255: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         256: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         257: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         258: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         259: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         260: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         261: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         262: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         263: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         264: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         265: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         266: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         267: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         268: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         269: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         270: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         271: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         272: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         273: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         274: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         275: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         276: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         277: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         278: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         279: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         280: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         281: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         282: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         283: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         284: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         285: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         286: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         287: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         288: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         289: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         290: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         291: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         292: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         293: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         294: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         295: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         296: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         297: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         298: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         299: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         300: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         301: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         302: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         303: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         304: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         305: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         306: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         307: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         308: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         309: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         310: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         311: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         312: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         313: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         314: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         315: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         316: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         317: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         318: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         319: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         320: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         321: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         322: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         323: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         324: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         325: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         326: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         327: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         328: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         329: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         330: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         331: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         332: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         333: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         334: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         335: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         336: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         337: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         338: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         339: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         340: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         341: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         342: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         343: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         344: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         345: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         346: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         347: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         348: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         349: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         350: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         351: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         352: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         353: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         354: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         355: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         356: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         357: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         358: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         359: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         360: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         361: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         362: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         363: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         364: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         365: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         366: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         367: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         368: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         369: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         370: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         371: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         372: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         373: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         374: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         375: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         376: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         377: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         378: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         379: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         380: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         381: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         382: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         383: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         384: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         385: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         386: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         387: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         388: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         389: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         390: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         391: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         392: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         393: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         394: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         395: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         396: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         397: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         398: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         399: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         400: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         401: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         402: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         403: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         404: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         405: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         406: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         407: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         408: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         409: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         410: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         411: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         412: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         413: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         414: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         415: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         416: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         417: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         418: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         419: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         420: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         421: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         422: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         423: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         424: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         425: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         426: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         427: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         428: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         429: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         430: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         431: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         432: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         433: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         434: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         435: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         436: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         437: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         438: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         439: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         440: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         441: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         442: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         443: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         444: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         445: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         446: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         447: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         448: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         449: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         450: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         451: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         452: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         453: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         454: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         455: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         456: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         457: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         458: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         459: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         460: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         461: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         462: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         463: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         464: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         465: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         466: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         467: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         468: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         469: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         470: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         471: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         472: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         473: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         474: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         475: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         476: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         477: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         478: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         479: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         480: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         481: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         482: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         483: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         484: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         485: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         486: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         487: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         488: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         489: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         490: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         491: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         492: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         493: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         494: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         495: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         496: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         497: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         498: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         499: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         500: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         501: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         502: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         503: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         504: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         505: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         506: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         507: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         508: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         509: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         510: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         511: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         512: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         513: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         514: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         515: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         516: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         517: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         518: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         519: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         520: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         521: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         522: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         523: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         524: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         525: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         526: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         527: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         528: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         529: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         530: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         531: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         532: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         533: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         534: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         535: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         536: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         537: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         538: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         539: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         540: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         541: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         542: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         543: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         544: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         545: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         546: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         547: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         548: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         549: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         550: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         551: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         552: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         553: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         554: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         555: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         556: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         557: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         558: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         559: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         560: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         561: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         562: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         563: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         564: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         565: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         566: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         567: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         568: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         569: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         570: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         571: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         572: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         573: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         574: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         575: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         576: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         577: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         578: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         579: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         580: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         581: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         582: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         583: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         584: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         585: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         586: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         587: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         588: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         589: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         590: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         591: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         592: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         593: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         594: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         595: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         596: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         597: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         598: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         599: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         600: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         601: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         602: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         603: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         604: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         605: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         606: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         607: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         608: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         609: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         610: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         611: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         612: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         613: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         614: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         615: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         616: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         617: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         618: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         619: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         620: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         621: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         622: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         623: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         624: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         625: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         626: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         627: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         628: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         629: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         630: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         631: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         632: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         633: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         634: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         635: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         636: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         637: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         638: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         639: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         640: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         641: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         642: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         643: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         644: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         645: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         646: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         647: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         648: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         649: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         650: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         651: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         652: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         653: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         654: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         655: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         656: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         657: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         658: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         659: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         660: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         661: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         662: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         663: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         664: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         665: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         666: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         667: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         668: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         669: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         670: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         671: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         672: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         673: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         674: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         675: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         676: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         677: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         678: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         679: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         680: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         681: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         682: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         683: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         684: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         685: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         686: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         687: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         688: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         689: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         690: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         691: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         692: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         693: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         694: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         695: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         696: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         697: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         698: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         699: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         700: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         701: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         702: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         703: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         704: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         705: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         706: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         707: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         708: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         709: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         710: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         711: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         712: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         713: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         714: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         715: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         716: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         717: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         718: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         719: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         720: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         721: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         722: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         723: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         724: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         725: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         726: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         727: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         728: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         729: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         730: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         731: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         732: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         733: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         734: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         735: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         736: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         737: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         738: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         739: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         740: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         741: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         742: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         743: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         744: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         745: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         746: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         747: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         748: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         749: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         750: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         751: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         752: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         753: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         754: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         755: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         756: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         757: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         758: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         759: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         760: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         761: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         762: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         763: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         764: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         765: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         766: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         767: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         768: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         769: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         770: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         771: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         772: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         773: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         774: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         775: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         776: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         777: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         778: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         779: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         780: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         781: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         782: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         783: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         784: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         785: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         786: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         787: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         788: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         789: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         790: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         791: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         792: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         793: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         794: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         795: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         796: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         797: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         798: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         799: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         800: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         801: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         802: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         803: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         804: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         805: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         806: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         807: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         808: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         809: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         810: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         811: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         812: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         813: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         814: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         815: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         816: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         817: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         818: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         819: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         820: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         821: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         822: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         823: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         824: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         825: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         826: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         827: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         828: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         829: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         830: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         831: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         832: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         833: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         834: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         835: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         836: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         837: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         838: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         839: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         840: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         841: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         842: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         843: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         844: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         845: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         846: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         847: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         848: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         849: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         850: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         851: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         852: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         853: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         854: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         855: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         856: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         857: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         858: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         859: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         860: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         861: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         862: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         863: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         864: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         865: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         866: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         867: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         868: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         869: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         870: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         871: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         872: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         873: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         874: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         875: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         876: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         877: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         878: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         879: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         880: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         881: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         882: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         883: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         884: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         885: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         886: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         887: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         888: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         889: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         890: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         891: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         892: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         893: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         894: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         895: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         896: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         897: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         898: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         899: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         900: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         901: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         902: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         903: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         904: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         905: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         906: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         907: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         908: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         909: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         910: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         911: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         912: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         913: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         914: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         915: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         916: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         917: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         918: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         919: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         920: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         921: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         922: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         923: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         924: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         925: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         926: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         927: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         928: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         929: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         930: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         931: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         932: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         933: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         934: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         935: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         936: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         937: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         938: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         939: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         940: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         941: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         942: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         943: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         944: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         945: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         946: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         947: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         948: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         949: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         950: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         951: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         952: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         953: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         954: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         955: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         956: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         957: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         958: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         959: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         960: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         961: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         962: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         963: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         964: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         965: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         966: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         967: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         968: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         969: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         970: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         971: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         972: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         973: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         974: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         975: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         976: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         977: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         978: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         979: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         980: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         981: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         982: 0x39cfa - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         983: 0x398ae - io/fs.Glob
                           at /usr/local/go/src/io/fs/glob.go:34:22
         984: 0x7e581 - <unknown>!io/fs_test.TestCVE202230630
         985: 0x2635c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         986: 0x632fe - (*testing.T).Run
         987: 0x26064 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
         988: 0x2635c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         989: 0x21614 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/71/7165db203a5b207e8aad64f4dbbe3d50948c42aa01ac732215ca4ffa57aeb2ab-d:79:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
         990: 0x1ce1e - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
         991:  0x885 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
         992: 0x1ccf3 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: memory fault at wasm address 0x100000028 in linear memory of size 0x60000
    3: wasm trap: out of bounds memory access

```


### io/ioutil wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/28
=== RUN   TestReadOnlyWriteFile
    file permissions are not supported by wasip1
    SkipNow is incomplete, requires runtime.Goexit()
    Expected an error when writing to read-only file /tmp/TestReadOnlyWriteFile52856003/blurp.txt
    FailNow is incomplete, requires runtime.Goexit()
    want shmorp, got florp
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestReadOnlyWriteFile (0.00s)

```


### log wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/9
=== RUN   TestAll
    log output should match "^.*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^.*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/25 13:28:43.605080 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/25 13:28:43.605286 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/25 13:28:43.606645 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/25 13:28:43.606867 ???:0: hello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/25 13:28:43.607090 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/25 13:28:43.607293 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/25 13:28:43.607498 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/25 13:28:43.607720 ???:0: XXXhello 23 world"
--- FAIL: TestAll (0.00s)

```


### log/slog wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1619365178/main /tmp/tinygo1619365178/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1619365178/main --output /tmp/tinygo1619365178/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=. --dir=/tmp::/tmp /tmp/tinygo1619365178/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=.. --dir=../.. --dir=../../.. --dir=. --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --dir=. --dir=/tmp::/tmp /tmp/tinygo1619365178/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo1619365178/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x35a2 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x23e3b - testing/slogtest.withSource
                           at /usr/local/go/src/testing/slogtest/slogtest.go:362:8
           2: 0x197b8 - <unknown>!runtime.initAll
           3: 0x15a89 - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:24:10
           4: 0xdc80 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           5:  0x7bc - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x1598a - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11
           7: 0x15856 - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11
           8: 0x157d3 - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	log/slog	0.619s
```


### maps wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo66534415/main /tmp/tinygo66534415/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo66534415/main.o: undefined symbol: maps.clone
wasm-ld: error: /tmp/tinygo66534415/main.o: undefined symbol: maps.clone
failed to run tool: wasm-ld
FAIL	maps	0.000s
error: failed to link /tmp/tinygo66534415/main: exit status 1
```


### math/bits wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/12
=== RUN   TestAdd64OverflowPanic
panic: overflow
Error: failed to run main module `/tmp/tinygo3721914957/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x18bc - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x624ba - math/bits_test.TestAdd64OverflowPanic$1
                           at /usr/local/go/src/math/bits/bits_test.go:816:10
           2: 0x625d4 - math/bits_test.TestAdd64OverflowPanic$7
                           at /usr/local/go/src/math/bits/bits_test.go:860:28
           3: 0x626ff - math/bits_test.TestAdd64OverflowPanic$6
                           at /usr/local/go/src/math/bits/bits_test.go:856:5
           4: 0x61fa8 - math/bits_test.TestAdd64OverflowPanic
                           at /usr/local/go/src/math/bits/bits_test.go:860:14
           5: 0x1cb12 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x1c808 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x1cb12 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x16c0a - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/19/196c6203a629495b14a7882fc6691602ad410973a090372256d92752f4e1a352-d:257:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x12a0f - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x67c - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x128e5 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### math/rand wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 8/43
=== RUN   TestDefaultRace
--- FAIL: TestDefaultRace (0.00s)
=== RUN   TestDefaultRace/0
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/1
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestDefaultRace/2
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestDefaultRace/3
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestDefaultRace/4
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestDefaultRace/5
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/5 (0.00s)
=== RUN   TestDefaultRace/5
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/5 (0.00s)
=== RUN   TestDefaultRace/0
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/2
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestDefaultRace/3
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestRegress
panic: unimplemented: (reflect.Type).Method()
Error: failed to run main module `/tmp/tinygo3102300286/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x5a78 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x599f - (reflect.rawType).Method
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1083:7
           2: 0x5fe4 - <unknown>!(*reflect.rawType).Method
           3: 0x824eb - (Go interface method)              - math/rand_test.TestRegress
                           at /usr/local/go/src/math/rand/regress_test.go:38:24
           4: 0x199a6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x57a92 - (*testing.T).Run
           6: 0x196aa - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x199a6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x129b6 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/ae/ae654a5c229aee13fe663229b289acbffac68fe0f560d57f9b7e7251be6a84c2-d:117:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0xd0ee - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x900 - <unknown>!tinygo_rewind
          11: 0xcef3 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestDefaultRace/1
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestDefaultRace/4
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/4 (0.00s)

```


### math/rand/v2 wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3335794202/main /tmp/tinygo3335794202/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo3335794202/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: /tmp/tinygo3335794202/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: /tmp/tinygo3335794202/main.o: undefined symbol: internal/chacha8rand.block
failed to run tool: wasm-ld
FAIL	math/rand/v2	0.000s
error: failed to link /tmp/tinygo3335794202/main: exit status 1
```


### mime wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/13
=== RUN   TestTypeByExtension
panic: bufio.Scanner: Read returned impossible count
Error: failed to run main module `/tmp/tinygo948339510/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x4165 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x7270d - mime.loadMimeGlobsFile
                           at /usr/local/go/src/mime/type_unix.go:74:8              - mime.initMimeUnix
                           at /usr/local/go/src/mime/type_unix.go:107:30              - mime.initMime
                           at /usr/local/go/src/mime/type.go:88:13
           2: 0xeb9a - (*sync.Once).Do
                           at /workspaces/dc-wasm-go/tinygo/src/sync/once.go:15:3
           3: 0x728f9 - mime.TypeByExtension
                           at /usr/local/go/src/mime/type.go:112:9
           4: 0x7d72d - mime.TestTypeByExtension
                           at /usr/local/go/src/mime/type_test.go:47:25
           5: 0x30cf4 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x309e6 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x30cf4 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x2bfde - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/09/099193785c39b02e3b11ad0bd26f57607faf46ef21bd807d79f3189fb39e2fe4-d:103:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x2701a - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x730 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x26ef0 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### mime/multipart wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 4/11
=== RUN   TestReadForm_MetadataTooLarge
=== RUN   TestReadForm_MetadataTooLarge/large_name
    --- PASS: TestReadForm_MetadataTooLarge/large_name (0.08s)
=== RUN   TestReadForm_MetadataTooLarge/large_MIME_header
    --- PASS: TestReadForm_MetadataTooLarge/large_MIME_header (0.05s)
=== RUN   TestReadForm_MetadataTooLarge/many_parts
=== RUN   TestReadForm_MetadataTooLarge/large_name
    --- PASS: TestReadForm_MetadataTooLarge/large_name (0.08s)
=== RUN   TestReadForm_MetadataTooLarge/large_MIME_header
    --- PASS: TestReadForm_MetadataTooLarge/large_MIME_header (0.05s)
=== RUN   TestReadForm_MetadataTooLarge/many_parts

```


### net/netip wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/196
=== RUN   TestInlining
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    go build: exec: no command, 
    FailNow is incomplete, requires runtime.Goexit()
    "(*uint128).halves" is no longer inlinable
    "Addr.BitLen" is no longer inlinable
    "Addr.hasZone" is no longer inlinable
    "Addr.Is4" is no longer inlinable
    "Addr.Is4In6" is no longer inlinable
    "Addr.Is6" is no longer inlinable
    "Addr.IsLoopback" is no longer inlinable
    "Addr.IsMulticast" is no longer inlinable
    "Addr.IsInterfaceLocalMulticast" is no longer inlinable
    "Addr.IsValid" is no longer inlinable
    "Addr.IsUnspecified" is no longer inlinable
    "Addr.Less" is no longer inlinable
    "Addr.Unmap" is no longer inlinable
    "Addr.Zone" is no longer inlinable
    "Addr.v4" is no longer inlinable
    "Addr.v6" is no longer inlinable
    "Addr.v6u16" is no longer inlinable
    "Addr.withoutZone" is no longer inlinable
    "AddrPortFrom" is no longer inlinable
    "AddrPort.Addr" is no longer inlinable
    "AddrPort.Port" is no longer inlinable
    "AddrPort.IsValid" is no longer inlinable
    "Prefix.IsSingleIP" is no longer inlinable
    "Prefix.Masked" is no longer inlinable
    "Prefix.IsValid" is no longer inlinable
    "PrefixFrom" is no longer inlinable
    "Prefix.Addr" is no longer inlinable
    "Prefix.Bits" is no longer inlinable
    "AddrFrom4" is no longer inlinable
    "IPv6LinkLocalAllNodes" is no longer inlinable
    "IPv6Unspecified" is no longer inlinable
    "MustParseAddr" is no longer inlinable
    "MustParseAddrPort" is no longer inlinable
    "MustParsePrefix" is no longer inlinable
    "appendDecimal" is no longer inlinable
    "appendHex" is no longer inlinable
    "uint128.addOne" is no longer inlinable
    "uint128.and" is no longer inlinable
    "uint128.bitsClearedFrom" is no longer inlinable
    "uint128.bitsSetFrom" is no longer inlinable
    "uint128.isZero" is no longer inlinable
    "uint128.not" is no longer inlinable
    "uint128.or" is no longer inlinable
    "uint128.subOne" is no longer inlinable
    "uint128.xor" is no longer inlinable
--- FAIL: TestInlining (0.00s)
=== RUN   TestAs4
panic: As4 called on IP zero value
Error: failed to run main module `/tmp/tinygo3552326224/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x4bb2 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xac179 - (net/netip.Addr).As4
                           at /usr/local/go/src/net/netip/netip.go:685:8
           2: 0xd3d3c - <unknown>!net/netip_test.TestAs4
           3: 0x212e8 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x68349 - (*testing.T).Run
           5: 0x20fec - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x212e8 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x1b4c8 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/4e/4e0a8ff6a750f6f7bce278f9800eb6661caea88e4e37bb5fe37ebd8b4a66f130-d:181:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x15ab7 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0xb94 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x15954 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### net/rpc/jsonrpc wasip1/wasm

[🔝](#summary) build error

```text
FAIL	net/rpc/jsonrpc	0.000s
# net/rpc
/usr/local/go/src/net/rpc/server.go:290:14: method.IsExported undefined (type reflect.Method has no field or method IsExported)
```


### net/smtp wasip1/wasm

[🔝](#summary) build error

```text
FAIL	net/smtp	0.000s
# net/smtp
/usr/local/go/src/net/smtp/smtp.go:72:24: undefined: tls.Conn
/usr/local/go/src/net/smtp/smtp.go:172:25: undefined: tls.Conn
/usr/local/go/src/net/smtp/smtp_test.go:591:19: undefined: tls.X509KeyPair
/usr/local/go/src/net/smtp/smtp_test.go:598:17: undefined: tls.Listen
/usr/local/go/src/net/smtp/smtp_test.go:600:17: undefined: tls.Listen
/usr/local/go/src/net/smtp/smtp_test.go:1009:9: cs.Version undefined (type tls.ConnectionState has no field or method Version)
/usr/local/go/src/net/smtp/smtp_test.go:1009:29: cs.HandshakeComplete undefined (type tls.ConnectionState has no field or method HandshakeComplete)
/usr/local/go/src/net/smtp/smtp_test.go:1049:24: undefined: tls.X509KeyPair
/usr/local/go/src/net/smtp/smtp_test.go:1054:12: undefined: tls.Server
```


### net/url wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1443389379/main /tmp/tinygo1443389379/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1443389379/main --output /tmp/tinygo1443389379/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=. --dir=/tmp::/tmp /tmp/tinygo1443389379/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=.. --dir=../.. --dir=../../.. --dir=. --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --dir=. --dir=/tmp::/tmp /tmp/tinygo1443389379/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
Error: failed to run main module `/tmp/tinygo1443389379/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2963 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x3b925 - encoding/gob.checkId
                           at /usr/local/go/src/encoding/gob/type.go:633:8
           2: 0x26cba - encoding/gob.init#2
                           at /usr/local/go/src/encoding/gob/type.go:287:9              - encoding/gob.init
                           at /usr/local/go/src/encoding/gob              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:24:10
           3: 0x231ee - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           4:  0x95f - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           5: 0x230c3 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	net/url	0.576s
```


### path/filepath wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestCVE202230632
Error: failed to run main module `/tmp/tinygo776314268/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x13501 - (*sync.Pool).Get
                           at /workspaces/dc-wasm-go/tinygo/src/sync/pool.go:19:14
           1: 0x51cbf - fmt.newPrinter
                           at /usr/local/go/src/fmt/print.go:152:17
           2: 0x52284 - fmt.Sprintf
                           at /usr/local/go/src/fmt/print.go:237:6
           3: 0x57f2a - (*testing.common).Fatalf
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:263:19
           4: 0x79202 - path/filepath_test.TestCVE202230632
                           at /usr/local/go/src/path/filepath/match_test.go:164:11
           5: 0x27c1b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x597da - (*testing.T).Run
           7: 0x27923 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x27c1b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x2310a - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/69/69d7319c84f52f0989962bd60ff86333367c039c083caa727b0a26564f2ccf0f-d:147:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          10: 0x1d846 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11:  0x972 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x1d71b - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: undefined element: out of bounds table access

```


### regexp wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestBadCompile
panic: expression too large
Error: failed to run main module `/tmp/tinygo2654458120/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x5c20 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x2c55c - (*regexp/syntax.parser).checkLimits
                           at /usr/local/go/src/regexp/syntax/parse.go:163:8
           2: 0x2bd84 - (*regexp/syntax.parser).push
           3: 0x3567a - regexp/syntax.parse
                           at /usr/local/go/src/regexp/syntax/parse.go:1063:9              - regexp/syntax.Parse
                           at /usr/local/go/src/regexp/syntax/parse.go:889:14
           4: 0x430b2 - regexp.compile
                           at /usr/local/go/src/regexp/regexp.go:172:25
           5: 0x76935 - regexp.Compile
                           at /usr/local/go/src/regexp/regexp.go:135:16
           6: 0x7d2b2 - regexp.compileTest
                           at /usr/local/go/src/regexp/all_test.go:56:20
           7: 0x7da9e - regexp.TestBadCompile
                           at /usr/local/go/src/regexp/all_test.go:76:14
           8: 0x46c63 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x68961 - (*testing.T).Run
          10: 0x4696b - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          11: 0x46c63 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x41fb4 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/af/af4559cfe4edf69b71dc29ce1a2355bc32cd22553b56a2f648bb367548ede916-d:251:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          13: 0x3ce13 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          14:  0x911 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          15: 0x3cce8 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### regexp/syntax wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/8
=== RUN   TestParseInvalidRegexps
panic: expression nests too deeply
Error: failed to run main module `/tmp/tinygo1398461676/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2285 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x4f688 - (*regexp/syntax.parser).checkHeight
                           at /usr/local/go/src/regexp/syntax/parse.go:270:8
           2: 0x4e11a - (*regexp/syntax.parser).checkLimits
                           at /usr/local/go/src/regexp/syntax/parse.go:166:15
           3: 0x4d900 - (*regexp/syntax.parser).push
           4: 0x5667f - regexp/syntax.parse
                           at /usr/local/go/src/regexp/syntax/parse.go:1441:7              - regexp/syntax.Parse
                           at /usr/local/go/src/regexp/syntax/parse.go:889:14
           5: 0x5d93c - regexp/syntax.TestParseInvalidRegexps
                           at /usr/local/go/src/regexp/syntax/parse_test.go:527:22
           6: 0x23fed - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x23ce3 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x23fed - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x1e999 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/c8/c83f19d2969c72a75eafbf9b6f8374b11bb5a0612b7c179397ec896c59a28f7d-d:73:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          10: 0x19ba0 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11:  0x53d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x19a76 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### slices wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1041741410/main /tmp/tinygo1041741410/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1041741410/main --output /tmp/tinygo1041741410/main
FAIL	slices	0.000s
error: wasm-opt failed: signal: killed
```


### strconv wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/29
=== RUN   TestFormatComplexInvalidBitSize
panic: invalid bitSize
Error: failed to run main module `/tmp/tinygo2394015322/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x5010 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x49724 - strconv.FormatComplex
                           at /usr/local/go/src/strconv/ctoa.go:16:8
           2: 0x927bd - strconv_test.TestFormatComplexInvalidBitSize
                           at /usr/local/go/src/strconv/ctoa_test.go:52:19
           3: 0x30424 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x63d1a - (*testing.T).Run
           5: 0x3012c - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x30424 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x1c8a1 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/8c/8c2a46d03666ec6e1d366592d98f60839dcad46c12d8776fe157acce72d12691-d:279:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x1865a - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x8ee - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1852f - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### strings wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/4
=== RUN   TestBuilderGrow
    growLen=100: got 0 allocs during Write; want 1
    growLen=1000: got 0 allocs during Write; want 1
    growLen=10000: got 0 allocs during Write; want 1
    growLen=100000: got 0 allocs during Write; want 1
panic: strings.Builder.Grow: negative count
Error: failed to run main module `/tmp/tinygo3200841634/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x475f - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x35619 - (*strings.Builder).Grow
                           at /usr/local/go/src/strings/builder.go:80:8
           2: 0x7af00 - strings_test.TestBuilderGrow
                           at /usr/local/go/src/strings/builder_test.go:120:8
           3: 0x27551 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x60999 - (*testing.T).Run
           5: 0x27259 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x27551 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x21226 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/7e/7e7530b4b41ba554fcd61a15fb56262397c798b6647dbef18c7e075b40e7bebf-d:415:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x1b5cb - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x958 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1b4a8 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### sync/atomic wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 6/68
=== RUN   TestStoreLoadSeqCst32
    Skipping test on 1 processor machine
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestStoreLoadSeqCst32 (0.00s)
=== RUN   TestStoreLoadSeqCst64
    Skipping test on 1 processor machine
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestStoreLoadSeqCst64 (0.00s)
=== RUN   TestStoreLoadRelAcq32
    Skipping test on 1 processor machine
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestStoreLoadRelAcq32 (0.00s)
=== RUN   TestStoreLoadRelAcq64
    Skipping test on 1 processor machine
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestStoreLoadRelAcq64 (0.01s)
=== RUN   TestUnaligned64
    LoadUint64 did not panic
    LoadUint64Method did not panic
    StoreUint64 did not panic
    StoreUint64Method did not panic
    CompareAndSwapUint64 did not panic
    CompareAndSwapUint64Method did not panic
    AddUint64 did not panic
    AddUint64Method did not panic
--- FAIL: TestUnaligned64 (0.85s)
=== RUN   TestNilDeref
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo3749151888/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x13010 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x19b0 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x75e9a - (*sync/atomic.Int32).CompareAndSwap
                           at /usr/local/go/src/sync/atomic/type.go:84:32              - sync/atomic_test.TestNilDeref$2
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2461:40
           3: 0x752f7 - sync/atomic_test.TestNilDeref$59
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2525:5              - sync/atomic_test.TestNilDeref
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2526:4
           4: 0x1f6b9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x491a3 - (*testing.T).Run
           6: 0x1f3c1 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x1f6b9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x1954f - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/f9/f9c374e6b50bb5564ff0d98214950a7423dae89fb0765aa081b4edd02093723a-d:201:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x14982 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x81d - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          11: 0x14858 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### testing/fstest wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/5
=== RUN   TestSymlink
    skipping test: cannot make symlinks on wasip1/wasm: symlinks unsupported: symlink /tmp/5422263/testfile.txt /tmp/5422263/testlink: errno 63
    SkipNow is incomplete, requires runtime.Goexit()
    symlink /tmp/TestSymlink13508791/000/hello /tmp/TestSymlink13508791/000/hello.link: errno 63
    FailNow is incomplete, requires runtime.Goexit()
    TestFS found errors:
        expected but not found: hello.link
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestSymlink (0.04s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestSymlink13508791: errno 52

```


### testing/quick wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestCheckEqual
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo4054141156/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2332 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x25d4 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x5c906 - (Go interface method)
           3: 0x5cb02 - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48
           4: 0x5d10d - testing/quick.TestCheckEqual
                           at /usr/local/go/src/testing/quick/quick_test.go:163:34
           5: 0x1df11 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x1dc07 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x1df11 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x180d0 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/e3/e3de31e3b828492407d361e3b0cb64cd4f3e89c6ed71ece8ac334ab349c804a0-d:61:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x13e32 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x5f1 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x13d08 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### testing/slogtest wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2440387906/main /tmp/tinygo2440387906/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo2440387906/main --output /tmp/tinygo2440387906/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=. --dir=/tmp::/tmp /tmp/tinygo2440387906/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=.. --dir=../.. --dir=../../.. --dir=. --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --dir=. --dir=/tmp::/tmp /tmp/tinygo2440387906/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo2440387906/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2121 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x16ddf - testing/slogtest.withSource
                           at /usr/local/go/src/testing/slogtest/slogtest.go:362:8
           2: 0xcc0a - <unknown>!runtime.initAll
           3: 0xc331 - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:24:10
           4: 0xa26e - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           5:  0x431 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0xc233 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11
           7: 0xc101 - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11
           8: 0xc081 - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	testing/slogtest	4.261s
```


### text/tabwriter wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestPanicDuringFlush
panic: cannot write
Error: failed to run main module `/tmp/tinygo666994590/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x24bf - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xbfb9 - (text/tabwriter_test.panicWriter).Write
                           at /usr/local/go/src/text/tabwriter/tabwriter_test.go:622:7
           2: 0xa8f5 - <unknown>!interface:{Write:func:{slice:basic:uint8}{basic:int,named:error}}.Write$invoke
           3: 0xd886 - (*text/tabwriter.Writer).write0
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:251:26
           4: 0xd463 - (*text/tabwriter.Writer).writeLines
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:318:14
           5: 0xc95d - (*text/tabwriter.Writer).format
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:405:21
           6: 0xc2d6 - (*text/tabwriter.Writer).flushNoDefers
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:513:10
           7: 0xc105 - (*text/tabwriter.Writer).flush
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:495:17              - (*text/tabwriter.Writer).Flush
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:488:16
           8: 0x5f981 - text/tabwriter_test.TestPanicDuringFlush
                           at /usr/local/go/src/text/tabwriter/tabwriter_test.go:643:9
           9: 0x1f4aa - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x1f1a0 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          11: 0x1f4aa - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x19437 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/82/820448a5a8b28b6568ca535f8febd255e560bfb39fb86b392c543db67f75b4a5-d:67:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          13: 0x1523c - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          14:  0x534 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          15: 0x15112 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### text/template wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestExecute
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo2979811753/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x66ae - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x722c - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0xa1b2d - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0xa158a - (*text/template.Template).Funcs
                           at /usr/local/go/src/text/template/template.go:181:15
           4: 0xb043c - text/template.testExecute
                           at /usr/local/go/src/text/template/exec_test.go:796:23
           5: 0xb0bcd - text/template.TestExecute
                           at /usr/local/go/src/text/template/exec_test.go:831:13
           6: 0x32f4f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x83a10 - (*testing.T).Run
           8: 0x32c53 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x32f4f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x24448 - <unknown>!runtime.run$1
          11: 0x21550 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12:  0xabd - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x213ed - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### text/template/parse wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/6
=== RUN   TestNumberParse
panic: (97092:0x00048940)
Error: failed to run main module `/tmp/tinygo2929305876/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2b38 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x48e9c - (*fmt.ss).error
                           at /usr/local/go/src/fmt/scan.go:240:7
           2: 0x4a4b5 - (*fmt.ss).accept
                           at /usr/local/go/src/fmt/scan.go:750:10              - (*fmt.ss).complexTokens
                           at /usr/local/go/src/fmt/scan.go:755:14              - (*fmt.ss).scanComplex
                           at /usr/local/go/src/fmt/scan.go:816:33
           3: 0x4c35b - <unknown>!fmt.Sscan
           4: 0x819a0 - text/template/parse.TestNumberParse
                           at /usr/local/go/src/text/template/parse/parse_test.go:99:23
           5: 0x1f735 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x53ead - (*testing.T).Run
           7: 0x1f43d - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x1f735 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x1a0ee - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/97/97aff8905c92f3c2c83a3d8f59473c1d67c5a331a12ffae42fb9894564f7a41a-d:83:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          10: 0x15135 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11:  0x65f - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x1500b - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### time wasip1/wasm

[🔝](#summary) build error

```text
FAIL	time	0.000s
# time_test
/usr/local/go/src/time/sleep_test.go:714:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:715:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:716:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:787:8: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:788:8: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:789:8: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
```


## wasip2/wasm



### archive/tar wasip2/wasm

[🔝](#summary) build error

```text
FAIL	archive/tar	0.000s
# archive/tar
/usr/local/go/src/archive/tar/stat_unix.go:39:27: undefined: user.LookupId
/usr/local/go/src/archive/tar/stat_unix.go:45:27: undefined: user.LookupGroupId
```


### archive/zip wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 5/83
=== RUN   TestZip64DirectoryOffset/uint32max-2_NoZip64
=== RUN   TestFSModTime
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/archive/zip/testdata/subdir.zip--- PASS: TestFSModTime (0.00s)
=== RUN   TestOpenReaderInsecurePath
/tmp/TestOpenReaderInsecurePath224147895/tmp/TestOpenReaderInsecurePath224147895/000/tmp/TestOpenReaderInsecurePath224147895/000/test.zip/tmp/TestOpenReaderInsecurePath224147895/000/test.zip--- PASS: TestOpenReaderInsecurePath (0.01s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestOpenReaderInsecurePath224147895: errno 52
=== RUN   TestZip64DirectoryOffset
=== RUN   TestZip64DirectoryOffset/uint32max-2_NoZip64
=== RUN   TestWriterTime
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/archive/zip/testdata/time-go.zip--- PASS: TestWriterTime (0.02s)

```


### bufio wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/42
=== RUN   TestReadStringAllocs
    Unexpected number of allocations, got 0.000000, want 1
--- FAIL: TestReadStringAllocs (0.00s)
=== RUN   TestNegativeRead
panic: bufio: reader returned negative count from Read
Error: failed to run main module `/tmp/tinygo1255410116/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x39f6 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xdca0 - (*bufio.Reader).Read
           2: 0x8e321 - bufio_test.TestNegativeRead
                           at /usr/local/go/src/bufio/bufio_test.go:1303:8
           3: 0x303b4 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x5c78a - (*testing.T).Run
           5: 0x300b8 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x303b4 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x2a157 - <unknown>!runtime.run$1
           8: 0x1d360 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1c5e - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          10: 0x1d13d - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x1ce2a - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### bytes wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestEqualNearPageBoundary
    mmap failed errno 52
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: slice out of range
Error: failed to run main module `/tmp/tinygo2616741440/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1c775 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x2e65 - runtime.slicePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:165:16
           2: 0x83c62 - bytes_test.dangerousSlice
                           at /usr/local/go/src/bytes/boundary_test.go:32:26
           3: 0x83d21 - bytes_test.TestEqualNearPageBoundary
                           at /usr/local/go/src/bytes/boundary_test.go:45:21
           4: 0x31141 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x30e33 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x31141 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x2a804 - <unknown>!runtime.run$1
           8: 0x1c0d3 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1cc0 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1bf8e - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x1bd9a - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### compress/flate wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/24
=== RUN   TestDeflateInflateString
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt    level: 0, size:100.00%, 100018 b
    --testSync 0, 100003, 2.718281828...
    #0: write 0-50002
    #0: read 50002
    #1: write 50002-100003
    #1: read 50001
    level: 1, size:99.00%, 50146 b
    --testSync 1, 100003, 2.718281828...
    #0: write 0-50002
    #0: read 50002
    #1: write 50002-100003
    #1: read 50001
    level: 2, size:92.80%, 47291 b
    --testSync 2, 100003, 2.718281828...
    #0: write 0-50002
    #0: read 50002
    #1: write 50002-100003
    #1: read 50001
    level: 3, size:92.26%, 47193 b
    --testSync 3, 100003, 2.718281828...
    #0: write 0-50002
    #0: read 50002
    #1: write 50002-100003
    #1: read 50001
    level: 4, size:92.63%, 47178 b
    --testSync 4, 100003, 2.718281828...
    #0: write 0-50002
    #0: read 50002
    #1: write 50002-100003
    #1: read 50001
    level: 5, size:92.38%, 46919 b
    --testSync 5, 100003, 2.718281828...
    #0: write 0-50002
    #0: read 50002
    #1: write 50002-100003
    #1: read 50001
    level: 6, size:92.38%, 46919 b
    --testSync 6, 100003, 2.718281828...
    #0: write 0-50002
    #0: read 50002
    #1: write 50002-100003
    #1: read 50001
    level: 7, size:92.38%, 46919 b
    --testSync 7, 100003, 2.718281828...
    #0: write 0-50002
    #0: read 50002
    #1: write 50002-100003
    #1: read 50001
    level: 8, size:92.38%, 46919 b
    --testSync 8, 100003, 2.718281828...
    #0: write 0-50002
    #0: read 50002
    #1: write 50002-100003
    #1: read 50001
    level: 9, size:92.38%, 46919 b
    --testSync 9, 100003, 2.718281828...
    #0: write 0-50002
    #0: read 50002
    #1: write 50002-100003
    #1: read 50001
    level: -2, size:100.00%, 43683 b
    --testSync -2, 100003, 2.718281828...
    #0: write 0-50002
    #0: read 50002
    #1: write 50002-100003
    #1: read 50001
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testdata/Isaac.Newton-Opticks.txt    open ../../testdata/Isaac.Newton-Opticks.txt: errno 63
    level: 0, size:0.00%, 5 b
    level: 1, size:0.00%, 5 b
    level: 2, size:0.00%, 5 b
    level: 3, size:0.00%, 5 b
    level: 4, size:0.00%, 5 b
    level: 5, size:0.00%, 5 b
    level: 6, size:0.00%, 5 b
    level: 7, size:0.00%, 5 b
    level: 8, size:0.00%, 5 b
    level: 9, size:0.00%, 5 b
    level: -2, size:0.00%, 5 b
--- FAIL: TestDeflateInflateString (19.75s)
=== RUN   TestWriterPersistentWriteError
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testdata/Isaac.Newton-Opticks.txt    ReadFile: open ../../testdata/Isaac.Newton-Opticks.txt: errno 63
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: slice out of range
Error: failed to run main module `/tmp/tinygo2151255488/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x26569 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x5db7 - runtime.slicePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:165:16
           2: 0x98321 - compress/flate.TestWriterPersistentWriteError
           3: 0x394f8 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x6669e - (*testing.T).Run
           5: 0x391fc - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x394f8 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x33dfd - <unknown>!runtime.run$1
           8: 0x25ec7 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1ae4 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x25d82 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x25b8e - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### compress/lzw wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/17
=== RUN   TestWriter
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt--- PASS: TestWriter (1.32s)

```


### compress/zlib wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 3/6
=== RUN   TestWriterDict
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt--- PASS: TestWriterDict (2.90s)
=== RUN   TestWriterReset
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt--- PASS: TestWriterReset (2.00s)
=== RUN   TestWriterBig
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/gettysburg.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/e.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/compress/testdata/pi.txt--- PASS: TestWriterBig (3.10s)

```


### context wasip2/wasm

[🔝](#summary) build error

```text
FAIL	context	0.000s
# context_test
/usr/local/go/src/context/x_test.go:21:27: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestParentFinishesChild: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:24:26: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestChildFinishesFirst: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:27:21: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestCancelRemoves: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:30:31: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestCustomContextGoroutines: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:50:20: t.Deadline undefined (type *testing.T has no field or method Deadline)
```


### crypto wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestRC4OutOfBoundsWrite
panic: runtime error: index out of range
Error: failed to run main module `/tmp/tinygo1023274118/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x18bcf - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x2432 - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:160:16
           2: 0x6c28a - <unknown>!(*crypto/rc4.Cipher).XORKeyStream$bound
           3: 0x6c625 - crypto_test.test
                           at /usr/local/go/src/crypto/issue21104_test.go:60:5
           4: 0x6c049 - crypto_test.TestRC4OutOfBoundsWrite
                           at /usr/local/go/src/crypto/issue21104_test.go:21:6
           5: 0x2aa55 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x2a74b - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x2aa55 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x252df - <unknown>!runtime.run$1
           9: 0x1852d - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1939 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x183e0 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x18158 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/aes wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/9
=== RUN   TestShortBlocks
panic: crypto/aes: input not full block
Error: failed to run main module `/tmp/tinygo256293114/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3474 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x2630a - (*crypto/aes.aesCipher).Encrypt
                           at /usr/local/go/src/crypto/aes/cipher.go:60:8              - (Go interface method)
                           at <Go interface method>
           2: 0x7390b - crypto/aes.TestShortBlocks$2
                           at /usr/local/go/src/crypto/aes/aes_test.go:327:69
           3: 0x73b81 - crypto/aes.mustPanic
                           at /usr/local/go/src/crypto/aes/aes_test.go:344:3
           4: 0x7330e - crypto/aes.TestShortBlocks
                           at /usr/local/go/src/crypto/aes/aes_test.go:327:11
           5: 0x214a7 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x2119d - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x214a7 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x1b1a9 - <unknown>!runtime.run$1
           9: 0xe20c - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x195d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0xe0bf - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0xde39 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/cipher wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/5
=== RUN   TestCryptBlocks
panic: crypto/cipher: input not full blocks
Error: failed to run main module `/tmp/tinygo3796282666/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x34f8 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x7714a - (*crypto/cipher.cbcDecrypter).CryptBlocks
                           at /usr/local/go/src/crypto/cipher/cbc.go:145:8              - (Go interface method)
                           at <Go interface method>
           2: 0x796b2 - crypto/cipher_test.TestCryptBlocks$1
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:20:80
           3: 0x79920 - crypto/cipher_test.mustPanic
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:37:3
           4: 0x7933e - crypto/cipher_test.TestCryptBlocks
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:20:11
           5: 0x231c8 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x22ebe - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x231c8 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x1d012 - <unknown>!runtime.run$1
           9: 0x10739 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x19e1 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x105ec - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x10364 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/ecdh wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/47
=== RUN   TestLinker
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
/tmp/TestLinker140424984/tmp/TestLinker140424984/000/tmp/TestLinker140424984/000/hello.go    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    [ build -o hello.exe hello.go]: exec: no command
    FailNow is incomplete, requires runtime.Goexit()
/dev/null    [./hello.exe]: open /dev/null: errno 2
    FailNow is incomplete, requires runtime.Goexit()
    unexpected output: 
    [ tool nm hello.exe]: exec: no command
    FailNow is incomplete, requires runtime.Goexit()
    no P384 symbols found in program using ecdh.P384, test is broken
--- FAIL: TestLinker (0.01s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestLinker140424984: errno 52

```


### crypto/ecdsa wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/82
=== RUN   TestVectors
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/crypto/ecdsa/testdata/SigVer.rsp.bz2--- PASS: TestVectors (184.87s)

```


### crypto/ed25519 wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/9
=== RUN   TestEd25519Vectors
/tmp/TestEd25519Vectors160078016/tmp/TestEd25519Vectors160078016/000/tmp/TestEd25519Vectors160078016/000/modcache    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    failed to run `go mod download -json filippo.io/mostly-harmless/ed25519vectors@v0.0.0-20210322192420-30a2d7243a94`, output: 
    FailNow is incomplete, requires runtime.Goexit()
    unexpected end of JSON input
    FailNow is incomplete, requires runtime.Goexit()
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/crypto/ed25519/ed25519vectors.json    failed to read ed25519vectors.json: open ed25519vectors.json: file does not exist
    FailNow is incomplete, requires runtime.Goexit()
    unexpected end of JSON input
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestEd25519Vectors (0.04s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestEd25519Vectors160078016: errno 52
=== RUN   TestGolden
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/crypto/ed25519/testdata/sign.input.gz--- PASS: TestGolden (1.34s)

```


### crypto/hmac wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestNonUniqueHash
panic: crypto/hmac: hash generation function does not produce unique values
Error: failed to run main module `/tmp/tinygo2787884113/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3490 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x757ed - crypto/hmac.New
           2: 0x76651 - crypto/hmac.TestNonUniqueHash
                           at /usr/local/go/src/crypto/hmac/hmac_test.go:597:45
           3: 0x270d3 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x26dc9 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           5: 0x270d3 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x21ab3 - <unknown>!runtime.run$1
           7: 0x15344 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           8: 0x1979 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           9: 0x151f7 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          10: 0x14f6f - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/rsa wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestEncryptPKCS1v15
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo1155612855/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2d64 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x5092 - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0xf910b - (Go interface method)
           3: 0xfacb7 - testing/quick.Check
                           at /usr/local/go/src/testing/quick/quick.go:273:17              - crypto/rsa_test.TestEncryptPKCS1v15
                           at /usr/local/go/src/crypto/rsa/pkcs1v15_test.go:118:13
           4: 0x3c458 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x86566 - (*testing.T).Run
           6: 0x3c160 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x3c458 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x34823 - <unknown>!runtime.run$1
           9: 0x2b2b1 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1cdb - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x2b16b - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x2af76 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/subtle wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestConstantTimeByteEq
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo926025455/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3897 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x3b8c - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x6ba2e - (Go interface method)
           3: 0x6bc2b - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48
           4: 0x6c50d - crypto/subtle.TestConstantTimeByteEq
                           at /usr/local/go/src/crypto/subtle/constant_time_test.go:59:25
           5: 0x1f6f6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x1f3ec - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x1f6f6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x19232 - <unknown>!runtime.run$1
           9: 0x97f4 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x194f - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x96a8 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x9422 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/x509 wasip2/wasm

[🔝](#summary) build error

```text
FAIL	crypto/x509	0.000s
# crypto/x509_test
/usr/local/go/src/crypto/x509/hybrid_pool_test.go:63:17: c.ConnectionState undefined (type *net.TLSConn has no field or method ConnectionState)
```


### database/sql wasip2/wasm

[🔝](#summary) build error

```text
FAIL	database/sql	0.000s
# database/sql
/usr/local/go/src/database/sql/sql_test.go:4722:4: b.SetParallelism undefined (type *testing.B has no field or method SetParallelism)
```


### debug/buildinfo wasip2/wasm

[🔝](#summary) build error

```text
FAIL	debug/buildinfo	0.000s
# debug/buildinfo
/usr/local/go/src/debug/buildinfo/buildinfo.go:80:19: undefined: debug.ParseBuildInfo
```


### debug/dwarf wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 23/29
=== RUN   TestBitFieldZeroArrayIssue50685
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/bitfields.elf4--- PASS: TestBitFieldZeroArrayIssue50685 (0.01s)
=== RUN   TestLineGCCWindows
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/line-gcc-win.bin--- PASS: TestLineGCCWindows (0.19s)
=== RUN   TestBitOffsetsMachO4
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/typedef.macho4--- PASS: TestBitOffsetsMachO4 (0.00s)
=== RUN   TestBitOffsetsELFDwarf4
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/typedef.elf4--- PASS: TestBitOffsetsELFDwarf4 (0.00s)
=== RUN   TestLineELFClang
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/line-clang.elf--- PASS: TestLineELFClang (0.01s)
=== RUN   TestBitOffsetsMachO
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/typedef.macho--- PASS: TestBitOffsetsMachO (0.00s)
=== RUN   TestReaderSeek
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/line-gcc.elf/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/line-gcc-dwarf5.elf/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/line-clang-dwarf5.elf/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/line-gcc-zstd.elf--- PASS: TestReaderSeek (0.05s)
=== RUN   TestRangesSection
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/ranges.elf--- PASS: TestRangesSection (0.03s)
=== RUN   TestLineELFGCC
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/line-gcc.elf--- PASS: TestLineELFGCC (0.00s)
=== RUN   TestLineSeek
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/line-gcc.elf--- PASS: TestLineSeek (0.00s)
=== RUN   TestTypedefsELFDwarf4
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/typedef.elf4--- PASS: TestTypedefsELFDwarf4 (0.00s)
=== RUN   TestTypedefCycle
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/cycle.elf/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/cycle.elf/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/cycle.elf/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/cycle.elf/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/cycle.elf--- PASS: TestTypedefCycle (0.02s)
=== RUN   TestBitOffsetsELF
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/typedef.elf--- PASS: TestBitOffsetsELF (0.00s)
=== RUN   TestBitOffsetsELFDwarf5
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/typedef.elf5--- PASS: TestBitOffsetsELFDwarf5 (0.05s)
=== RUN   TestSplit
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/split.elf--- PASS: TestSplit (0.00s)
=== RUN   TestRangesRnglistx
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/rnglistx.elf--- PASS: TestRangesRnglistx (0.00s)
=== RUN   TestLineELFGCCZstd
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/line-gcc-zstd.elf--- PASS: TestLineELFGCCZstd (0.02s)
=== RUN   TestTypedefsELF
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/typedef.elf--- PASS: TestTypedefsELF (0.00s)
=== RUN   TestTypedefsMachO
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/typedef.macho--- PASS: TestTypedefsMachO (0.00s)
=== RUN   TestUnsupportedTypes
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/cppunsuptypes.elf--- PASS: TestUnsupportedTypes (0.03s)
=== RUN   TestReaderRanges
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/line-gcc.elf/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/line-gcc-dwarf5.elf/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/line-clang-dwarf5.elf/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/line-gcc-zstd.elf--- PASS: TestReaderRanges (0.02s)
=== RUN   TestUnitIteration
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata--- PASS: TestUnitIteration (0.01s)
=== RUN   TestLineRnglists
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/dwarf/testdata/rnglistx.elf--- PASS: TestLineRnglists (0.00s)

```


### debug/elf wasip2/wasm

[🔝](#summary) build error

```text
FAIL	debug/elf	0.000s
# debug/elf
/usr/local/go/src/debug/elf/file_test.go:1159:10: undefined: net.ResolveIPAddr
```


### debug/gosym wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestLineFromAline
    skipping on non-ELF system wasip2
    SkipNow is incomplete, requires runtime.Goexit()
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/gosym/main    open main: file does not exist
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo282936270/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2978f - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x6600 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x9b479 - (*debug/elf.File).Section
           3: 0xae7fc - debug/gosym.crack
                           at /usr/local/go/src/debug/gosym/pclntab_test.go:81:10
           4: 0xac29a - debug/gosym.getTable
                           at /usr/local/go/src/debug/gosym/pclntab_test.go:72:17
           5: 0xaefb1 - debug/gosym.TestLineFromAline
                           at /usr/local/go/src/debug/gosym/pclntab_test.go:113:14
           6: 0x40c8e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x40980 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x40c8e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x35c96 - <unknown>!runtime.run$1
          10: 0x29023 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11: 0x1c1e - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x28ea0 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          13: 0x28a46 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### debug/macho wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 5/7
=== RUN   TestOpenFat
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/macho/testdata/fat-gcc-386-amd64-darwin-exec.base64--- PASS: TestOpenFat (0.00s)
=== RUN   TestOpenFatFailure
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/macho/file.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/macho/testdata/gcc-386-darwin-exec.base64--- PASS: TestOpenFatFailure (0.00s)
=== RUN   TestOpenBadDysymCmd
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/macho/testdata/gcc-amd64-darwin-exec-with-bad-dysym.base64--- PASS: TestOpenBadDysymCmd (0.01s)
=== RUN   TestOpen
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/macho/testdata/gcc-386-darwin-exec.base64/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/macho/testdata/gcc-amd64-darwin-exec.base64/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/macho/testdata/gcc-amd64-darwin-exec-debug.base64/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/macho/testdata/clang-386-darwin-exec-with-rpath.base64/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/macho/testdata/clang-amd64-darwin-exec-with-rpath.base64/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/macho/testdata/clang-386-darwin.obj.base64/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/macho/testdata/clang-amd64-darwin.obj.base64--- PASS: TestOpen (0.05s)
=== RUN   TestOpenFailure
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/macho/file.go--- PASS: TestOpenFailure (0.00s)

```


### debug/pe wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestDefaultLinkerDWARF
    skipping test: gcc is missing
    SkipNow is incomplete, requires runtime.Goexit()
    skipping windows only test
    SkipNow is incomplete, requires runtime.Goexit()
    skipping test: 'go run' not available on wasip2/wasm
    SkipNow is incomplete, requires runtime.Goexit()
/tmp/TestDefaultLinkerDWARF10395663/tmp/TestDefaultLinkerDWARF10395663/000/tmp/TestDefaultLinkerDWARF10395663/000/a.go    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    building test executable for linktype 1 failed: exec: no command 
    FailNow is incomplete, requires runtime.Goexit()
/dev/null    running test executable failed: open /dev/null: errno 2 
    FailNow is incomplete, requires runtime.Goexit()
    Testprog output:
    unexpected program output: 
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: index out of range
Error: failed to run main module `/tmp/tinygo3450470192/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x291db - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x27da - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:160:16
           2: 0xd04f9 - <unknown>!debug/pe.testDWARF
           3: 0xca81f - debug/pe.testCgoDWARF
                           at /usr/local/go/src/debug/pe/file_cgo_test.go:19:11
           4: 0xd0a75 - debug/pe.TestDefaultLinkerDWARF
                           at /usr/local/go/src/debug/pe/file_cgo_test.go:23:14
           5: 0x400c2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x3fdb4 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x400c2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x3a36d - <unknown>!runtime.run$1
           9: 0x28a6e - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1ce1 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x288ea - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x2848f - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### debug/plan9obj wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/2
=== RUN   TestOpen
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/plan9obj/testdata/386-plan9-exec/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/plan9obj/testdata/amd64-plan9-exec--- PASS: TestOpen (0.01s)
=== RUN   TestOpenFailure
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/debug/plan9obj/file.go--- PASS: TestOpenFailure (0.01s)

```


### encoding/asn1 wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/38
=== RUN   TestUTCTime
/etc/localtime/usr/local/go/lib/time/zoneinfo.zip--- PASS: TestUTCTime (0.00s)

```


### encoding/binary wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/16
=== RUN   TestUnexportedRead
panic: reflect: value is not settable
Error: failed to run main module `/tmp/tinygo3900192642/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3f10 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xbcd2 - (reflect.Value).checkRO
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:56:8
           2: 0xc201 - (reflect.Value).SetInt
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:1132:11
           3: 0x74119 - (*encoding/binary.decoder).int32
                           at /usr/local/go/src/encoding/binary/binary.go:656:11              - (*encoding/binary.decoder).value
                           at /usr/local/go/src/encoding/binary/binary.go:656:25
           4: 0x73d7a - (*encoding/binary.decoder).value
                           at /usr/local/go/src/encoding/binary/binary.go:636:12
           5: 0x72e67 - encoding/binary.Read
           6: 0x7d0b9 - encoding/binary.TestUnexportedRead
                           at /usr/local/go/src/encoding/binary/binary_test.go:395:6
           7: 0x2b273 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x57b83 - (*testing.T).Run
           9: 0x2af7b - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x2b273 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x256c3 - <unknown>!runtime.run$1
          12: 0x182c9 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x1a66 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x1817c - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          15: 0x17ef4 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### encoding/gob wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo761082501/main /tmp/tinygo761082501/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo761082501/main --output /tmp/tinygo761082501/main
FAIL	encoding/gob	0.000s
error: wasm-opt failed: signal: killed
```


### encoding/pem wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/4
=== RUN   TestCVE202224675

```


### encoding/xml wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 158/336
=== RUN   TestMarshal/137
    --- PASS: TestMarshal/137 (0.00s)
=== RUN   TestMarshal/8
    --- PASS: TestMarshal/8 (0.00s)
=== RUN   TestMarshal/47
    --- PASS: TestMarshal/47 (0.00s)
=== RUN   TestMarshal/81
    --- PASS: TestMarshal/81 (0.00s)
=== RUN   TestMarshal/100
    --- PASS: TestMarshal/100 (0.00s)
=== RUN   TestMarshal/12
    --- PASS: TestMarshal/12 (0.00s)
=== RUN   TestMarshal/16
    --- PASS: TestMarshal/16 (0.00s)
=== RUN   TestMarshal/15
    --- PASS: TestMarshal/15 (0.00s)
=== RUN   TestMarshal/130
    --- PASS: TestMarshal/130 (0.00s)
=== RUN   TestMarshal/169
    --- PASS: TestMarshal/169 (0.00s)
=== RUN   TestMarshal/178
    --- PASS: TestMarshal/178 (0.00s)
=== RUN   TestMarshal/7
    --- PASS: TestMarshal/7 (0.00s)
=== RUN   TestMarshal/39
    --- PASS: TestMarshal/39 (0.00s)
=== RUN   TestMarshal/85
    --- PASS: TestMarshal/85 (0.00s)
=== RUN   TestMarshal/73
    --- PASS: TestMarshal/73 (0.00s)
=== RUN   TestMarshal/97
    --- PASS: TestMarshal/97 (0.00s)
=== RUN   TestMarshal/181
    --- PASS: TestMarshal/181 (0.00s)
=== RUN   TestMarshal/36
    --- PASS: TestMarshal/36 (0.00s)
=== RUN   TestMarshal/74
    --- PASS: TestMarshal/74 (0.00s)
=== RUN   TestMarshal/4
    --- PASS: TestMarshal/4 (0.00s)
=== RUN   TestMarshal/62
    --- PASS: TestMarshal/62 (0.00s)
=== RUN   TestMarshal/123
    --- PASS: TestMarshal/123 (0.00s)
=== RUN   TestMarshal/55
    --- PASS: TestMarshal/55 (0.00s)
=== RUN   TestMarshal/82
    --- PASS: TestMarshal/82 (0.00s)
=== RUN   TestMarshal/56
    --- PASS: TestMarshal/56 (0.00s)
=== RUN   TestMarshal/149
    --- PASS: TestMarshal/149 (0.00s)
=== RUN   TestMarshal/155
    --- PASS: TestMarshal/155 (0.00s)
=== RUN   TestMarshal/34
    --- PASS: TestMarshal/34 (0.00s)
=== RUN   TestMarshal/158
    --- PASS: TestMarshal/158 (0.00s)
=== RUN   TestMarshal/44
    --- PASS: TestMarshal/44 (0.00s)
=== RUN   TestMarshal/84
    --- PASS: TestMarshal/84 (0.00s)
=== RUN   TestMarshal/17
    --- PASS: TestMarshal/17 (0.00s)
=== RUN   TestMarshal/19
    --- PASS: TestMarshal/19 (0.00s)
=== RUN   TestMarshal/96
    --- PASS: TestMarshal/96 (0.00s)
=== RUN   TestMarshal/126
    --- PASS: TestMarshal/126 (0.00s)
=== RUN   TestMarshal/164
    --- PASS: TestMarshal/164 (0.00s)
=== RUN   TestMarshal/68
    --- PASS: TestMarshal/68 (0.00s)
=== RUN   TestMarshal/1
    --- PASS: TestMarshal/1 (0.00s)
=== RUN   TestMarshal/46
    --- PASS: TestMarshal/46 (0.00s)
=== RUN   TestMarshal/166
    --- PASS: TestMarshal/166 (0.00s)
=== RUN   TestMarshal/113
    --- PASS: TestMarshal/113 (0.00s)
=== RUN   TestMarshal/138
    --- PASS: TestMarshal/138 (0.00s)
=== RUN   TestMarshal/142
    --- PASS: TestMarshal/142 (0.00s)
=== RUN   TestMarshal/32
    --- PASS: TestMarshal/32 (0.00s)
=== RUN   TestMarshal/117
    --- PASS: TestMarshal/117 (0.00s)
=== RUN   TestMarshal/144
    --- PASS: TestMarshal/144 (0.00s)
=== RUN   TestMarshal/3
    --- PASS: TestMarshal/3 (0.00s)
=== RUN   TestMarshal/51
    --- PASS: TestMarshal/51 (0.00s)
=== RUN   TestMarshal/110
    --- PASS: TestMarshal/110 (0.00s)
=== RUN   TestMarshal/20
    --- PASS: TestMarshal/20 (0.00s)
=== RUN   TestMarshal/125
    --- PASS: TestMarshal/125 (0.00s)
=== RUN   TestMarshal/133
    --- PASS: TestMarshal/133 (0.00s)
=== RUN   TestMarshal/167
    --- PASS: TestMarshal/167 (0.00s)
=== RUN   TestMarshal/174
    --- PASS: TestMarshal/174 (0.00s)
=== RUN   TestMarshal/2
    --- PASS: TestMarshal/2 (0.00s)
=== RUN   TestMarshal/11
    --- PASS: TestMarshal/11 (0.00s)
=== RUN   TestMarshal/79
    --- PASS: TestMarshal/79 (0.00s)
=== RUN   TestMarshal/93
    --- PASS: TestMarshal/93 (0.00s)
=== RUN   TestMarshal/80
    --- PASS: TestMarshal/80 (0.00s)
=== RUN   TestMarshal/61
    --- PASS: TestMarshal/61 (0.00s)
=== RUN   TestMarshal/177
    --- PASS: TestMarshal/177 (0.00s)
=== RUN   TestMarshal/42
    --- PASS: TestMarshal/42 (0.00s)
=== RUN   TestMarshal/48
    --- PASS: TestMarshal/48 (0.00s)
=== RUN   TestMarshal/140
    --- PASS: TestMarshal/140 (0.00s)
=== RUN   TestMarshal/153
    --- PASS: TestMarshal/153 (0.00s)
=== RUN   TestMarshal/78
    --- PASS: TestMarshal/78 (0.00s)
=== RUN   TestMarshal/106
    --- PASS: TestMarshal/106 (0.00s)
=== RUN   TestMarshal/112
    --- PASS: TestMarshal/112 (0.00s)
=== RUN   TestMarshal/14
    --- PASS: TestMarshal/14 (0.00s)
=== RUN   TestMarshal/23
    --- PASS: TestMarshal/23 (0.00s)
=== RUN   TestMarshal/25
    --- PASS: TestMarshal/25 (0.00s)
=== RUN   TestMarshal/45
    --- PASS: TestMarshal/45 (0.00s)
=== RUN   TestMarshal/24
    --- PASS: TestMarshal/24 (0.00s)
=== RUN   TestMarshal/77
    --- PASS: TestMarshal/77 (0.00s)
=== RUN   TestMarshal/83
    --- PASS: TestMarshal/83 (0.00s)
=== RUN   TestMarshal/157
    --- PASS: TestMarshal/157 (0.00s)
=== RUN   TestMarshal/70
    --- PASS: TestMarshal/70 (0.00s)
=== RUN   TestMarshal/111
    --- PASS: TestMarshal/111 (0.00s)
=== RUN   TestMarshal/175
    --- PASS: TestMarshal/175 (0.00s)
=== RUN   TestMarshal/0
    --- PASS: TestMarshal/0 (0.00s)
=== RUN   TestMarshal/13
    --- PASS: TestMarshal/13 (0.00s)
=== RUN   TestMarshal/59
    --- PASS: TestMarshal/59 (0.00s)
=== RUN   TestMarshal/38
    --- PASS: TestMarshal/38 (0.00s)
=== RUN   TestMarshal/121
    --- PASS: TestMarshal/121 (0.00s)
=== RUN   TestMarshal/136
    --- PASS: TestMarshal/136 (0.00s)
=== RUN   TestMarshal/162
    --- PASS: TestMarshal/162 (0.00s)
=== RUN   TestMarshal/183
    --- PASS: TestMarshal/183 (0.00s)
=== RUN   TestMarshal/67
    --- PASS: TestMarshal/67 (0.00s)
=== RUN   TestMarshal/76
    --- PASS: TestMarshal/76 (0.00s)
=== RUN   TestMarshal/151
    --- PASS: TestMarshal/151 (0.00s)
=== RUN   TestMarshal/87
    --- PASS: TestMarshal/87 (0.00s)
=== RUN   TestMarshal/88
    --- PASS: TestMarshal/88 (0.00s)
=== RUN   TestMarshal/109
    --- PASS: TestMarshal/109 (0.00s)
=== RUN   TestMarshal/127
    --- PASS: TestMarshal/127 (0.00s)
=== RUN   TestMarshal/172
    --- PASS: TestMarshal/172 (0.00s)
=== RUN   TestMarshal/30
    --- PASS: TestMarshal/30 (0.00s)
=== RUN   TestMarshal/145
    --- PASS: TestMarshal/145 (0.00s)
=== RUN   TestMarshal/40
    --- PASS: TestMarshal/40 (0.00s)
=== RUN   TestMarshal/103
    --- PASS: TestMarshal/103 (0.00s)
=== RUN   TestMarshal/179
    --- PASS: TestMarshal/179 (0.00s)
=== RUN   TestMarshal/26
    --- PASS: TestMarshal/26 (0.00s)
=== RUN   TestMarshal/129
    --- PASS: TestMarshal/129 (0.00s)
=== RUN   TestMarshal/22
    --- PASS: TestMarshal/22 (0.00s)
=== RUN   TestMarshal/50
    --- PASS: TestMarshal/50 (0.00s)
=== RUN   TestMarshal/66
    --- PASS: TestMarshal/66 (0.00s)
=== RUN   TestMarshal/33
    --- PASS: TestMarshal/33 (0.00s)
=== RUN   TestMarshal/108
    --- PASS: TestMarshal/108 (0.00s)
=== RUN   TestMarshal/159
    --- PASS: TestMarshal/159 (0.00s)
=== RUN   TestMarshal/72
    --- PASS: TestMarshal/72 (0.00s)
=== RUN   TestMarshal/90
    --- PASS: TestMarshal/90 (0.02s)
=== RUN   TestMarshal/91
    --- PASS: TestMarshal/91 (0.00s)
=== RUN   TestMarshal/105
    --- PASS: TestMarshal/105 (0.00s)
=== RUN   TestMarshal/10
    --- PASS: TestMarshal/10 (0.00s)
=== RUN   TestMarshal/119
    --- PASS: TestMarshal/119 (0.00s)
=== RUN   TestMarshal/35
    --- PASS: TestMarshal/35 (0.00s)
=== RUN   TestMarshal/43
    --- PASS: TestMarshal/43 (0.00s)
=== RUN   TestMarshal/54
    --- PASS: TestMarshal/54 (0.00s)
=== RUN   TestMarshal/104
    --- PASS: TestMarshal/104 (0.00s)
=== RUN   TestMarshal/37
    --- PASS: TestMarshal/37 (0.00s)
=== RUN   TestMarshal/58
    --- PASS: TestMarshal/58 (0.00s)
=== RUN   TestMarshal/63
    --- PASS: TestMarshal/63 (0.00s)
=== RUN   TestMarshal/122
    --- PASS: TestMarshal/122 (0.00s)
=== RUN   TestMarshal/141
    --- PASS: TestMarshal/141 (0.00s)
=== RUN   TestMarshal/29
    --- PASS: TestMarshal/29 (0.00s)
=== RUN   TestMarshal/147
    --- PASS: TestMarshal/147 (0.00s)
=== RUN   TestMarshal/165
    --- PASS: TestMarshal/165 (0.00s)
=== RUN   TestMarshal/89
    --- PASS: TestMarshal/89 (0.00s)
=== RUN   TestMarshal/107
    --- PASS: TestMarshal/107 (0.00s)
=== RUN   TestMarshal/160
    --- PASS: TestMarshal/160 (0.00s)
=== RUN   TestMarshal/170
    --- PASS: TestMarshal/170 (0.00s)
=== RUN   TestMarshal/41
    --- PASS: TestMarshal/41 (0.00s)
=== RUN   TestMarshal/64
    --- PASS: TestMarshal/64 (0.00s)
=== RUN   TestMarshal/21
    --- PASS: TestMarshal/21 (0.00s)
=== RUN   TestMarshal/53
    --- PASS: TestMarshal/53 (0.00s)
=== RUN   TestMarshal/184
    --- PASS: TestMarshal/184 (0.00s)
=== RUN   TestMarshal/75
    --- PASS: TestMarshal/75 (0.00s)
=== RUN   TestMarshal/146
    --- PASS: TestMarshal/146 (0.00s)
=== RUN   TestMarshal/176
    --- PASS: TestMarshal/176 (0.00s)
=== RUN   TestCVE202228131
Error: failed to run main module `/tmp/tinygo3909271538/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x9e186 - (*encoding/xml.Decoder).unmarshalPath
                           at /usr/local/go/src/encoding/xml/read.go:711:56
           1: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
           2: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
           3: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
           4: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
           5: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
           6: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
           7: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
           8: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
           9: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          10: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          11: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          12: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          13: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          14: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          15: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          16: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          17: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          18: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          19: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          20: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          21: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          22: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          23: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          24: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          25: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          26: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          27: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          28: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          29: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          30: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          31: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          32: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          33: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          34: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          35: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          36: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          37: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          38: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          39: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          40: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          41: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          42: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          43: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          44: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          45: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          46: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          47: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          48: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          49: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          50: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          51: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          52: 0x9a3ba - <unknown>!(*encoding/xml.Decoder).unmarshal
          53: 0x9820a - (*encoding/xml.Decoder).DecodeElement
          54: 0x97cbe - (*encoding/xml.Decoder).Decode
                           at /usr/local/go/src/encoding/xml/read.go:140:24
          55: 0x979a4 - encoding/xml.Unmarshal
                           at /usr/local/go/src/encoding/xml/read.go:134:49
          56: 0xb40e1 - encoding/xml.TestCVE202228131
                           at /usr/local/go/src/encoding/xml/read_test.go:1106:18
          57: 0x38f31 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          58: 0x733b7 - (*testing.T).Run
          59: 0x38c39 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          60: 0x38f31 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          61: 0x2ea13 - <unknown>!runtime.run$1
          62: 0x24bd8 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          63: 0x1b9d - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          64: 0x24a8b - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          65: 0x2489d - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: memory fault at wasm address 0x5590001 in linear memory of size 0xa00000
    3: wasm trap: out of bounds memory access
=== RUN   TestMarshal/49
    --- PASS: TestMarshal/49 (0.00s)
=== RUN   TestMarshal/86
    --- PASS: TestMarshal/86 (0.00s)
=== RUN   TestMarshal/115
    --- PASS: TestMarshal/115 (0.00s)
=== RUN   TestMarshal/18
    --- PASS: TestMarshal/18 (0.00s)
=== RUN   TestMarshal/60
    --- PASS: TestMarshal/60 (0.00s)
=== RUN   TestMarshal/65
    --- PASS: TestMarshal/65 (0.00s)
=== RUN   TestMarshal/99
    --- PASS: TestMarshal/99 (0.00s)
=== RUN   TestMarshal/5
    --- PASS: TestMarshal/5 (0.00s)
=== RUN   TestMarshal/9
    --- PASS: TestMarshal/9 (0.00s)
=== RUN   TestMarshal/57
    --- PASS: TestMarshal/57 (0.00s)
=== RUN   TestMarshal/98
    --- PASS: TestMarshal/98 (0.00s)
=== RUN   TestMarshal/134
    --- PASS: TestMarshal/134 (0.00s)
=== RUN   TestMarshal/131
    --- PASS: TestMarshal/131 (0.00s)
=== RUN   TestMarshal/6
    --- PASS: TestMarshal/6 (0.00s)
=== RUN   TestMarshal/94
    --- PASS: TestMarshal/94 (0.00s)
=== RUN   TestMarshal/114
    --- PASS: TestMarshal/114 (0.00s)
=== RUN   TestMarshal/52
    --- PASS: TestMarshal/52 (0.00s)
=== RUN   TestMarshal/101
    --- PASS: TestMarshal/101 (0.00s)
=== RUN   TestMarshal/102
    --- PASS: TestMarshal/102 (0.00s)

```


### errors wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 20/55
=== RUN   TestAs
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/errors/non-existing=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0x45df0)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0x45df0) (0.00s)
--- FAIL: TestAs (0.02s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x45df0)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x45df0) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0x45df0)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0x45df0) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0x45df0)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0x45df0) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0x45e10)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0x45e10) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0x45e00)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0x45e00) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x45e00)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x45e00) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0x45e00)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x45f50)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x2703c)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0x45e00) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0x45e00)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x45f50)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x2703c)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0x45e00) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo3479053294/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x32a2 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x1030c - (Go interface method)
                           at /usr/local/go/src/errors/wrap.go:102:8              - errors.As
                           at /usr/local/go/src/errors/wrap.go:109:24
           2: 0x757fd - errors_test.TestAsValidation$1
                           at /usr/local/go/src/errors/wrap_test.go:232:22
           3: 0x2afd9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x56ce1 - (*testing.T).Run
           5: 0x75642 - errors_test.TestAsValidation
                           at /usr/local/go/src/errors/wrap_test.go:228:8
           6: 0x2afd9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x56ce1 - (*testing.T).Run
           8: 0x2ace1 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x2afd9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x25fbb - <unknown>!runtime.run$1
          11: 0x1913b - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x1965 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x18fee - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x18d65 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0x45df0)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0x45df0) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0x45df0)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0x45df0) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x45e00)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x45e00) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x45df0)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x45df0) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAsValidation
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo3479053294/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x32a2 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x1030c - (Go interface method)
                           at /usr/local/go/src/errors/wrap.go:102:8              - errors.As
                           at /usr/local/go/src/errors/wrap.go:109:24
           2: 0x757fd - errors_test.TestAsValidation$1
                           at /usr/local/go/src/errors/wrap_test.go:232:22
           3: 0x2afd9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x56ce1 - (*testing.T).Run
           5: 0x75642 - errors_test.TestAsValidation
                           at /usr/local/go/src/errors/wrap_test.go:228:8
           6: 0x2afd9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x56ce1 - (*testing.T).Run
           8: 0x2ace1 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x2afd9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x25fbb - <unknown>!runtime.run$1
          11: 0x1913b - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x1965 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x18fee - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x18d65 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0x45e10)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0x45e10) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0x45e00)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0x45e00) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0x45e00)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x45f50)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x2703c)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0x45e00) (0.00s)
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0x45e00)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x45f50)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x2703c)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0x45e00) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)

```


### flag wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/14
=== RUN   TestPrintDefaults
panic: panic!
Error: failed to run main module `/tmp/tinygo3915369889/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3719 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x215b7 - (*flag_test.zeroPanicker).String
                           at /usr/local/go/src/flag/flag_test.go:479:8
           2: 0x60266 - (Go interface method)
           3: 0x5f90b - (Go interface method)
                           at /usr/local/go/src/flag/flag.go:560:46              - flag.isZeroValue
                           at /usr/local/go/src/flag/flag.go:545:27              - (*flag.FlagSet).PrintDefaults$1
                           at /usr/local/go/src/flag/flag.go:630:32
           4: 0x5ff24 - (*flag.FlagSet).VisitAll
                           at /usr/local/go/src/flag/flag.go:458:5
           5: 0x5e949 - (*flag.FlagSet).PrintDefaults
                           at /usr/local/go/src/flag/flag.go:609:12
           6: 0x9e36e - flag_test.TestPrintDefaults
                           at /usr/local/go/src/flag/flag_test.go:538:18
           7: 0x2d301 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x2cff3 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x2d301 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x2755c - <unknown>!runtime.run$1
          11: 0x18329 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x1c02 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x181a5 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x17d4a - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### fmt wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestSprintf
    Sprintf("%#v", 0x2f) = "(func)(0x2f)" want "(func(*testing.T))(0xPTR)"
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo2816437377/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1a847 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x6408 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x3ea3 - (*reflect.rawType).isNamed
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:491:11
           3: 0x428d - <unknown>!(*reflect.rawType).String
           4: 0xc07e - (reflect.Value).String
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:506:33
           5: 0x1ce71 - (Go interface method)
                           at /usr/local/go/src/regexp/syntax/prog.go:125:17
           6: 0x78cc9 - <unknown>!(*fmt.pp).handleMethods
           7: 0x729d7 - <unknown>!(*fmt.pp).printArg
           8: 0x755a4 - <unknown>!(*fmt.pp).doPrintf
           9: 0x253df - fmt.Sprintf
                           at /usr/local/go/src/fmt/print.go:239:12
          10: 0xa8b41 - fmt_test.TestSprintf
                           at /usr/local/go/src/fmt/fmt_test.go:1095:15
          11: 0x4facc - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x8de23 - (*testing.T).Run
          13: 0x4f7d4 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          14: 0x4facc - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          15: 0x2a7b2 - <unknown>!runtime.run$1
          16: 0x1a1a4 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          17: 0x1b25 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          18: 0x1a056 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          19: 0x19dcd - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/build wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 21/55
=== RUN   TestDotSlashImport
/usr/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/other/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/other/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/other    no buildable Go source files in testdata/other
    FailNow is incomplete, requires runtime.Goexit()
    testdata/other: Imports=[], want [./file]
    FailNow is incomplete, requires runtime.Goexit()
/usr/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/other/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/other/file/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/other/file/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/other/file/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/other/file/file.go    import "./file": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestDotSlashImport (0.01s)
=== RUN   TestLocalDirectory
/usr/home/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/build.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/build_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/deps_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/doc.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/gc.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/gccgo.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/read.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/read_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/syslist.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/syslist_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/zcgo.go    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
    ImportPath=".", want "go/build"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestLocalDirectory (0.01s)
=== RUN   TestImportCmd
/usr/local/go/src/cmd/internal/objfile/dev/null    go/build: go list cmd/internal/objfile: open /dev/null: errno 2
        
        
    FailNow is incomplete, requires runtime.Goexit()
    Import cmd/internal/objfile returned Dir="", want ".../src/cmd/internal/objfile"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportCmd (0.00s)
=== RUN   TestImportDirNotExist
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
/tmp/TestImportDirNotExist87594817/tmp/TestImportDirNotExist87594817/000=== RUN   TestImportDirNotExist/GO111MODULE=off
/usr/local/go/src/go/build/doesnotexist/tmp/TestImportDirNotExist87594817/000/src/go/build/doesnotexist/usr/local/go/src/go/build/doesnotexist/usr/local/go/src/go/build/doesnotexist/tmp/TestImportDirNotExist87594817/000/src/go/build/doesnotexist/usr/local/go/src/go/build/doesnotexist    --- PASS: TestImportDirNotExist/GO111MODULE=off (0.00s)
--- FAIL: TestImportDirNotExist (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestImportDirNotExist87594817: errno 52
=== RUN   TestImportDirNotExist/GO111MODULE=on
/usr/local/go/src/go/build/doesnotexist/dev/null        Import(full, 0) got error: "go/build: go list go/build/doesnotexist: open /dev/null: errno 2\n\n", want "cannot find package" or "is not in std" error
/usr/local/go/src/go/build/doesnotexist/usr/local/go/src/go/build/doesnotexist/dev/null        Import(full, FindOnly) got error: "go/build: go list go/build/doesnotexist: open /dev/null: errno 2\n\n", want "cannot find package" or "is not in std" error
/usr/local/go/src/go/build/doesnotexist    --- FAIL: TestImportDirNotExist/GO111MODULE=on (0.00s)
=== RUN   TestImportVendor
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
/usr/home/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/a/b/vendor/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/a/vendor/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/a/vendor/c/d/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/a/vendor/c/d/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/a/vendor/c/d/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/a/vendor/c/d/d.go    cannot find vendored c/d from testdata src/a/b directory: import "c/d": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportVendor (0.00s)
=== RUN   TestImportPackageOutsideModule
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
/tmp/TestImportPackageOutsideModule162553001/tmp/TestImportPackageOutsideModule162553001/000/tmp/TestImportPackageOutsideModule162553001/000/src/example.com/p/tmp/TestImportPackageOutsideModule162553001/000/src/example.com/tmp/TestImportPackageOutsideModule162553001/000/src/tmp/TestImportPackageOutsideModule162553001/000/tmp/TestImportPackageOutsideModule162553001/000/src/tmp/TestImportPackageOutsideModule162553001/000/src/example.com/tmp/TestImportPackageOutsideModule162553001/000/src/example.com/p/tmp/TestImportPackageOutsideModule162553001/000/src/example.com/p/p.go/usr/tmp/usr/local/go/src/example.com/p/dev/null    error when importing package when no go.mod is present: got "go/build: go list example.com/p: open /dev/null: errno 2\n\n"; want "go.mod file not found in current directory or any parent directory"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportPackageOutsideModule (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestImportPackageOutsideModule162553001: errno 52
=== RUN   TestIssue23594
/usr/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/doc/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/doc/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/doc/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/doc/a_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/doc/b_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/doc/c_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/doc/d_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/doc/e.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/doc/f.go    could not import testdata: import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestIssue23594 (0.00s)
=== RUN   TestCgoImportsIgnored
/usr/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/cgo_disabled/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/cgo_disabled/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/cgo_disabled/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/cgo_disabled/cgo_disabled.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/cgo_disabled/empty.go    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestCgoImportsIgnored (0.00s)
=== RUN   TestAllTags
/usr/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/alltags/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/alltags/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/alltags/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/alltags/alltags.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/alltags/x_netbsd_arm.go    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
/usr/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/alltags/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/alltags/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/alltags/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/alltags/alltags.go    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestAllTags (0.00s)
=== RUN   TestAllTagsNonSourceFile
/usr/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/non_source_tags/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/non_source_tags/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/non_source_tags/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/non_source_tags/non_source_tags.go    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestAllTagsNonSourceFile (0.00s)
=== RUN   TestDirectives
/usr/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/directives/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/directives/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/directives/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/directives/a.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/directives/a_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/directives/b_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/directives/c_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/directives/d_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/directives/eve.go    could not import testdata: import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestDirectives (0.01s)
=== RUN   TestFindImports
/usr/local/go/src/go/build    open /usr/local/go/src/go/build: errno 2
    FailNow is incomplete, requires runtime.Goexit()
    go/build imports []
    expected to find "bytes" in import list
    expected to find "os" in import list
    expected to find "path/filepath" in import list
    expected to find "strings" in import list
--- FAIL: TestFindImports (0.00s)
=== RUN   TestImportDirNotExist/GO111MODULE=on
/usr/local/go/src/go/build/doesnotexist/dev/null        Import(full, 0) got error: "go/build: go list go/build/doesnotexist: open /dev/null: errno 2\n\n", want "cannot find package" or "is not in std" error
/usr/local/go/src/go/build/doesnotexist/usr/local/go/src/go/build/doesnotexist/dev/null        Import(full, FindOnly) got error: "go/build: go list go/build/doesnotexist: open /dev/null: errno 2\n\n", want "cannot find package" or "is not in std" error
/usr/local/go/src/go/build/doesnotexist    --- FAIL: TestImportDirNotExist/GO111MODULE=on (0.00s)
=== RUN   TestImportVendorFailure
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
/usr/home/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/a/b/vendor/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/a/vendor/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/a/vendor/x.com/y/z/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/vendor/usr/local/go/src/x.com/y/z/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/x.com/y/z--- FAIL: TestImportVendorFailure (0.00s)
=== RUN   TestMissingImportErrorRepetition
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
/tmp/TestMissingImportErrorRepetition227571611/tmp/TestMissingImportErrorRepetition227571611/000/tmp/TestMissingImportErrorRepetition227571611/000/go.mod/usr/tmp/usr/local/go/src/example.com/hello/dev/null--- FAIL: TestMissingImportErrorRepetition (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestMissingImportErrorRepetition227571611: errno 52
=== RUN   TestImportVendorParentFailure
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
/usr/home/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/a/b/vendor/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/a/vendor/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/a/vendor/c/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/a/vendor/c/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/vendor/usr/local/go/src/c/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/withvendor/src/c--- FAIL: TestImportVendorParentFailure (0.00s)
=== RUN   TestEmptyFolderImport
/usr/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/empty/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/empty/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/empty--- PASS: TestEmptyFolderImport (0.00s)
=== RUN   TestMultiplePackageImport
/usr/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/multi/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/multi/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/multi/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/multi/file.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/multi/file_appengine.go--- PASS: TestMultiplePackageImport (0.00s)
=== RUN   TestIssue56509
/usr/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/bads/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/bads/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/bads/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/build/testdata/bads/bad.s--- PASS: TestIssue56509 (0.00s)
=== RUN   TestDependencies
/usr/local/go/src/--- PASS: TestDependencies (99.28s)
=== RUN   TestStdlibLowercase
/usr/local/go/src/--- PASS: TestStdlibLowercase (0.00s)

```


### go/build/constraint wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 7/13
=== RUN   TestLex/0
    --- PASS: TestLex/0 (0.00s)
=== RUN   TestLex/2
    --- PASS: TestLex/2 (0.00s)
=== RUN   TestLex/3
    --- PASS: TestLex/3 (0.00s)
=== RUN   TestLex
=== RUN   TestLex/0
    --- PASS: TestLex/0 (0.00s)
=== RUN   TestLex/1
    --- PASS: TestLex/1 (0.00s)
=== RUN   TestLex/2
    --- PASS: TestLex/2 (0.00s)
=== RUN   TestLex/3
    --- PASS: TestLex/3 (0.00s)
=== RUN   TestLex/4
    --- PASS: TestLex/4 (0.00s)
=== RUN   TestLex/5
panic: invalid syntax at ²
Error: failed to run main module `/tmp/tinygo1663069396/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3a06 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x72840 - (*go/build/constraint.exprParser).lex
                           at /usr/local/go/src/go/build/constraint/expr.go:339:8
           2: 0x74c75 - go/build/constraint.lexHelp
                           at /usr/local/go/src/go/build/constraint/expr_test.go:108:7              - go/build/constraint.TestLex$1
                           at /usr/local/go/src/go/build/constraint/expr_test.go:77:24
           3: 0x30655 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x56a7c - (*testing.T).Run
           5: 0x74a39 - go/build/constraint.TestLex
                           at /usr/local/go/src/go/build/constraint/expr_test.go:73:8
           6: 0x30655 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x56a7c - (*testing.T).Run
           8: 0x3035d - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x30655 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x2c51f - <unknown>!runtime.run$1
          11: 0x1f087 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x197c - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x1ef39 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x1ecb0 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestLex/1
    --- PASS: TestLex/1 (0.00s)
=== RUN   TestLex/4
    --- PASS: TestLex/4 (0.00s)
=== RUN   TestLex/5
panic: invalid syntax at ²
Error: failed to run main module `/tmp/tinygo1663069396/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3a06 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x72840 - (*go/build/constraint.exprParser).lex
                           at /usr/local/go/src/go/build/constraint/expr.go:339:8
           2: 0x74c75 - go/build/constraint.lexHelp
                           at /usr/local/go/src/go/build/constraint/expr_test.go:108:7              - go/build/constraint.TestLex$1
                           at /usr/local/go/src/go/build/constraint/expr_test.go:77:24
           3: 0x30655 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x56a7c - (*testing.T).Run
           5: 0x74a39 - go/build/constraint.TestLex
                           at /usr/local/go/src/go/build/constraint/expr_test.go:73:8
           6: 0x30655 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x56a7c - (*testing.T).Run
           8: 0x3035d - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x30655 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x2c51f - <unknown>!runtime.run$1
          11: 0x1f087 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x197c - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x1ef39 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x1ecb0 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/constant wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestOps
panic: division by zero
Error: failed to run main module `/tmp/tinygo945076445/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2cdc - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6aa2a - (*math/big.Rat).SetFrac64
                           at /usr/local/go/src/math/big/rat.go:321:8              - math/big.NewRat
                           at /usr/local/go/src/math/big/rat.go:34:27
           2: 0x94754 - go/constant.BinaryOp
                           at /usr/local/go/src/go/constant/value.go:1136:19
           3: 0x96e6a - go/constant.doOp
                           at /usr/local/go/src/go/constant/value_test.go:534:18              - go/constant.TestOps
                           at /usr/local/go/src/go/constant/value_test.go:345:14
           4: 0x2b47f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x2b175 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x2b47f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x25298 - <unknown>!runtime.run$1
           8: 0x145c2 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1a82 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x14474 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x141eb - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/doc wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2384194296/main /tmp/tinygo2384194296/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo2384194296/main --output /tmp/tinygo2384194296/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo2384194296/main -o /tmp/tinygo2384194296/main
wasm-tools component new /tmp/tinygo2384194296/main -o /tmp/tinygo2384194296/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --wasm component-model --dir=/tmp::/tmp /tmp/tinygo2384194296/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --wasm component-model --dir=/tmp::/tmp /tmp/tinygo2384194296/main -test.v
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo2384194296/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x46dc - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x52ad - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0x3bae6 - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0x327a6 - <unknown>!runtime.initAll
           4: 0x2c961 - <unknown>!runtime.run$1
           5: 0x1fed6 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           6: 0x1d54 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           7: 0x1fd88 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           8: 0x1faff - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	go/doc	0.748s
```


### go/doc/comment wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/10006
=== RUN   TestStd
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    exec: no command
    FailNow is incomplete, requires runtime.Goexit()
    stdPkgs is out of date: regenerate with 'go generate'
        diff stdPkgs want
        --- stdPkgs
        +++ want
        @@ -1,36 +1,1 @@
        -bufio
        -bytes
        -cmp
        -context
        -crypto
        -embed
        -encoding
        -errors
        -expvar
        -flag
        -fmt
        -hash
        -html
        -image
        -io
        -log
        -maps
        -math
        -mime
        -net
        -os
        -path
        -plugin
        -reflect
        -regexp
        -runtime
        -slices
        -sort
        -strconv
        -strings
        -sync
        -syscall
        -testing
        -time
        -unicode
        -unsafe
        +
--- FAIL: TestStd (0.00s)
=== RUN   TestTestdata
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc/comment/testdata/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc/comment/testdata    no testdata
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestTestdata (0.03s)

```


### go/format wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/4
=== RUN   TestNode
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/format/format_test.go--- PASS: TestNode (0.10s)
=== RUN   TestSource
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/format/format_test.go--- PASS: TestSource (0.01s)

```


### go/importer wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/2
=== RUN   TestForCompiler
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    go list math/big: exec: no command
    FailNow is incomplete, requires runtime.Goexit()
=== RUN   TestForCompiler/LookupDefault
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo2146806939/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x388f1 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x7d4f - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x1f1b65 - (Go interface method)
           3: 0x2261c7 - go/importer.TestForCompiler$1
                           at /usr/local/go/src/go/importer/importer_test.go:41:25
           4: 0x65794 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x2201ab - (*testing.T).Run
           6: 0x225f12 - go/importer.TestForCompiler
                           at /usr/local/go/src/go/importer/importer_test.go:39:7
           7: 0x65794 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x2201ab - (*testing.T).Run
           9: 0x65498 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x65794 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x5436f - <unknown>!runtime.run$1
          12: 0x38184 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x22e2 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x38000 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          15: 0x37c4c - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestForCompiler/LookupDefault
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo2146806939/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x388f1 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x7d4f - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x1f1b65 - (Go interface method)
           3: 0x2261c7 - go/importer.TestForCompiler$1
                           at /usr/local/go/src/go/importer/importer_test.go:41:25
           4: 0x65794 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x2201ab - (*testing.T).Run
           6: 0x225f12 - go/importer.TestForCompiler
                           at /usr/local/go/src/go/importer/importer_test.go:39:7
           7: 0x65794 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x2201ab - (*testing.T).Run
           9: 0x65498 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x65794 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x5436f - <unknown>!runtime.run$1
          12: 0x38184 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x22e2 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x38000 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          15: 0x37c4c - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/parser wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/2
=== RUN   TestParse
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/parser/parser.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/parser/parser_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/parser/error_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/parser/short_test.go--- PASS: TestParse (0.21s)
=== RUN   TestParseFile
panic: (125112:0x000204f0)
Error: failed to run main module `/tmp/tinygo466446244/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x38aa - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x8fd07 - (*go/parser.parser).error
                           at /usr/local/go/src/go/parser/parser.go:277:9
           2: 0x997fd - (*go/parser.parser).parseIndexOrSliceOrInstance
                           at /usr/local/go/src/go/parser/parser.go:1587:12              - (*go/parser.parser).parsePrimaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1732:37
           3: 0xa4522 - (*go/parser.parser).parseUnaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1835:27
           4: 0x99f9a - (*go/parser.parser).parseBinaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1856:23
           5: 0x9a27f - (*go/parser.parser).parseBinaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1870:25
           6: 0xa3c84 - (*go/parser.parser).parseExpr
                           at /usr/local/go/src/go/parser/parser.go:1881:26
           7: 0x9788b - (*go/parser.parser).parseExprList
                           at /usr/local/go/src/go/parser/parser.go:502:33              - (*go/parser.parser).parseList
                           at /usr/local/go/src/go/parser/parser.go:514:25
           8: 0x92f59 - <unknown>!(*go/parser.parser).parseValueSpec$bound
           9: 0x909eb - (*go/parser.parser).parseGenDecl
                           at /usr/local/go/src/go/parser/parser.go:2740:24
          10: 0x91334 - (*go/parser.parser).parseDecl
                           at /usr/local/go/src/go/parser/parser.go:2835:9
          11: 0x8e485 - go/parser.ParseFile
                           at /usr/local/go/src/go/parser/parser.go:2886:38
          12: 0xab18e - go/parser.TestParseFile
                           at /usr/local/go/src/go/parser/parser_test.go:46:21
          13: 0x2fe12 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          14: 0x77e85 - (*testing.T).Run
          15: 0x2fb1a - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          16: 0x2fe12 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          17: 0x26072 - <unknown>!runtime.run$1
          18: 0x166b6 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          19: 0x1aa8 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          20: 0x16569 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          21: 0x162e1 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/printer wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 12/12
=== RUN   TestFiles/comments.input#01
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/comments.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/comments.x    --- PASS: TestFiles/comments.input#01 (0.01s)
=== RUN   TestFiles/comments2.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/comments2.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/comments2.golden    --- PASS: TestFiles/comments2.input (0.01s)
=== RUN   TestFiles/expressions.input#01
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/expressions.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/expressions.raw    --- PASS: TestFiles/expressions.input#01 (0.26s)
=== RUN   TestFiles
=== RUN   TestFiles/empty.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/empty.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/empty.golden    --- PASS: TestFiles/empty.input (0.03s)
=== RUN   TestFiles/comments.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/comments.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/comments.golden    --- PASS: TestFiles/comments.input (0.05s)
=== RUN   TestFiles/comments.input#01
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/comments.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/comments.x    --- PASS: TestFiles/comments.input#01 (0.01s)
=== RUN   TestFiles/comments2.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/comments2.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/comments2.golden    --- PASS: TestFiles/comments2.input (0.01s)
=== RUN   TestFiles/alignment.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/alignment.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/alignment.golden    --- PASS: TestFiles/alignment.input (0.02s)
=== RUN   TestFiles/linebreaks.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/linebreaks.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/linebreaks.golden    --- PASS: TestFiles/linebreaks.input (0.09s)
=== RUN   TestFiles/expressions.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/expressions.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/expressions.golden    --- PASS: TestFiles/expressions.input (0.19s)
=== RUN   TestFiles/expressions.input#01
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/expressions.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/expressions.raw    --- PASS: TestFiles/expressions.input#01 (0.26s)
=== RUN   TestFiles/declarations.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/declarations.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/declarations.golden    --- PASS: TestFiles/declarations.input (0.09s)
=== RUN   TestFiles/statements.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/statements.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/statements.golden    --- PASS: TestFiles/statements.input (0.05s)
=== RUN   TestFiles/slow.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/slow.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printerpanic: runtime error: slice out of range
Error: failed to run main module `/tmp/tinygo2873652232/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1849b - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x327f - runtime.slicePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:165:16
           2: 0x4781d - os.ReadFile
           3: 0xd8d97 - go/printer.runcheck
                           at /usr/local/go/src/go/printer/printer_test.go:121:25              - go/printer.check$1
                           at /usr/local/go/src/go/printer/printer_test.go:152:11
           4: 0xd9261 - <goroutine wrapper>
                           at /usr/local/go/src/go/printer/printer_test.go:151:2
           5: 0x1c99 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x17baa - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           7: 0x177f6 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestFiles/empty.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/empty.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/empty.golden    --- PASS: TestFiles/empty.input (0.03s)
=== RUN   TestFiles/comments.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/comments.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/comments.golden    --- PASS: TestFiles/comments.input (0.05s)
=== RUN   TestFiles/declarations.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/declarations.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/declarations.golden    --- PASS: TestFiles/declarations.input (0.09s)
=== RUN   TestFiles/statements.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/statements.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/statements.golden    --- PASS: TestFiles/statements.input (0.05s)
=== RUN   TestFiles/slow.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/slow.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printerpanic: runtime error: slice out of range
Error: failed to run main module `/tmp/tinygo2873652232/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1849b - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x327f - runtime.slicePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:165:16
           2: 0x4781d - os.ReadFile
           3: 0xd8d97 - go/printer.runcheck
                           at /usr/local/go/src/go/printer/printer_test.go:121:25              - go/printer.check$1
                           at /usr/local/go/src/go/printer/printer_test.go:152:11
           4: 0xd9261 - <goroutine wrapper>
                           at /usr/local/go/src/go/printer/printer_test.go:151:2
           5: 0x1c99 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x17baa - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           7: 0x177f6 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestFiles/alignment.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/alignment.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/alignment.golden    --- PASS: TestFiles/alignment.input (0.02s)
=== RUN   TestFiles/linebreaks.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/linebreaks.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/linebreaks.golden    --- PASS: TestFiles/linebreaks.input (0.09s)
=== RUN   TestFiles/expressions.input
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/expressions.input/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/printer/testdata/expressions.golden    --- PASS: TestFiles/expressions.input (0.19s)

```


### go/token wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2577185310/main /tmp/tinygo2577185310/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo2577185310/main --output /tmp/tinygo2577185310/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo2577185310/main -o /tmp/tinygo2577185310/main
wasm-tools component new /tmp/tinygo2577185310/main -o /tmp/tinygo2577185310/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --wasm component-model --dir=/tmp::/tmp /tmp/tinygo2577185310/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --wasm component-model --dir=/tmp::/tmp /tmp/tinygo2577185310/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
Error: failed to run main module `/tmp/tinygo2577185310/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x37b7 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x41cc8 - encoding/gob.checkId
                           at /usr/local/go/src/encoding/gob/type.go:633:8
           2: 0x2d18f - <unknown>!runtime.run$1
           3: 0x1fc73 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           4: 0x1bed - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           5: 0x1fb2d - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           6: 0x1f938 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	go/token	0.690s
```


### go/types wasip2/wasm

[🔝](#summary) build error

```text
FAIL	go/types	0.000s
# go/types_test
/usr/local/go/src/go/types/self_test.go:103:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
```


### hash/crc32 wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/8
=== RUN   TestArchIEEE
    Arch-specific IEEE not available.
    SkipNow is incomplete, requires runtime.Goexit()
panic: not available
Error: failed to run main module `/tmp/tinygo55069937/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x34fe - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6e501 - hash/crc32.archInitIEEE
                           at /usr/local/go/src/hash/crc32/crc32_otherarch.go:10:57
           2: 0x723e8 - hash/crc32.TestArchIEEE
                           at /usr/local/go/src/hash/crc32/crc32_test.go:232:14
           3: 0x2611c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x5450e - (*testing.T).Run
           5: 0x25e24 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x2611c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x1fd30 - <unknown>!runtime.run$1
           8: 0x136e2 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x19e8 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1359d - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x133a9 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### hash/maphash wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/13
=== RUN   TestSmhasherSmallKeys

```


### html/template wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestAddParseTreeHTML
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo4202582365/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x4401 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x573d - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0x105ac7 - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0x10f9aa - (*text/template.Template).Funcs
                           at /usr/local/go/src/text/template/template.go:181:15
           4: 0x138951 - (*html/template.escaper).commit
                           at /usr/local/go/src/html/template/escape.go:918:25              - html/template.escapeTemplate
                           at /usr/local/go/src/html/template/escape.go:40:17
           5: 0x1395f3 - (*html/template.Template).lookupAndEscapeTemplate
                           at /usr/local/go/src/html/template/template.go:163:23              - (*html/template.Template).ExecuteTemplate
                           at /usr/local/go/src/html/template/template.go:135:40
           6: 0x142963 - html/template.TestAddParseTreeHTML
                           at /usr/local/go/src/html/template/clone_test.go:25:29
           7: 0x57719 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x115e8a - (*testing.T).Run
           9: 0x57421 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x57719 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x475d8 - <unknown>!runtime.run$1
          12: 0x39ab5 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x209b - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x3996f - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          15: 0x3977a - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### image wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestNewXxxBadRectangle
panic: image: NewRGBA Rectangle has huge or negative dimensions
Error: failed to run main module `/tmp/tinygo4236018881/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x35bc - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x782ed - (image.Rectangle).Dx
                           at /usr/local/go/src/image/image.go:96:8              - image.pixelBufferLength
                           at /usr/local/go/src/image/image.go:94:47
           2: 0x76646 - image.NewRGBA
                           at /usr/local/go/src/image/image.go:229:42
           3: 0x84dac - image.TestNewXxxBadRectangle$2
                           at /usr/local/go/src/image/image_test.go:108:39
           4: 0x84f52 - image.TestNewXxxBadRectangle$1
                           at /usr/local/go/src/image/image_test.go:94:10
           5: 0x83d7a - image.TestNewXxxBadRectangle
                           at /usr/local/go/src/image/image_test.go:138:16
           6: 0x35c51 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x35947 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x35c51 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x2eedb - <unknown>!runtime.run$1
          10: 0x21f7a - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11: 0x1aa5 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x21e2d - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          13: 0x21ba5 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### image/color wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestSqDiff
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo280858431/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x348e - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x3783 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x6bbad - (Go interface method)
           3: 0x6c9cb - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48              - image/color.TestSqDiff
                           at /usr/local/go/src/image/color/color_test.go:44:28
           4: 0x26cd8 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x269ce - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x26cd8 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x2094f - <unknown>!runtime.run$1
           8: 0x138d9 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1977 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1378c - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x13504 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### image/draw wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/9
=== RUN   TestPaletted
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/testdata/video-001.png--- PASS: TestPaletted (0.08s)
=== RUN   TestSqDiff
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo4173396162/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3851 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x3b46 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x8b0d8 - (Go interface method)
           3: 0x9d81a - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48              - image/draw.TestSqDiff
                           at /usr/local/go/src/image/draw/draw_test.go:807:28
           4: 0x3f1ef - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x3eee5 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x3f1ef - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x392e8 - <unknown>!runtime.run$1
           8: 0x2a9ea - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1ab2 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x2a89d - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x2a615 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### image/gif wasip2/wasm

[🔝](#summary) build error

```text
FAIL	image/gif	0.000s
# image/gif
/usr/local/go/src/image/gif/reader_test.go:421:26: s1.HeapAlloc undefined (type *runtime.MemStats has no field or method HeapAlloc)
/usr/local/go/src/image/gif/reader_test.go:421:41: s0.HeapAlloc undefined (type *runtime.MemStats has no field or method HeapAlloc)
```


### image/jpeg wasip2/wasm

[🔝](#summary) build error

```text
FAIL	image/jpeg	0.000s
# image/jpeg
/usr/local/go/src/image/jpeg/reader_test.go:253:9: undefined: debug.SetTraceback
```


### image/png wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 6/13
=== RUN   TestPalettedDecodeConfig
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p01.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p02.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p04.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p08-trns.png--- PASS: TestPalettedDecodeConfig (0.00s)
=== RUN   TestInterlaced
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/gray-gradient.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/gray-gradient.interlaced.png--- PASS: TestInterlaced (0.00s)
=== RUN   TestPaletted8OutOfRangePixel
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/invalid-palette.png--- PASS: TestPaletted8OutOfRangePixel (0.00s)
=== RUN   TestDimensionOverflow
=== RUN   TestReader
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g01.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g01.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g01-30.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g01-30.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g02.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g02.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g02-29.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g02-29.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g04.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g04.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g04-31.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g04-31.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g08.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g16.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn0g16.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn2c08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn2c08.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn2c16.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn2c16.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p01.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p01.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p02.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p02.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p04.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p04.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p04-31i.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p04-31i.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p08.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p08-trns.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn3p08-trns.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn4a08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn4a08.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn4a16.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn6a08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn6a08.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn6a16.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/basn6a16.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbbn0g01.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbbn0g01.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbbn0g02.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbbn0g02.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbbn0g04.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbbn0g04.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbbn2c16.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbbn2c16.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbbn3p08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbbn3p08.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbgn2c16.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbgn2c16.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbgn3p08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbgn3p08.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbrn2c08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbrn2c08.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbwn0g16.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbwn0g16.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbwn3p08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbwn3p08.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbyn3p08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftbyn3p08.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftp0n0g08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftp0n0g08.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftp0n2c08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftp0n2c08.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftp0n3p08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftp0n3p08.sng/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftp1n3p08.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/pngsuite/ftp1n3p08.sng--- PASS: TestReader (0.59s)
=== RUN   TestReaderError
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/invalid-zlib.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/invalid-crc32.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/invalid-noend.png/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/image/png/testdata/invalid-trunc.png--- PASS: TestReaderError (0.00s)

```


### index/suffixarray wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 4/11
=== RUN   TestNew64/forcealloc
    --- PASS: TestNew64/forcealloc (1.21s)
=== RUN   TestNew64/exhaustive2
=== RUN   TestNew64
=== RUN   TestNew64/ababab...
    --- PASS: TestNew64/ababab... (9.72s)
=== RUN   TestNew64/forcealloc
    --- PASS: TestNew64/forcealloc (1.21s)
=== RUN   TestNew64/exhaustive2
=== RUN   TestNew64/ababab...
    --- PASS: TestNew64/ababab... (9.72s)

```


### io wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 6/58
=== RUN   TestMultiWriter_WriteStringSingleAlloc
    num allocations = 0; want 1
--- FAIL: TestMultiWriter_WriteStringSingleAlloc (0.00s)
=== RUN   TestMultiWriterSingleChainFlatten
    multiWriter did not flatten chained multiWriters: expected writeDepth 12, got 4
--- FAIL: TestMultiWriterSingleChainFlatten (0.00s)
=== RUN   TestMultiReaderFlatten
    multiReader did not flatten chained multiReaders: expected readDepth 3, got 1
--- FAIL: TestMultiReaderFlatten (0.00s)
=== RUN   TestMultiReaderFreesExhaustedReaders
    timeout waiting for collection of buf1
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestMultiReaderFreesExhaustedReaders (5.06s)
=== RUN   TestOffsetWriter_WriteAt
/tmp/TestOffsetWriter_WriteAt248183137/tmp/TestOffsetWriter_WriteAt248183137/000/tmp/TestOffsetWriter_WriteAt248183137/000/TestOffsetWriter_WriteAt42249353/tmp/TestOffsetWriter_WriteAt248183137/000/TestOffsetWriter_WriteAt42249353/off_0_at_0114398651/tmp/TestOffsetWriter_WriteAt248183137/000/TestOffsetWriter_WriteAt42249353/off_0_at_1151526095/tmp/TestOffsetWriter_WriteAt248183137/000/TestOffsetWriter_WriteAt42249353/off_1_at_0255301333/tmp/TestOffsetWriter_WriteAt248183137/000/TestOffsetWriter_WriteAt42249353/off_1_at_147304789--- PASS: TestOffsetWriter_WriteAt (0.09s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestOffsetWriter_WriteAt248183137: errno 52
=== RUN   TestWriteAt_PositionPriorToBase
/tmp/TestWriteAt_PositionPriorToBase137520303/tmp/TestWriteAt_PositionPriorToBase137520303/000/tmp/TestWriteAt_PositionPriorToBase137520303/000/TestOffsetWriter_WriteAt102163739--- PASS: TestWriteAt_PositionPriorToBase (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestWriteAt_PositionPriorToBase137520303: errno 52

```


### io/fs wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/6
=== RUN   TestGlob
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/io/fs/glob.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/io/fs    Glob(`gl?b.go`) = []string(nil) want glob.go
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/io/fs/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/io/fs/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/io    Glob(`*/glob.go`) = []string(nil) want fs/glob.go
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/io/fs/no_match/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/io/fs--- FAIL: TestGlob (0.02s)
=== RUN   TestCVE202230630
Error: failed to run main module `/tmp/tinygo3806119632/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x114cf - path.Match
                           at /usr/local/go/src/path/match.go:37:6
           1: 0x44427 - (Go interface assert)
                           at /usr/local/go/src/io/fs/glob.go:49:25              - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:44:22
           2: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           3: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           4: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           5: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           6: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           7: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           8: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           9: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          10: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          11: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          12: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          13: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          14: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          15: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          16: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          17: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          18: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          19: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          20: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          21: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          22: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          23: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          24: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          25: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          26: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          27: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          28: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          29: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          30: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          31: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          32: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          33: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          34: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          35: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          36: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          37: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          38: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          39: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          40: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          41: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          42: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          43: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          44: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          45: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          46: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          47: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          48: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          49: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          50: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          51: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          52: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          53: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          54: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          55: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          56: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          57: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          58: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          59: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          60: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          61: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          62: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          63: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          64: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          65: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          66: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          67: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          68: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          69: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          70: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          71: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          72: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          73: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          74: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          75: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          76: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          77: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          78: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          79: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          80: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          81: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          82: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          83: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          84: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          85: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          86: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          87: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          88: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          89: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          90: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          91: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          92: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          93: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          94: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          95: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          96: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          97: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          98: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          99: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         100: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         101: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         102: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         103: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         104: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         105: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         106: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         107: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         108: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         109: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         110: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         111: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         112: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         113: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         114: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         115: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         116: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         117: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         118: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         119: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         120: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         121: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         122: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         123: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         124: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         125: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         126: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         127: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         128: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         129: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         130: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         131: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         132: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         133: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         134: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         135: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         136: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         137: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         138: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         139: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         140: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         141: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         142: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         143: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         144: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         145: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         146: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         147: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         148: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         149: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         150: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         151: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         152: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         153: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         154: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         155: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         156: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         157: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         158: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         159: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         160: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         161: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         162: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         163: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         164: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         165: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         166: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         167: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         168: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         169: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         170: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         171: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         172: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         173: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         174: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         175: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         176: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         177: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         178: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         179: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         180: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         181: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         182: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         183: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         184: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         185: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         186: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         187: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         188: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         189: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         190: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         191: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         192: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         193: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         194: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         195: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         196: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         197: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         198: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         199: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         200: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         201: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         202: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         203: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         204: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         205: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         206: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         207: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         208: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         209: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         210: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         211: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         212: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         213: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         214: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         215: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         216: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         217: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         218: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         219: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         220: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         221: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         222: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         223: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         224: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         225: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         226: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         227: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         228: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         229: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         230: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         231: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         232: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         233: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         234: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         235: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         236: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         237: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         238: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         239: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         240: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         241: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         242: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         243: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         244: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         245: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         246: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         247: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         248: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         249: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         250: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         251: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         252: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         253: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         254: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         255: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         256: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         257: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         258: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         259: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         260: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         261: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         262: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         263: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         264: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         265: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         266: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         267: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         268: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         269: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         270: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         271: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         272: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         273: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         274: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         275: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         276: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         277: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         278: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         279: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         280: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         281: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         282: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         283: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         284: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         285: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         286: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         287: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         288: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         289: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         290: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         291: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         292: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         293: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         294: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         295: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         296: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         297: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         298: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         299: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         300: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         301: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         302: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         303: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         304: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         305: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         306: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         307: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         308: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         309: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         310: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         311: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         312: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         313: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         314: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         315: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         316: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         317: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         318: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         319: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         320: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         321: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         322: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         323: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         324: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         325: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         326: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         327: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         328: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         329: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         330: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         331: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         332: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         333: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         334: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         335: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         336: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         337: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         338: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         339: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         340: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         341: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         342: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         343: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         344: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         345: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         346: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         347: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         348: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         349: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         350: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         351: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         352: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         353: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         354: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         355: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         356: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         357: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         358: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         359: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         360: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         361: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         362: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         363: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         364: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         365: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         366: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         367: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         368: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         369: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         370: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         371: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         372: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         373: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         374: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         375: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         376: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         377: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         378: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         379: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         380: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         381: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         382: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         383: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         384: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         385: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         386: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         387: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         388: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         389: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         390: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         391: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         392: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         393: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         394: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         395: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         396: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         397: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         398: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         399: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         400: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         401: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         402: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         403: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         404: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         405: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         406: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         407: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         408: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         409: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         410: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         411: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         412: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         413: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         414: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         415: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         416: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         417: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         418: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         419: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         420: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         421: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         422: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         423: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         424: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         425: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         426: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         427: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         428: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         429: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         430: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         431: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         432: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         433: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         434: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         435: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         436: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         437: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         438: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         439: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         440: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         441: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         442: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         443: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         444: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         445: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         446: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         447: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         448: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         449: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         450: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         451: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         452: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         453: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         454: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         455: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         456: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         457: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         458: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         459: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         460: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         461: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         462: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         463: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         464: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         465: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         466: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         467: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         468: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         469: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         470: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         471: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         472: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         473: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         474: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         475: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         476: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         477: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         478: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         479: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         480: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         481: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         482: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         483: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         484: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         485: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         486: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         487: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         488: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         489: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         490: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         491: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         492: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         493: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         494: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         495: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         496: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         497: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         498: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         499: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         500: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         501: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         502: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         503: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         504: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         505: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         506: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         507: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         508: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         509: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         510: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         511: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         512: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         513: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         514: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         515: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         516: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         517: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         518: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         519: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         520: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         521: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         522: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         523: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         524: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         525: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         526: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         527: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         528: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         529: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         530: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         531: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         532: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         533: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         534: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         535: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         536: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         537: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         538: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         539: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         540: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         541: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         542: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         543: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         544: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         545: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         546: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         547: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         548: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         549: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         550: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         551: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         552: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         553: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         554: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         555: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         556: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         557: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         558: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         559: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         560: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         561: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         562: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         563: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         564: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         565: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         566: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         567: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         568: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         569: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         570: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         571: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         572: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         573: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         574: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         575: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         576: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         577: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         578: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         579: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         580: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         581: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         582: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         583: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         584: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         585: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         586: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         587: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         588: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         589: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         590: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         591: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         592: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         593: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         594: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         595: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         596: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         597: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         598: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         599: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         600: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         601: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         602: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         603: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         604: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         605: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         606: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         607: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         608: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         609: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         610: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         611: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         612: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         613: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         614: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         615: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         616: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         617: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         618: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         619: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         620: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         621: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         622: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         623: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         624: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         625: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         626: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         627: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         628: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         629: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         630: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         631: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         632: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         633: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         634: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         635: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         636: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         637: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         638: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         639: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         640: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         641: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         642: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         643: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         644: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         645: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         646: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         647: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         648: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         649: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         650: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         651: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         652: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         653: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         654: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         655: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         656: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         657: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         658: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         659: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         660: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         661: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         662: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         663: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         664: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         665: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         666: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         667: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         668: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         669: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         670: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         671: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         672: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         673: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         674: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         675: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         676: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         677: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         678: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         679: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         680: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         681: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         682: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         683: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         684: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         685: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         686: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         687: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         688: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         689: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         690: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         691: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         692: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         693: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         694: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         695: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         696: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         697: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         698: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         699: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         700: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         701: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         702: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         703: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         704: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         705: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         706: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         707: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         708: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         709: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         710: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         711: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         712: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         713: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         714: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         715: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         716: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         717: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         718: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         719: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         720: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         721: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         722: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         723: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         724: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         725: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         726: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         727: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         728: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         729: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         730: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         731: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         732: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         733: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         734: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         735: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         736: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         737: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         738: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         739: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         740: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         741: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         742: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         743: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         744: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         745: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         746: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         747: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         748: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         749: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         750: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         751: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         752: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         753: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         754: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         755: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         756: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         757: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         758: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         759: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         760: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         761: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         762: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         763: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         764: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         765: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         766: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         767: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         768: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         769: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         770: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         771: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         772: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         773: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         774: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         775: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         776: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         777: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         778: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         779: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         780: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         781: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         782: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         783: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         784: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         785: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         786: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         787: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         788: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         789: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         790: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         791: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         792: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         793: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         794: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         795: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         796: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         797: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         798: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         799: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         800: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         801: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         802: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         803: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         804: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         805: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         806: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         807: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         808: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         809: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         810: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         811: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         812: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         813: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         814: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         815: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         816: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         817: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         818: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         819: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         820: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         821: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         822: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         823: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         824: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         825: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         826: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         827: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         828: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         829: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         830: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         831: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         832: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         833: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         834: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         835: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         836: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         837: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         838: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         839: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         840: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         841: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         842: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         843: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         844: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         845: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         846: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         847: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         848: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         849: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         850: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         851: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         852: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         853: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         854: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         855: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         856: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         857: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         858: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         859: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         860: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         861: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         862: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         863: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         864: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         865: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         866: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         867: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         868: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         869: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         870: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         871: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         872: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         873: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         874: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         875: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         876: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         877: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         878: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         879: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         880: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         881: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         882: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         883: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         884: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         885: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         886: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         887: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         888: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         889: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         890: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         891: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         892: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         893: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         894: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         895: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         896: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         897: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         898: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         899: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         900: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         901: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         902: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         903: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         904: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         905: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         906: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         907: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         908: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         909: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         910: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         911: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         912: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         913: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         914: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         915: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         916: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         917: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         918: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         919: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         920: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         921: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         922: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         923: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         924: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         925: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         926: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         927: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         928: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         929: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         930: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         931: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         932: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         933: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         934: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         935: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         936: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         937: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         938: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         939: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         940: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         941: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         942: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         943: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         944: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         945: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         946: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         947: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         948: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         949: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         950: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         951: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         952: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         953: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         954: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         955: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         956: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         957: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         958: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         959: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         960: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         961: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         962: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         963: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         964: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         965: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         966: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         967: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         968: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         969: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         970: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         971: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         972: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         973: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         974: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         975: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         976: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         977: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         978: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         979: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         980: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         981: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         982: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         983: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         984: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         985: 0x44580 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         986: 0x44134 - io/fs.Glob
                           at /usr/local/go/src/io/fs/glob.go:34:22
         987: 0x89efe - <unknown>!io/fs_test.TestCVE202230630
         988: 0x2a230 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         989: 0x6e1da - (*testing.T).Run
         990: 0x29f38 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
         991: 0x2a230 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         992: 0x2504b - <unknown>!runtime.run$1
         993: 0x1965a - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
         994: 0x1a1d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
         995: 0x1950d - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
         996: 0x19285 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: memory fault at wasm address 0x10000002c in linear memory of size 0x60000
    3: wasm trap: out of bounds memory access

```


### io/ioutil wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 7/25
=== RUN   TestReadOnlyWriteFile
/tmp/TestReadOnlyWriteFile243427133/tmp/TestReadOnlyWriteFile243427133/blurp.txt/tmp/TestReadOnlyWriteFile243427133/blurp.txt    Expected an error when writing to read-only file /tmp/TestReadOnlyWriteFile243427133/blurp.txt
    FailNow is incomplete, requires runtime.Goexit()
/tmp/TestReadOnlyWriteFile243427133/blurp.txt    want shmorp, got florp
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestReadOnlyWriteFile (0.00s)
=== RUN   TestReadDir
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/io/ioutil/rumpelstilzchen/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/io    ReadDir ..: open ..: errno 63
    FailNow is incomplete, requires runtime.Goexit()
    ReadDir ..: io_test.go file not found
    FailNow is incomplete, requires runtime.Goexit()
    ReadDir ..: ioutil directory not found
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestReadDir (0.00s)
=== RUN   TestReadFile
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/io/ioutil/rumpelstilzchen/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/io/ioutil/ioutil_test.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/io/ioutil/ioutil_test.go--- PASS: TestReadFile (0.01s)
=== RUN   TestTempDir_BadDir
/tmp/TestTempDir_BadDir17688507/tmp/TestTempDir_BadDir17688507/not-exist/foo217192435/tmp/TestTempDir_BadDir17688507/not-exist--- PASS: TestTempDir_BadDir (0.00s)
=== RUN   TestWriteFile
/tmp/ioutil-test59146371/tmp/ioutil-test59146371/tmp/ioutil-test59146371/tmp/ioutil-test59146371--- PASS: TestWriteFile (0.00s)
=== RUN   TestTempFile
/tmp/TestTempFile_BadDir245942673/tmp/TestTempFile_BadDir245942673/_not_exists_/foo72318479--- PASS: TestTempFile (0.00s)
=== RUN   TestTempFile_pattern
/tmp/ioutil_test150651103/tmp/ioutil_test162917025/tmp/ioutil_test82615917xyz/tmp/ioutil_test82615917xyz/tmp/ioutil_test162917025/tmp/ioutil_test150651103--- PASS: TestTempFile_pattern (0.01s)

```


### log wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/9
=== RUN   TestAll
/etc/localtime/usr/local/go/lib/time/zoneinfo.zip    log output should match "^.*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^.*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/25 20:18:47.180992 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/25 20:18:47.182298 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/25 20:18:47.182513 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/25 20:18:47.182755 ???:0: hello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/25 20:18:47.182986 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/25 20:18:47.183204 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/25 20:18:47.183420 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/25 20:18:47.183654 ???:0: XXXhello 23 world"
--- FAIL: TestAll (0.01s)

```


### log/slog wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo4178115996/main /tmp/tinygo4178115996/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo4178115996/main --output /tmp/tinygo4178115996/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo4178115996/main -o /tmp/tinygo4178115996/main
wasm-tools component new /tmp/tinygo4178115996/main -o /tmp/tinygo4178115996/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --wasm component-model --dir=/tmp::/tmp /tmp/tinygo4178115996/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --wasm component-model --dir=/tmp::/tmp /tmp/tinygo4178115996/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo4178115996/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x413a - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x25f09 - testing/slogtest.withSource
                           at /usr/local/go/src/testing/slogtest/slogtest.go:362:8
           2: 0x22ecc - <unknown>!runtime.initAll
           3: 0x1f0b9 - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:24:10
           4: 0xebb1 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           5: 0x1adc - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x1efbc - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11
           7: 0x163be - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11
           8: 0x1633b - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           9: 0x162c7 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	log/slog	0.735s
```


### log/syslog wasip2/wasm

[🔝](#summary) build error

```text
FAIL	log/syslog	0.000s
# log/syslog
/usr/local/go/src/log/syslog/syslog_test.go:35:21: oe.Temporary undefined (type *net.OpError has no field or method Temporary)
/usr/local/go/src/log/syslog/syslog_test.go:110:15: undefined: net.ListenPacket
```


### maps wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo4054708081/main /tmp/tinygo4054708081/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo4054708081/main.o: undefined symbol: maps.clone
wasm-ld: error: /tmp/tinygo4054708081/main.o: undefined symbol: maps.clone
failed to run tool: wasm-ld
FAIL	maps	0.000s
error: failed to link /tmp/tinygo4054708081/main: exit status 1
```


### math/bits wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/12
=== RUN   TestAdd64OverflowPanic
panic: overflow
Error: failed to run main module `/tmp/tinygo3743008711/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2aaa - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x7151f - math/bits_test.TestAdd64OverflowPanic$1
                           at /usr/local/go/src/math/bits/bits_test.go:816:10
           2: 0x71639 - math/bits_test.TestAdd64OverflowPanic$7
                           at /usr/local/go/src/math/bits/bits_test.go:860:28
           3: 0x71764 - math/bits_test.TestAdd64OverflowPanic$6
                           at /usr/local/go/src/math/bits/bits_test.go:856:5
           4: 0x7100d - math/bits_test.TestAdd64OverflowPanic
                           at /usr/local/go/src/math/bits/bits_test.go:860:14
           5: 0x266b1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x263a7 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x266b1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x203af - <unknown>!runtime.run$1
           9: 0x13407 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1a97 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x132ba - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x13032 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### math/rand wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 8/43
=== RUN   TestDefaultRace
--- FAIL: TestDefaultRace (0.00s)
=== RUN   TestDefaultRace/0
/proc/self/exe        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/1
/proc/self/exe        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestDefaultRace/2
/proc/self/exe        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestDefaultRace/3
/proc/self/exe        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestDefaultRace/4
/proc/self/exe        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestDefaultRace/5
/proc/self/exe        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/5 (0.00s)
=== RUN   TestRegress
panic: unimplemented: (reflect.Type).Method()
Error: failed to run main module `/tmp/tinygo651897681/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x429f - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x41c6 - (reflect.rawType).Method
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1083:7
           2: 0x485e - <unknown>!(*reflect.rawType).Method
           3: 0x90563 - (Go interface method)              - math/rand_test.TestRegress
                           at /usr/local/go/src/math/rand/regress_test.go:38:24
           4: 0x22bd7 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x640c4 - (*testing.T).Run
           6: 0x228db - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x22bd7 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x1bff0 - <unknown>!runtime.run$1
           9: 0xa8d8 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1c30 - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          11: 0xa6b7 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0xa3a7 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestDefaultRace/0
/proc/self/exe        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/3
/proc/self/exe        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestDefaultRace/4
/proc/self/exe        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestDefaultRace/1
/proc/self/exe        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestDefaultRace/2
/proc/self/exe        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestDefaultRace/5
/proc/self/exe        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/5 (0.00s)

```


### math/rand/v2 wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1119736266/main /tmp/tinygo1119736266/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo1119736266/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: /tmp/tinygo1119736266/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: /tmp/tinygo1119736266/main.o: undefined symbol: internal/chacha8rand.block
failed to run tool: wasm-ld
FAIL	math/rand/v2	0.000s
error: failed to link /tmp/tinygo1119736266/main: exit status 1
```


### mime wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/14
=== RUN   TestTypeByExtension
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/mime/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/mime/testdata/test.types--- PASS: TestTypeByExtension (0.01s)
=== RUN   TestTypeByExtension_LocalData
panic: runtime error: deadlocked: no event source
Error: failed to run main module `/tmp/tinygo4112168214/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x272cc - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0xdc42 - runtime.runtimePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:72:16
           2: 0x26ca9 - runtime.waitForEvents
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/wait_other.go:6:14
           3: 0x26b09 - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:199:18              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           4: 0x26855 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### mime/multipart wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 5/11
=== RUN   TestReadForm
/tmp/multipart-118546080/tmp/multipart-118546080/tmp/multipart-118546080--- PASS: TestReadForm (0.01s)
=== RUN   TestReadForm_MetadataTooLarge
=== RUN   TestReadForm_MetadataTooLarge/large_name
    --- PASS: TestReadForm_MetadataTooLarge/large_name (0.07s)
=== RUN   TestReadForm_MetadataTooLarge/large_MIME_header
    --- PASS: TestReadForm_MetadataTooLarge/large_MIME_header (0.04s)
=== RUN   TestReadForm_MetadataTooLarge/many_parts
=== RUN   TestReadForm_MetadataTooLarge/large_name
    --- PASS: TestReadForm_MetadataTooLarge/large_name (0.07s)
=== RUN   TestReadForm_MetadataTooLarge/large_MIME_header
    --- PASS: TestReadForm_MetadataTooLarge/large_MIME_header (0.04s)
=== RUN   TestReadForm_MetadataTooLarge/many_parts

```


### net/mail wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/11
=== RUN   TestDateParsing
/etc/localtime/usr/local/go/lib/time/zoneinfo.zip--- PASS: TestDateParsing (0.00s)

```


### net/netip wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/196
=== RUN   TestInlining
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    go build: exec: no command, 
    FailNow is incomplete, requires runtime.Goexit()
    "(*uint128).halves" is no longer inlinable
    "Addr.BitLen" is no longer inlinable
    "Addr.hasZone" is no longer inlinable
    "Addr.Is4" is no longer inlinable
    "Addr.Is4In6" is no longer inlinable
    "Addr.Is6" is no longer inlinable
    "Addr.IsLoopback" is no longer inlinable
    "Addr.IsMulticast" is no longer inlinable
    "Addr.IsInterfaceLocalMulticast" is no longer inlinable
    "Addr.IsValid" is no longer inlinable
    "Addr.IsUnspecified" is no longer inlinable
    "Addr.Less" is no longer inlinable
    "Addr.Unmap" is no longer inlinable
    "Addr.Zone" is no longer inlinable
    "Addr.v4" is no longer inlinable
    "Addr.v6" is no longer inlinable
    "Addr.v6u16" is no longer inlinable
    "Addr.withoutZone" is no longer inlinable
    "AddrPortFrom" is no longer inlinable
    "AddrPort.Addr" is no longer inlinable
    "AddrPort.Port" is no longer inlinable
    "AddrPort.IsValid" is no longer inlinable
    "Prefix.IsSingleIP" is no longer inlinable
    "Prefix.Masked" is no longer inlinable
    "Prefix.IsValid" is no longer inlinable
    "PrefixFrom" is no longer inlinable
    "Prefix.Addr" is no longer inlinable
    "Prefix.Bits" is no longer inlinable
    "AddrFrom4" is no longer inlinable
    "IPv6LinkLocalAllNodes" is no longer inlinable
    "IPv6Unspecified" is no longer inlinable
    "MustParseAddr" is no longer inlinable
    "MustParseAddrPort" is no longer inlinable
    "MustParsePrefix" is no longer inlinable
    "appendDecimal" is no longer inlinable
    "appendHex" is no longer inlinable
    "uint128.addOne" is no longer inlinable
    "uint128.and" is no longer inlinable
    "uint128.bitsClearedFrom" is no longer inlinable
    "uint128.bitsSetFrom" is no longer inlinable
    "uint128.isZero" is no longer inlinable
    "uint128.not" is no longer inlinable
    "uint128.or" is no longer inlinable
    "uint128.subOne" is no longer inlinable
    "uint128.xor" is no longer inlinable
--- FAIL: TestInlining (0.00s)
=== RUN   TestAs4
panic: As4 called on IP zero value
Error: failed to run main module `/tmp/tinygo3070740010/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3b0e - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xbbbc8 - (net/netip.Addr).As4
                           at /usr/local/go/src/net/netip/netip.go:685:8
           2: 0xe38e6 - <unknown>!net/netip_test.TestAs4
           3: 0x2a240 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x758db - (*testing.T).Run
           5: 0x29f44 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x2a240 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x2406e - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/4e/4e0a8ff6a750f6f7bce278f9800eb6661caea88e4e37bb5fe37ebd8b4a66f130-d:181:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x141f9 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1ecf - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x14075 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x13c1a - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### net/rpc/jsonrpc wasip2/wasm

[🔝](#summary) build error

```text
FAIL	net/rpc/jsonrpc	0.000s
# net/rpc
/usr/local/go/src/net/rpc/server.go:290:14: method.IsExported undefined (type reflect.Method has no field or method IsExported)
```


### net/smtp wasip2/wasm

[🔝](#summary) build error

```text
FAIL	net/smtp	0.000s
# net/smtp
/usr/local/go/src/net/smtp/smtp.go:72:24: undefined: tls.Conn
/usr/local/go/src/net/smtp/smtp.go:172:25: undefined: tls.Conn
/usr/local/go/src/net/smtp/smtp_test.go:591:19: undefined: tls.X509KeyPair
/usr/local/go/src/net/smtp/smtp_test.go:598:17: undefined: tls.Listen
/usr/local/go/src/net/smtp/smtp_test.go:600:17: undefined: tls.Listen
/usr/local/go/src/net/smtp/smtp_test.go:1009:9: cs.Version undefined (type tls.ConnectionState has no field or method Version)
/usr/local/go/src/net/smtp/smtp_test.go:1009:29: cs.HandshakeComplete undefined (type tls.ConnectionState has no field or method HandshakeComplete)
/usr/local/go/src/net/smtp/smtp_test.go:1049:24: undefined: tls.X509KeyPair
/usr/local/go/src/net/smtp/smtp_test.go:1054:12: undefined: tls.Server
```


### net/url wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2298468630/main /tmp/tinygo2298468630/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo2298468630/main --output /tmp/tinygo2298468630/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo2298468630/main -o /tmp/tinygo2298468630/main
wasm-tools component new /tmp/tinygo2298468630/main -o /tmp/tinygo2298468630/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --wasm component-model --dir=/tmp::/tmp /tmp/tinygo2298468630/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --wasm component-model --dir=/tmp::/tmp /tmp/tinygo2298468630/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
Error: failed to run main module `/tmp/tinygo2298468630/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3929 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x4b06e - encoding/gob.checkId
                           at /usr/local/go/src/encoding/gob/type.go:633:8
           2: 0x347c9 - <unknown>!runtime.initAll
           3: 0x2d61d - <unknown>!runtime.run$1
           4: 0x24a08 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           5: 0x1d5f - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x248ba - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           7: 0x24631 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	net/url	0.600s
```


### os wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1680236331/main /tmp/tinygo1680236331/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1680236331/main --output /tmp/tinygo1680236331/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo1680236331/main -o /tmp/tinygo1680236331/main
wasm-tools component new /tmp/tinygo1680236331/main -o /tmp/tinygo1680236331/main
error: failed to encode a component from module

Caused by:
    0: failed to decode world from module
    1: module was not valid
    2: module requires an import interface named `env`
FAIL	os	0.000s
error: wasm-tools failed: exit status 1
```


### os/signal wasip2/wasm

[🔝](#summary) build error

```text
FAIL	os/signal	0.000s
# internal/testpty
../../../usr/local/go/src/internal/testpty/pty_cgo.go:11:10: fatal: 'fcntl.h' file not found
```


### path/filepath wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/3
=== RUN   TestGlob
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/path/filepath/match.go/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/path/filepath/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/path/filepath    Glob(`mat?h.go`) = []string(nil) want match.go
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/path/filepath/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/path/filepath/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/path    Glob(`../*/match.go`) = []string(nil) want ../filepath/match.go
/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/path/filepath/no_match/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/path--- FAIL: TestGlob (0.01s)
=== RUN   TestCVE202230632
Error: failed to run main module `/tmp/tinygo503130306/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2fea7 - runtime.hashmapGet
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/hashmap.go:338:25
           1: 0xb211 - runtime.hashmapBinaryGet
           2: 0x3460a - syscall.findPreopenForPath
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/libc_wasip2.go:876:6
           3: 0x366cc - lstat
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/libc_wasip2.go:709:36
           4: 0x3997b - syscall.Lstat
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/syscall_libc_wasi.go:383:17
           5: 0x44b60 - os.lstatNolog$1
                           at /workspaces/dc-wasm-go/tinygo/src/os/stat_unix.go:44:42
           6: 0x44d29 - os.ignoringEINTR
                           at /workspaces/dc-wasm-go/tinygo/src/os/file_anyos.go:157:6
           7: 0x448c9 - os.lstatNolog
                           at /workspaces/dc-wasm-go/tinygo/src/os/stat_unix.go:43:22              - os.Lstat
                           at /workspaces/dc-wasm-go/tinygo/src/os/stat.go:18:19
           8: 0x7e30a - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:258:23
           9: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          10: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          11: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          12: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          13: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          14: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          15: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          16: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          17: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          18: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          19: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          20: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          21: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          22: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          23: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          24: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          25: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          26: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          27: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          28: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          29: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          30: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          31: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          32: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          33: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          34: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          35: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          36: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          37: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          38: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          39: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          40: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          41: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          42: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          43: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          44: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          45: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          46: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          47: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          48: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          49: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          50: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          51: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          52: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          53: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          54: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          55: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          56: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          57: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          58: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          59: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          60: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          61: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          62: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          63: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          64: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          65: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          66: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          67: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          68: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          69: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          70: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          71: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          72: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          73: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          74: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          75: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          76: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          77: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          78: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          79: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          80: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          81: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          82: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          83: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          84: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          85: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          86: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          87: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          88: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          89: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          90: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          91: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          92: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          93: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          94: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          95: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          96: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          97: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          98: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          99: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         100: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         101: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         102: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         103: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         104: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         105: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         106: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         107: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         108: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         109: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         110: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         111: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         112: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         113: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         114: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         115: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         116: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         117: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         118: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         119: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         120: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         121: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         122: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         123: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         124: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         125: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         126: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         127: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         128: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         129: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         130: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         131: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         132: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         133: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         134: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         135: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         136: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         137: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         138: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         139: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         140: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         141: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         142: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         143: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         144: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         145: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         146: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         147: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         148: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         149: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         150: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         151: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         152: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         153: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         154: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         155: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         156: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         157: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         158: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         159: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         160: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         161: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         162: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         163: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         164: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         165: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         166: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         167: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         168: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         169: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         170: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         171: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         172: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         173: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         174: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         175: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         176: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         177: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         178: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         179: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         180: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         181: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         182: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         183: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         184: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         185: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         186: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         187: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         188: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         189: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         190: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         191: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         192: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         193: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         194: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         195: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         196: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         197: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         198: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         199: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         200: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         201: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         202: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         203: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         204: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         205: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         206: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         207: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         208: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         209: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         210: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         211: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         212: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         213: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         214: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         215: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         216: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         217: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         218: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         219: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         220: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         221: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         222: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         223: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         224: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         225: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         226: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         227: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         228: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         229: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         230: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         231: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         232: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         233: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         234: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         235: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         236: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         237: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         238: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         239: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         240: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         241: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         242: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         243: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         244: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         245: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         246: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         247: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         248: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         249: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         250: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         251: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         252: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         253: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         254: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         255: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         256: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         257: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         258: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         259: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         260: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         261: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         262: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         263: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         264: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         265: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         266: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         267: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         268: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         269: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         270: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         271: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         272: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         273: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         274: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         275: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         276: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         277: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         278: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         279: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         280: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         281: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         282: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         283: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         284: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         285: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         286: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         287: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         288: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         289: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         290: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         291: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         292: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         293: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         294: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         295: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         296: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         297: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         298: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         299: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         300: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         301: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         302: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         303: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         304: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         305: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         306: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         307: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         308: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         309: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         310: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         311: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         312: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         313: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         314: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         315: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         316: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         317: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         318: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         319: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         320: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         321: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         322: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         323: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         324: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         325: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         326: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         327: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         328: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         329: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         330: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         331: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         332: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         333: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         334: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         335: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         336: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         337: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         338: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         339: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         340: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         341: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         342: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         343: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         344: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         345: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         346: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         347: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         348: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         349: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         350: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         351: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         352: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         353: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         354: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         355: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         356: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         357: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         358: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         359: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         360: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         361: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         362: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         363: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         364: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         365: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         366: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         367: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         368: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         369: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         370: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         371: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         372: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         373: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         374: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         375: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         376: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         377: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         378: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         379: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         380: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         381: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         382: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         383: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         384: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         385: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         386: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         387: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         388: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         389: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         390: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         391: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         392: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         393: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         394: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         395: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         396: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         397: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         398: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         399: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         400: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         401: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         402: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         403: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         404: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         405: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         406: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         407: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         408: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         409: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         410: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         411: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         412: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         413: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         414: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         415: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         416: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         417: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         418: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         419: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         420: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         421: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         422: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         423: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         424: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         425: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         426: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         427: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         428: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         429: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         430: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         431: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         432: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         433: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         434: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         435: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         436: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         437: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         438: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         439: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         440: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         441: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         442: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         443: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         444: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         445: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         446: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         447: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         448: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         449: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         450: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         451: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         452: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         453: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         454: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         455: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         456: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         457: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         458: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         459: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         460: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         461: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         462: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         463: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         464: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         465: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         466: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         467: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         468: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         469: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         470: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         471: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         472: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         473: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         474: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         475: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         476: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         477: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         478: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         479: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         480: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         481: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         482: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         483: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         484: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         485: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         486: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         487: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         488: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         489: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         490: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         491: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         492: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         493: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         494: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         495: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         496: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         497: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         498: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         499: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         500: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         501: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         502: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         503: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         504: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         505: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         506: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         507: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         508: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         509: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         510: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         511: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         512: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         513: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         514: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         515: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         516: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         517: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         518: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         519: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         520: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         521: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         522: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         523: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         524: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         525: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         526: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         527: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         528: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         529: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         530: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         531: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         532: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         533: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         534: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         535: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         536: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         537: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         538: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         539: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         540: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         541: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         542: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         543: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         544: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         545: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         546: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         547: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         548: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         549: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         550: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         551: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         552: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         553: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         554: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         555: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         556: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         557: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         558: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         559: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         560: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         561: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         562: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         563: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         564: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         565: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         566: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         567: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         568: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         569: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         570: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         571: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         572: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         573: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         574: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         575: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         576: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         577: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         578: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         579: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         580: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         581: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         582: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         583: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         584: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         585: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         586: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         587: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         588: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         589: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         590: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         591: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         592: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         593: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         594: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         595: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         596: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         597: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         598: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         599: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         600: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         601: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         602: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         603: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         604: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         605: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         606: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         607: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         608: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         609: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         610: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         611: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         612: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         613: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         614: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         615: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         616: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         617: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         618: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         619: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         620: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         621: 0x7e15d - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         622: 0x7dde8 - path/filepath.Glob
                           at /usr/local/go/src/path/filepath/match.go:243:22
         623: 0x8438c - path/filepath_test.TestCVE202230632
                           at /usr/local/go/src/path/filepath/match_test.go:162:16
         624: 0x2d5f1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         625: 0x63cef - (*testing.T).Run
         626: 0x2d2f9 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
         627: 0x2d5f1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         628: 0x28641 - <unknown>!runtime.run$1
         629: 0x19eee - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
         630: 0x1a90 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
         631: 0x19da1 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
         632: 0x19b19 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: memory fault at wasm address 0x254590a8 in linear memory of size 0x180000
    3: wasm trap: out of bounds memory access

```


### plugin wasip2/wasm

[🔝](#summary) build error

```text
FAIL	plugin	0.000s
# plugin
../../../usr/local/go/src/plugin/plugin_dlopen.go:10:6: not implemented: build constraints in #cgo line
../../../usr/local/go/src/plugin/plugin_dlopen.go:11:10: fatal: 'dlfcn.h' file not found
```


### regexp wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestBadCompile
panic: expression too large
Error: failed to run main module `/tmp/tinygo2934417511/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3ad4 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x2b700 - (*regexp/syntax.parser).checkLimits
                           at /usr/local/go/src/regexp/syntax/parse.go:163:8
           2: 0x2af28 - (*regexp/syntax.parser).push
           3: 0x34823 - regexp/syntax.parse
                           at /usr/local/go/src/regexp/syntax/parse.go:1063:9              - regexp/syntax.Parse
                           at /usr/local/go/src/regexp/syntax/parse.go:889:14
           4: 0x49c8b - regexp.compile
                           at /usr/local/go/src/regexp/regexp.go:172:25
           5: 0x82e07 - regexp.Compile
                           at /usr/local/go/src/regexp/regexp.go:135:16
           6: 0x899c4 - regexp.compileTest
                           at /usr/local/go/src/regexp/all_test.go:56:20
           7: 0x8a1ad - regexp.TestBadCompile
                           at /usr/local/go/src/regexp/all_test.go:76:14
           8: 0x4d8c6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x74b5f - (*testing.T).Run
          10: 0x4d5ce - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          11: 0x4d8c6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x486f6 - <unknown>!runtime.run$1
          13: 0x3b542 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          14: 0x1af2 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          15: 0x3b3f5 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          16: 0x3b16d - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### regexp/syntax wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/8
=== RUN   TestParseInvalidRegexps
panic: expression nests too deeply
Error: failed to run main module `/tmp/tinygo3416784831/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x346d - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x5dfad - (*regexp/syntax.parser).checkHeight
                           at /usr/local/go/src/regexp/syntax/parse.go:270:8
           2: 0x5c8f8 - (*regexp/syntax.parser).checkLimits
                           at /usr/local/go/src/regexp/syntax/parse.go:166:15
           3: 0x5c0de - (*regexp/syntax.parser).push
           4: 0x6509c - regexp/syntax.parse
                           at /usr/local/go/src/regexp/syntax/parse.go:1441:7              - regexp/syntax.Parse
                           at /usr/local/go/src/regexp/syntax/parse.go:889:14
           5: 0x6c5fe - regexp/syntax.TestParseInvalidRegexps
                           at /usr/local/go/src/regexp/syntax/parse_test.go:527:22
           6: 0x2d18b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x2ce81 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x2d18b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x276cc - <unknown>!runtime.run$1
          10: 0x1a827 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11: 0x1956 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x1a6d9 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          13: 0x1a450 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### slices wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo600289870/main /tmp/tinygo600289870/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo600289870/main --output /tmp/tinygo600289870/main
FAIL	slices	0.000s
error: wasm-opt failed: signal: killed
```


### strconv wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/29
=== RUN   TestFormatComplexInvalidBitSize
panic: invalid bitSize
Error: failed to run main module `/tmp/tinygo2428840434/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3ea8 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x55ba6 - strconv.FormatComplex
                           at /usr/local/go/src/strconv/ctoa.go:16:8
           2: 0x9f9f8 - strconv_test.TestFormatComplexInvalidBitSize
                           at /usr/local/go/src/strconv/ctoa_test.go:52:19
           3: 0x376be - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x70557 - (*testing.T).Run
           5: 0x373c6 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x376be - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x23759 - <unknown>!runtime.run$1
           8: 0x16d3f - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1bb5 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x16bf2 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x1696a - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### strings wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/4
=== RUN   TestBuilderGrow
    growLen=100: got 0 allocs during Write; want 1
    growLen=1000: got 0 allocs during Write; want 1
    growLen=10000: got 0 allocs during Write; want 1
    growLen=100000: got 0 allocs during Write; want 1
panic: strings.Builder.Grow: negative count
Error: failed to run main module `/tmp/tinygo3538104764/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3f86 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x42602 - (*strings.Builder).Grow
                           at /usr/local/go/src/strings/builder.go:80:8
           2: 0x88f8f - strings_test.TestBuilderGrow
                           at /usr/local/go/src/strings/builder_test.go:120:8
           3: 0x2f5e5 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x6e015 - (*testing.T).Run
           5: 0x2f2ed - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x2f5e5 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x28ec4 - <unknown>!runtime.run$1
           8: 0x1aac0 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1cb9 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1a97b - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x1a787 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### sync/atomic wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 6/68
=== RUN   TestStoreLoadSeqCst32
    Skipping test on 1 processor machine
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestStoreLoadSeqCst32 (0.00s)
=== RUN   TestStoreLoadSeqCst64
    Skipping test on 1 processor machine
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestStoreLoadSeqCst64 (0.00s)
=== RUN   TestStoreLoadRelAcq32
    Skipping test on 1 processor machine
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestStoreLoadRelAcq32 (0.00s)
=== RUN   TestStoreLoadRelAcq64
    Skipping test on 1 processor machine
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestStoreLoadRelAcq64 (0.00s)
=== RUN   TestUnaligned64
    LoadUint64 did not panic
    LoadUint64Method did not panic
    StoreUint64 did not panic
    StoreUint64Method did not panic
    CompareAndSwapUint64 did not panic
    CompareAndSwapUint64Method did not panic
    AddUint64 did not panic
    AddUint64Method did not panic
--- FAIL: TestUnaligned64 (1.01s)
=== RUN   TestNilDeref
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo3460616340/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1509d - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x1cf8 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x84bbb - (*sync/atomic.Int32).CompareAndSwap
                           at /usr/local/go/src/sync/atomic/type.go:84:32              - sync/atomic_test.TestNilDeref$2
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2461:40
           3: 0x84018 - sync/atomic_test.TestNilDeref$59
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2525:5              - sync/atomic_test.TestNilDeref
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2526:4
           4: 0x2835d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x56e7b - (*testing.T).Run
           6: 0x28065 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x2835d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x21e06 - <unknown>!runtime.run$1
           9: 0x149fb - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1c47 - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          11: 0x148af - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x146c2 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### syscall wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestMmap
    Mmap: errno 52
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: index out of range
Error: failed to run main module `/tmp/tinygo2252094786/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1bf2e - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x23f7 - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:160:16
           2: 0x6a88b - syscall.Munmap
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/syscall_libc.go:248:42              - syscall_test.TestMmap
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/mmap_unix_test.go:19:26
           3: 0x2e388 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x2e07e - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           5: 0x2e388 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x286b4 - <unknown>!runtime.run$1
           7: 0x1b88b - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           8: 0x18fe - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           9: 0x1b73d - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          10: 0x1b4b4 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### testing wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/23
=== RUN   TestTempDirInBenchmark
/tmp/85100673/tmp/85100673/000/tmp/85100673/tmp/85100673/001/tmp/85100673/tmp/85100673/002/tmp/85100673/tmp/85100673/003/tmp/85100673/tmp/85100673/004/tmp/85100673/tmp/85100673/005/tmp/85100673/tmp/85100673/006/tmp/85100673/tmp/85100673/007/tmp/85100673/tmp/85100673/008/tmp/85100673/tmp/85100673/009/tmp/85100673/tmp/85100673/010/tmp/85100673/tmp/85100673/011/tmp/85100673/tmp/85100673/012/tmp/85100673/tmp/85100673/013/tmp/85100673/tmp/85100673/014/tmp/85100673/tmp/85100673/015/tmp/85100673/tmp/85100673/016/tmp/85100673/tmp/85100673/017/tmp/85100673/tmp/85100673/018/tmp/85100673/tmp/85100673/019/tmp/85100673/tmp/85100673/020/tmp/85100673/tmp/85100673/021/tmp/85100673/tmp/85100673/022/tmp/85100673/tmp/85100673/023/tmp/85100673/tmp/85100673/024/tmp/85100673/tmp/85100673/025/tmp/85100673/tmp/85100673/026/tmp/85100673/tmp/85100673/027/tmp/85100673/tmp/85100673/028/tmp/85100673/tmp/85100673/029/tmp/85100673/tmp/85100673/030/tmp/85100673/tmp/85100673/031/tmp/85100673/tmp/85100673/032/tmp/85100673/tmp/85100673/033/tmp/85100673/tmp/85100673/034/tmp/85100673/tmp/85100673/035/tmp/85100673/tmp/85100673/036/tmp/85100673/tmp/85100673/037/tmp/85100673/tmp/85100673/038/tmp/85100673/tmp/85100673/039/tmp/85100673/tmp/85100673/040/tmp/85100673/tmp/85100673/041/tmp/85100673/tmp/85100673/042/tmp/85100673/tmp/85100673/043/tmp/85100673/tmp/85100673/044/tmp/85100673/tmp/85100673/045/tmp/85100673/tmp/85100673/046/tmp/85100673/tmp/85100673/047/tmp/85100673/tmp/85100673/048/tmp/85100673/tmp/85100673/049/tmp/85100673/tmp/85100673/050/tmp/85100673/tmp/85100673/051/tmp/85100673/tmp/85100673/052/tmp/85100673/tmp/85100673/053/tmp/85100673/tmp/85100673/054/tmp/85100673/tmp/85100673/055/tmp/85100673/tmp/85100673/056/tmp/85100673/tmp/85100673/057/tmp/85100673/tmp/85100673/058/tmp/85100673/tmp/85100673/059/tmp/85100673/tmp/85100673/060/tmp/85100673/tmp/85100673/061/tmp/85100673/tmp/85100673/062/tmp/85100673/tmp/85100673/063/tmp/85100673/tmp/85100673/064/tmp/85100673/tmp/85100673/065/tmp/85100673/tmp/85100673/066/tmp/85100673/tmp/85100673/067/tmp/85100673/tmp/85100673/068/tmp/85100673/tmp/85100673/069/tmp/85100673/tmp/85100673/070/tmp/85100673/tmp/85100673/071/tmp/85100673/tmp/85100673/072/tmp/85100673/tmp/85100673/073/tmp/85100673/tmp/85100673/074/tmp/85100673/tmp/85100673/075/tmp/85100673/tmp/85100673/076/tmp/85100673/tmp/85100673/077/tmp/85100673/tmp/85100673/078/tmp/85100673/tmp/85100673/079/tmp/85100673/tmp/85100673/080/tmp/85100673/tmp/85100673/081/tmp/85100673/tmp/85100673/082/tmp/85100673/tmp/85100673/083/tmp/85100673/tmp/85100673/084/tmp/85100673/tmp/85100673/085/tmp/85100673/tmp/85100673/086/tmp/85100673/tmp/85100673/087/tmp/85100673/tmp/85100673/088/tmp/85100673/tmp/85100673/089/tmp/85100673/tmp/85100673/090/tmp/85100673/tmp/85100673/091/tmp/85100673/tmp/85100673/092/tmp/85100673/tmp/85100673/093/tmp/85100673/tmp/85100673/094/tmp/85100673/tmp/85100673/095/tmp/85100673/tmp/85100673/096/tmp/85100673/tmp/85100673/097/tmp/85100673/tmp/85100673/098/tmp/85100673/tmp/85100673/099/tmp/85100673/tmp/85100673/100/tmp/85100673/tmp/85100673/101/tmp/85100673/tmp/85100673/102/tmp/85100673/tmp/85100673/103/tmp/85100673/tmp/85100673/104/tmp/85100673/tmp/85100673/105/tmp/85100673/tmp/85100673/106/tmp/85100673/tmp/85100673/107/tmp/85100673/tmp/85100673/108/tmp/85100673/tmp/85100673/109/tmp/85100673/tmp/85100673/110/tmp/85100673/tmp/85100673/111/tmp/85100673/tmp/85100673/112/tmp/85100673/tmp/85100673/113/tmp/85100673/tmp/85100673/114/tmp/85100673/tmp/85100673/115/tmp/85100673/tmp/85100673/116/tmp/85100673/tmp/85100673/117/tmp/85100673/tmp/85100673/118/tmp/85100673/tmp/85100673/119/tmp/85100673/tmp/85100673/120/tmp/85100673/tmp/85100673/121/tmp/85100673/tmp/85100673/122/tmp/85100673/tmp/85100673/123/tmp/85100673/tmp/85100673/124/tmp/85100673/tmp/85100673/125/tmp/85100673/tmp/85100673/126/tmp/85100673/tmp/85100673/127/tmp/85100673/tmp/85100673/128/tmp/85100673/tmp/85100673/129/tmp/85100673/tmp/85100673/130/tmp/85100673/tmp/85100673/131/tmp/85100673/tmp/85100673/132/tmp/85100673/tmp/85100673/133/tmp/85100673/tmp/85100673/134/tmp/85100673/tmp/85100673/135/tmp/85100673/tmp/85100673/136/tmp/85100673/tmp/85100673/137/tmp/85100673/tmp/85100673/138/tmp/85100673/tmp/85100673/139/tmp/85100673/tmp/85100673/140/tmp/85100673/tmp/85100673/141/tmp/85100673/tmp/85100673/142/tmp/85100673/tmp/85100673/143/tmp/85100673/tmp/85100673/144/tmp/85100673/tmp/85100673/145/tmp/85100673/tmp/85100673/146/tmp/85100673/tmp/85100673/147/tmp/85100673/tmp/85100673/148/tmp/85100673/tmp/85100673/149/tmp/85100673/tmp/85100673/150/tmp/85100673/tmp/85100673/151/tmp/85100673/tmp/85100673/152/tmp/85100673/tmp/85100673/153/tmp/85100673/tmp/85100673/154/tmp/85100673/tmp/85100673/155/tmp/85100673/tmp/85100673/156/tmp/85100673/tmp/85100673/157/tmp/85100673/tmp/85100673/158/tmp/85100673/tmp/85100673/159/tmp/85100673/tmp/85100673/160/tmp/85100673/tmp/85100673/161/tmp/85100673/tmp/85100673/162/tmp/85100673/tmp/85100673/163/tmp/85100673/tmp/85100673/164/tmp/85100673/tmp/85100673/165/tmp/85100673/tmp/85100673/166/tmp/85100673/tmp/85100673/167/tmp/85100673/tmp/85100673/168/tmp/85100673/tmp/85100673/169/tmp/85100673/tmp/85100673/170/tmp/85100673/tmp/85100673/171/tmp/85100673/tmp/85100673/172/tmp/85100673/tmp/85100673/173/tmp/85100673/tmp/85100673/174/tmp/85100673/tmp/85100673/175/tmp/85100673/tmp/85100673/176/tmp/85100673/tmp/85100673/177/tmp/85100673/tmp/85100673/178/tmp/85100673/tmp/85100673/179/tmp/85100673/tmp/85100673/180/tmp/85100673/tmp/85100673/181/tmp/85100673/tmp/85100673/182/tmp/85100673/tmp/85100673/183/tmp/85100673/tmp/85100673/184/tmp/85100673/tmp/85100673/185/tmp/85100673/tmp/85100673/186/tmp/85100673/tmp/85100673/187/tmp/85100673/tmp/85100673/188/tmp/85100673/tmp/85100673/189/tmp/85100673/tmp/85100673/190/tmp/85100673/tmp/85100673/191/tmp/85100673/tmp/85100673/192/tmp/85100673/tmp/85100673/193/tmp/85100673/tmp/85100673/194/tmp/85100673/tmp/85100673/195/tmp/85100673/tmp/85100673/196/tmp/85100673/tmp/85100673/197/tmp/85100673/tmp/85100673/198/tmp/85100673/tmp/85100673/199/tmp/85100673/tmp/85100673/200/tmp/85100673/tmp/85100673/201/tmp/85100673/tmp/85100673/202/tmp/85100673/tmp/85100673/203/tmp/85100673/tmp/85100673/204/tmp/85100673/tmp/85100673/205/tmp/85100673/tmp/85100673/206/tmp/85100673/tmp/85100673/207/tmp/85100673/tmp/85100673/208/tmp/85100673/tmp/85100673/209/tmp/85100673/tmp/85100673/210/tmp/85100673/tmp/85100673/211/tmp/85100673/tmp/85100673/212/tmp/85100673/tmp/85100673/213/tmp/85100673/tmp/85100673/214/tmp/85100673/tmp/85100673/215/tmp/85100673/tmp/85100673/216/tmp/85100673/tmp/85100673/217/tmp/85100673/tmp/85100673/218/tmp/85100673/tmp/85100673/219/tmp/85100673/tmp/85100673/220/tmp/85100673/tmp/85100673/221/tmp/85100673/tmp/85100673/222/tmp/85100673/tmp/85100673/223/tmp/85100673/tmp/85100673/224/tmp/85100673/tmp/85100673/225/tmp/85100673/tmp/85100673/226/tmp/85100673/tmp/85100673/227/tmp/85100673/tmp/85100673/228/tmp/85100673/tmp/85100673/229/tmp/85100673/tmp/85100673/230/tmp/85100673/tmp/85100673/231/tmp/85100673/tmp/85100673/232/tmp/85100673/tmp/85100673/233/tmp/85100673/tmp/85100673/234/tmp/85100673/tmp/85100673/235/tmp/85100673/tmp/85100673/236/tmp/85100673/tmp/85100673/237/tmp/85100673/tmp/85100673/238/tmp/85100673/tmp/85100673/239/tmp/85100673/tmp/85100673/240/tmp/85100673/tmp/85100673/241/tmp/85100673/tmp/85100673/242/tmp/85100673/tmp/85100673/243/tmp/85100673/tmp/85100673/244/tmp/85100673/tmp/85100673/245/tmp/85100673/tmp/85100673/246/tmp/85100673/tmp/85100673/247/tmp/85100673/tmp/85100673/248/tmp/85100673/tmp/85100673/249/tmp/85100673/tmp/85100673/250/tmp/85100673/tmp/85100673/251/tmp/85100673/tmp/85100673/252/tmp/85100673/tmp/85100673/253/tmp/85100673/tmp/85100673/254/tmp/85100673/tmp/85100673/255/tmp/85100673/tmp/85100673/256/tmp/85100673/tmp/85100673/257/tmp/85100673/tmp/85100673/258/tmp/85100673/tmp/85100673/259/tmp/85100673/tmp/85100673/260/tmp/85100673/tmp/85100673/261/tmp/85100673/tmp/85100673/262/tmp/85100673/tmp/85100673/263/tmp/85100673/tmp/85100673/264/tmp/85100673/tmp/85100673/265/tmp/85100673/tmp/85100673/266/tmp/85100673/tmp/85100673/267/tmp/85100673/tmp/85100673/268/tmp/85100673/tmp/85100673/269/tmp/85100673/tmp/85100673/270/tmp/85100673/tmp/85100673/271/tmp/85100673/tmp/85100673/272/tmp/85100673/tmp/85100673/273/tmp/85100673/tmp/85100673/274/tmp/85100673/tmp/85100673/275/tmp/85100673/tmp/85100673/276/tmp/85100673/tmp/85100673/277/tmp/85100673/tmp/85100673/278/tmp/85100673/tmp/85100673/279/tmp/85100673/tmp/85100673/280/tmp/85100673/tmp/85100673/281/tmp/85100673/tmp/85100673/282/tmp/85100673/tmp/85100673/283/tmp/85100673/tmp/85100673/284/tmp/85100673/tmp/85100673/285/tmp/85100673/tmp/85100673/286/tmp/85100673/tmp/85100673/287/tmp/85100673/tmp/85100673/288/tmp/85100673/tmp/85100673/289/tmp/85100673/tmp/85100673/290/tmp/85100673/tmp/85100673/291/tmp/85100673/tmp/85100673/292/tmp/85100673/tmp/85100673/293/tmp/85100673/tmp/85100673/294/tmp/85100673/tmp/85100673/295/tmp/85100673/tmp/85100673/296/tmp/85100673/tmp/85100673/297/tmp/85100673/tmp/85100673/298/tmp/85100673/tmp/85100673/299/tmp/85100673/tmp/85100673/300/tmp/85100673/tmp/85100673/301/tmp/85100673/tmp/85100673/302/tmp/85100673/tmp/85100673/303/tmp/85100673/tmp/85100673/304/tmp/85100673/tmp/85100673/305/tmp/85100673/tmp/85100673/306/tmp/85100673/tmp/85100673/307/tmp/85100673/tmp/85100673/308/tmp/85100673/tmp/85100673/309/tmp/85100673/tmp/85100673/310/tmp/85100673/tmp/85100673/311/tmp/85100673/tmp/85100673/312/tmp/85100673/tmp/85100673/313/tmp/85100673/tmp/85100673/314/tmp/85100673/tmp/85100673/315/tmp/85100673/tmp/85100673/316/tmp/85100673/tmp/85100673/317/tmp/85100673/tmp/85100673/318/tmp/85100673/tmp/85100673/319/tmp/85100673/tmp/85100673/320/tmp/85100673/tmp/85100673/321/tmp/85100673/tmp/85100673/322/tmp/85100673/tmp/85100673/323/tmp/85100673/tmp/85100673/324/tmp/85100673/tmp/85100673/325/tmp/85100673/tmp/85100673/326/tmp/85100673/tmp/85100673/327/tmp/85100673/tmp/85100673/328/tmp/85100673/tmp/85100673/329/tmp/85100673/tmp/85100673/330/tmp/85100673/tmp/85100673/331/tmp/85100673/tmp/85100673/332/tmp/85100673/tmp/85100673/333/tmp/85100673/tmp/85100673/334/tmp/85100673/tmp/85100673/335/tmp/85100673/tmp/85100673/336/tmp/85100673/tmp/85100673/337/tmp/85100673/tmp/85100673/338/tmp/85100673/tmp/85100673/339/tmp/85100673/tmp/85100673/340/tmp/85100673/tmp/85100673/341/tmp/85100673/tmp/85100673/342/tmp/85100673/tmp/85100673/343/tmp/85100673/tmp/85100673/344/tmp/85100673/tmp/85100673/345/tmp/85100673/tmp/85100673/346/tmp/85100673/tmp/85100673/347/tmp/85100673/tmp/85100673/348/tmp/85100673/tmp/85100673/349/tmp/85100673/tmp/85100673/350/tmp/85100673/tmp/85100673/351/tmp/85100673/tmp/85100673/352/tmp/85100673/tmp/85100673/353/tmp/85100673/tmp/85100673/354/tmp/85100673/tmp/85100673/355/tmp/85100673/tmp/85100673/356/tmp/85100673/tmp/85100673/357/tmp/85100673/tmp/85100673/358/tmp/85100673/tmp/85100673/359/tmp/85100673/tmp/85100673/360/tmp/85100673/tmp/85100673/361/tmp/85100673/tmp/85100673/362/tmp/85100673/tmp/85100673/363/tmp/85100673/tmp/85100673/364/tmp/85100673/tmp/85100673/365/tmp/85100673/tmp/85100673/366/tmp/85100673/tmp/85100673/367/tmp/85100673/tmp/85100673/368/tmp/85100673/tmp/85100673/369/tmp/85100673/tmp/85100673/370/tmp/85100673/tmp/85100673/371/tmp/85100673/tmp/85100673/372/tmp/85100673/tmp/85100673/373/tmp/85100673/tmp/85100673/374/tmp/85100673/tmp/85100673/375/tmp/85100673/tmp/85100673/376/tmp/85100673/tmp/85100673/377/tmp/85100673/tmp/85100673/378/tmp/85100673/tmp/85100673/379/tmp/85100673/tmp/85100673/380/tmp/85100673/tmp/85100673/381/tmp/85100673/tmp/85100673/382/tmp/85100673/tmp/85100673/383/tmp/85100673/tmp/85100673/384/tmp/85100673/tmp/85100673/385/tmp/85100673/tmp/85100673/386/tmp/85100673/tmp/85100673/387/tmp/85100673/tmp/85100673/388/tmp/85100673/tmp/85100673/389/tmp/85100673/tmp/85100673/390/tmp/85100673/tmp/85100673/391/tmp/85100673/tmp/85100673/392/tmp/85100673/tmp/85100673/393/tmp/85100673/tmp/85100673/394/tmp/85100673/tmp/85100673/395/tmp/85100673/tmp/85100673/396/tmp/85100673/tmp/85100673/397/tmp/85100673/tmp/85100673/398/tmp/85100673/tmp/85100673/399/tmp/85100673/tmp/85100673/400/tmp/85100673/tmp/85100673/401/tmp/85100673/tmp/85100673/402/tmp/85100673/tmp/85100673/403/tmp/85100673/tmp/85100673/404/tmp/85100673/tmp/85100673/405/tmp/85100673/tmp/85100673/406/tmp/85100673/tmp/85100673/407/tmp/85100673/tmp/85100673/408/tmp/85100673/tmp/85100673/409/tmp/85100673/tmp/85100673/410/tmp/85100673/tmp/85100673/411/tmp/85100673/tmp/85100673/412/tmp/85100673/tmp/85100673/413/tmp/85100673/tmp/85100673/414/tmp/85100673/tmp/85100673/415/tmp/85100673/tmp/85100673/416/tmp/85100673/tmp/85100673/417/tmp/85100673/tmp/85100673/418/tmp/85100673/tmp/85100673/419/tmp/85100673/tmp/85100673/420/tmp/85100673/tmp/85100673/421/tmp/85100673/tmp/85100673/422/tmp/85100673/tmp/85100673/423/tmp/85100673/tmp/85100673/424/tmp/85100673/tmp/85100673/425/tmp/85100673/tmp/85100673/426/tmp/85100673/tmp/85100673/427/tmp/85100673/tmp/85100673/428/tmp/85100673/tmp/85100673/429/tmp/85100673/tmp/85100673/430/tmp/85100673/tmp/85100673/431/tmp/85100673/tmp/85100673/432/tmp/85100673/tmp/85100673/433/tmp/85100673/tmp/85100673/434/tmp/85100673/tmp/85100673/435/tmp/85100673/tmp/85100673/436/tmp/85100673/tmp/85100673/437/tmp/85100673/tmp/85100673/438/tmp/85100673/tmp/85100673/439/tmp/85100673/tmp/85100673/440/tmp/85100673/tmp/85100673/441/tmp/85100673/tmp/85100673/442/tmp/85100673/tmp/85100673/443/tmp/85100673/tmp/85100673/444/tmp/85100673/tmp/85100673/445/tmp/85100673/tmp/85100673/446/tmp/85100673/tmp/85100673/447/tmp/85100673/tmp/85100673/448/tmp/85100673/tmp/85100673/449/tmp/85100673/tmp/85100673/450/tmp/85100673/tmp/85100673/451/tmp/85100673/tmp/85100673/452/tmp/85100673/tmp/85100673/453/tmp/85100673/tmp/85100673/454/tmp/85100673/tmp/85100673/455/tmp/85100673/tmp/85100673/456/tmp/85100673/tmp/85100673/457/tmp/85100673/tmp/85100673/458/tmp/85100673/tmp/85100673/459/tmp/85100673/tmp/85100673/460/tmp/85100673/tmp/85100673/461/tmp/85100673/tmp/85100673/462/tmp/85100673/tmp/85100673/463/tmp/85100673/tmp/85100673/464/tmp/85100673/tmp/85100673/465/tmp/85100673/tmp/85100673/466/tmp/85100673/tmp/85100673/467/tmp/85100673/tmp/85100673/468/tmp/85100673/tmp/85100673/469/tmp/85100673/tmp/85100673/470/tmp/85100673/tmp/85100673/471/tmp/85100673/tmp/85100673/472/tmp/85100673/tmp/85100673/473/tmp/85100673/tmp/85100673/474/tmp/85100673/tmp/85100673/475/tmp/85100673/tmp/85100673/476/tmp/85100673/tmp/85100673/477/tmp/85100673/tmp/85100673/478/tmp/85100673/tmp/85100673/479/tmp/85100673/tmp/85100673/480/tmp/85100673/tmp/85100673/481/tmp/85100673/tmp/85100673/482/tmp/85100673/tmp/85100673/483/tmp/85100673/tmp/85100673/484/tmp/85100673/tmp/85100673/485/tmp/85100673/tmp/85100673/486/tmp/85100673/tmp/85100673/487/tmp/85100673/tmp/85100673/488/tmp/85100673/tmp/85100673/489/tmp/85100673/tmp/85100673/490/tmp/85100673/tmp/85100673/491/tmp/85100673/tmp/85100673/492/tmp/85100673/tmp/85100673/493/tmp/85100673/tmp/85100673/494/tmp/85100673/tmp/85100673/495/tmp/85100673/tmp/85100673/496/tmp/85100673/tmp/85100673/497/tmp/85100673/tmp/85100673/498/tmp/85100673/tmp/85100673/499/tmp/85100673/tmp/85100673/500/tmp/85100673/tmp/85100673/501/tmp/85100673/tmp/85100673/502/tmp/85100673/tmp/85100673/503/tmp/85100673/tmp/85100673/504/tmp/85100673/tmp/85100673/505/tmp/85100673/tmp/85100673/506/tmp/85100673/tmp/85100673/507/tmp/85100673/tmp/85100673/508/tmp/85100673/tmp/85100673/509/tmp/85100673/tmp/85100673/510/tmp/85100673/tmp/85100673/511/tmp/85100673/tmp/85100673/512/tmp/85100673/tmp/85100673/513/tmp/85100673/tmp/85100673/514/tmp/85100673/tmp/85100673/515/tmp/85100673/tmp/85100673/516/tmp/85100673/tmp/85100673/517/tmp/85100673/tmp/85100673/518/tmp/85100673/tmp/85100673/519/tmp/85100673/tmp/85100673/520/tmp/85100673/tmp/85100673/521/tmp/85100673/tmp/85100673/522/tmp/85100673/tmp/85100673/523/tmp/85100673/tmp/85100673/524/tmp/85100673/tmp/85100673/525/tmp/85100673/tmp/85100673/526/tmp/85100673/tmp/85100673/527/tmp/85100673/tmp/85100673/528/tmp/85100673/tmp/85100673/529/tmp/85100673/tmp/85100673/530/tmp/85100673/tmp/85100673/531/tmp/85100673/tmp/85100673/532/tmp/85100673/tmp/85100673/533/tmp/85100673/tmp/85100673/534/tmp/85100673/tmp/85100673/535/tmp/85100673/tmp/85100673/536/tmp/85100673/tmp/85100673/537/tmp/85100673/tmp/85100673/538/tmp/85100673/tmp/85100673/539/tmp/85100673/tmp/85100673/540/tmp/85100673/tmp/85100673/541/tmp/85100673/tmp/85100673/542/tmp/85100673/tmp/85100673/543/tmp/85100673/tmp/85100673/544/tmp/85100673/tmp/85100673/545/tmp/85100673/tmp/85100673/546/tmp/85100673/tmp/85100673/547/tmp/85100673/tmp/85100673/548/tmp/85100673/tmp/85100673/549/tmp/85100673/tmp/85100673/550/tmp/85100673/tmp/85100673/551/tmp/85100673/tmp/85100673/552/tmp/85100673/tmp/85100673/553/tmp/85100673/tmp/85100673/554/tmp/85100673/tmp/85100673/555/tmp/85100673/tmp/85100673/556/tmp/85100673/tmp/85100673/557/tmp/85100673/tmp/85100673/558/tmp/85100673/tmp/85100673/559/tmp/85100673/tmp/85100673/560/tmp/85100673/tmp/85100673/561/tmp/85100673/tmp/85100673/562/tmp/85100673/tmp/85100673/563/tmp/85100673/tmp/85100673/564/tmp/85100673/tmp/85100673/565/tmp/85100673/tmp/85100673/566/tmp/85100673/tmp/85100673/567/tmp/85100673/tmp/85100673/568/tmp/85100673/tmp/85100673/569/tmp/85100673/tmp/85100673/570/tmp/85100673/tmp/85100673/571/tmp/85100673/tmp/85100673/572/tmp/85100673/tmp/85100673/573/tmp/85100673/tmp/85100673/574/tmp/85100673/tmp/85100673/575/tmp/85100673/tmp/85100673/576/tmp/85100673/tmp/85100673/577/tmp/85100673/tmp/85100673/578/tmp/85100673/tmp/85100673/579/tmp/85100673/tmp/85100673/580/tmp/85100673/tmp/85100673/581/tmp/85100673/tmp/85100673/582/tmp/85100673/tmp/85100673/583/tmp/85100673/tmp/85100673/584/tmp/85100673/tmp/85100673/585/tmp/85100673/tmp/85100673/586/tmp/85100673/tmp/85100673/587/tmp/85100673/tmp/85100673/588/tmp/85100673/tmp/85100673/589/tmp/85100673/tmp/85100673/590/tmp/85100673/tmp/85100673/591/tmp/85100673/tmp/85100673/592/tmp/85100673/tmp/85100673/593/tmp/85100673/tmp/85100673/594/tmp/85100673/tmp/85100673/595/tmp/85100673/tmp/85100673/596/tmp/85100673/tmp/85100673/597/tmp/85100673/tmp/85100673/598/tmp/85100673/tmp/85100673/599/tmp/85100673/tmp/85100673/600/tmp/85100673/tmp/85100673/601/tmp/85100673/tmp/85100673/602/tmp/85100673/tmp/85100673/603/tmp/85100673/tmp/85100673/604/tmp/85100673/tmp/85100673/605/tmp/85100673/tmp/85100673/606/tmp/85100673/tmp/85100673/607/tmp/85100673/tmp/85100673/608/tmp/85100673/tmp/85100673/609/tmp/85100673/tmp/85100673/610/tmp/85100673/tmp/85100673/611/tmp/85100673/tmp/85100673/612/tmp/85100673/tmp/85100673/613/tmp/85100673/tmp/85100673/614/tmp/85100673/tmp/85100673/615/tmp/85100673/tmp/85100673/616/tmp/85100673/tmp/85100673/617/tmp/85100673/tmp/85100673/618/tmp/85100673/tmp/85100673/619/tmp/85100673/tmp/85100673/620/tmp/85100673/tmp/85100673/621/tmp/85100673/tmp/85100673/622/tmp/85100673/tmp/85100673/623/tmp/85100673/tmp/85100673/624/tmp/85100673/tmp/85100673/625/tmp/85100673/tmp/85100673/626/tmp/85100673/tmp/85100673/627/tmp/85100673/tmp/85100673/628/tmp/85100673/tmp/85100673/629/tmp/85100673/tmp/85100673/630/tmp/85100673/tmp/85100673/631/tmp/85100673/tmp/85100673/632/tmp/85100673/tmp/85100673/633/tmp/85100673/tmp/85100673/634/tmp/85100673/tmp/85100673/635/tmp/85100673/tmp/85100673/636/tmp/85100673/tmp/85100673/637/tmp/85100673/tmp/85100673/638/tmp/85100673/tmp/85100673/639/tmp/85100673/tmp/85100673/640/tmp/85100673/tmp/85100673/641/tmp/85100673/tmp/85100673/642/tmp/85100673/tmp/85100673/643/tmp/85100673/tmp/85100673/644/tmp/85100673/tmp/85100673/645/tmp/85100673/tmp/85100673/646/tmp/85100673/tmp/85100673/647/tmp/85100673/tmp/85100673/648/tmp/85100673/tmp/85100673/649/tmp/85100673/tmp/85100673/650/tmp/85100673/tmp/85100673/651/tmp/85100673/tmp/85100673/652/tmp/85100673/tmp/85100673/653/tmp/85100673/tmp/85100673/654/tmp/85100673/tmp/85100673/655/tmp/85100673/tmp/85100673/656/tmp/85100673/tmp/85100673/657/tmp/85100673/tmp/85100673/658/tmp/85100673/tmp/85100673/659/tmp/85100673/tmp/85100673/660/tmp/85100673/tmp/85100673/661/tmp/85100673/tmp/85100673/662/tmp/85100673/tmp/85100673/663/tmp/85100673/tmp/85100673/664/tmp/85100673/tmp/85100673/665/tmp/85100673/tmp/85100673/666/tmp/85100673/tmp/85100673/667/tmp/85100673/tmp/85100673/668/tmp/85100673/tmp/85100673/669/tmp/85100673/tmp/85100673/670/tmp/85100673/tmp/85100673/671/tmp/85100673/tmp/85100673/672/tmp/85100673/tmp/85100673/673/tmp/85100673/tmp/85100673/674/tmp/85100673/tmp/85100673/675/tmp/85100673/tmp/85100673/676/tmp/85100673/tmp/85100673/677/tmp/85100673/tmp/85100673/678/tmp/85100673/tmp/85100673/679/tmp/85100673/tmp/85100673/680/tmp/85100673/tmp/85100673/681/tmp/85100673/tmp/85100673/682/tmp/85100673/tmp/85100673/683/tmp/85100673/tmp/85100673/684/tmp/85100673/tmp/85100673/685/tmp/85100673/tmp/85100673/686/tmp/85100673/tmp/85100673/687/tmp/85100673/tmp/85100673/688/tmp/85100673/tmp/85100673/689/tmp/85100673/tmp/85100673/690/tmp/85100673/tmp/85100673/691/tmp/85100673/tmp/85100673/692/tmp/85100673/tmp/85100673/693/tmp/85100673/tmp/85100673/694/tmp/85100673/tmp/85100673/695/tmp/85100673/tmp/85100673/696/tmp/85100673/tmp/85100673/697/tmp/85100673/tmp/85100673/698/tmp/85100673/tmp/85100673/699/tmp/85100673/tmp/85100673/700/tmp/85100673/tmp/85100673/701/tmp/85100673/tmp/85100673/702/tmp/85100673/tmp/85100673/703/tmp/85100673/tmp/85100673/704/tmp/85100673/tmp/85100673/705/tmp/85100673/tmp/85100673/706/tmp/85100673/tmp/85100673/707/tmp/85100673/tmp/85100673/708/tmp/85100673/tmp/85100673/709/tmp/85100673/tmp/85100673/710/tmp/85100673/tmp/85100673/711/tmp/85100673/tmp/85100673/712/tmp/85100673/tmp/85100673/713/tmp/85100673/tmp/85100673/714/tmp/85100673/tmp/85100673/715/tmp/85100673/tmp/85100673/716/tmp/85100673/tmp/85100673/717/tmp/85100673/tmp/85100673/718/tmp/85100673/tmp/85100673/719/tmp/85100673/tmp/85100673/720/tmp/85100673/tmp/85100673/721/tmp/85100673/tmp/85100673/722/tmp/85100673/tmp/85100673/723/tmp/85100673/tmp/85100673/724/tmp/85100673/tmp/85100673/725/tmp/85100673/tmp/85100673/726/tmp/85100673/tmp/85100673/727/tmp/85100673/tmp/85100673/728/tmp/85100673/tmp/85100673/729/tmp/85100673/tmp/85100673/730/tmp/85100673/tmp/85100673/731/tmp/85100673/tmp/85100673/732/tmp/85100673/tmp/85100673/733/tmp/85100673/tmp/85100673/734/tmp/85100673/tmp/85100673/735/tmp/85100673/tmp/85100673/736/tmp/85100673/tmp/85100673/737/tmp/85100673/tmp/85100673/738/tmp/85100673/tmp/85100673/739/tmp/85100673/tmp/85100673/740/tmp/85100673/tmp/85100673/741/tmp/85100673/tmp/85100673/742/tmp/85100673/tmp/85100673/743/tmp/85100673/tmp/85100673/744/tmp/85100673/tmp/85100673/745/tmp/85100673/tmp/85100673/746/tmp/85100673/tmp/85100673/747/tmp/85100673/tmp/85100673/748/tmp/85100673/tmp/85100673/749/tmp/85100673/tmp/85100673/750/tmp/85100673/tmp/85100673/751/tmp/85100673/tmp/85100673/752/tmp/85100673/tmp/85100673/753/tmp/85100673/tmp/85100673/754/tmp/85100673/tmp/85100673/755/tmp/85100673/tmp/85100673/756/tmp/85100673/tmp/85100673/757/tmp/85100673/tmp/85100673/758/tmp/85100673/tmp/85100673/759/tmp/85100673/tmp/85100673/760/tmp/85100673/tmp/85100673/761/tmp/85100673/tmp/85100673/762/tmp/85100673/tmp/85100673/763/tmp/85100673/tmp/85100673/764/tmp/85100673/tmp/85100673/765/tmp/85100673/tmp/85100673/766/tmp/85100673/tmp/85100673/767/tmp/85100673/tmp/85100673/768/tmp/85100673/tmp/85100673/769/tmp/85100673/tmp/85100673/770/tmp/85100673/tmp/85100673/771/tmp/85100673/tmp/85100673/772/tmp/85100673/tmp/85100673/773/tmp/85100673/tmp/85100673/774/tmp/85100673/tmp/85100673/775/tmp/85100673/tmp/85100673/776/tmp/85100673/tmp/85100673/777/tmp/85100673/tmp/85100673/778/tmp/85100673/tmp/85100673/779/tmp/85100673/tmp/85100673/780/tmp/85100673/tmp/85100673/781/tmp/85100673/tmp/85100673/782/tmp/85100673/tmp/85100673/783/tmp/85100673/tmp/85100673/784/tmp/85100673/tmp/85100673/785/tmp/85100673/tmp/85100673/786/tmp/85100673/tmp/85100673/787/tmp/85100673/tmp/85100673/788/tmp/85100673/tmp/85100673/789/tmp/85100673/tmp/85100673/790/tmp/85100673/tmp/85100673/791/tmp/85100673/tmp/85100673/792/tmp/85100673/tmp/85100673/793/tmp/85100673/tmp/85100673/794/tmp/85100673/tmp/85100673/795/tmp/85100673/tmp/85100673/796/tmp/85100673/tmp/85100673/797/tmp/85100673/tmp/85100673/798/tmp/85100673/tmp/85100673/799/tmp/85100673/tmp/85100673/800/tmp/85100673/tmp/85100673/801/tmp/85100673/tmp/85100673/802/tmp/85100673/tmp/85100673/803/tmp/85100673/tmp/85100673/804/tmp/85100673/tmp/85100673/805/tmp/85100673/tmp/85100673/806/tmp/85100673/tmp/85100673/807/tmp/85100673/tmp/85100673/808/tmp/85100673/tmp/85100673/809/tmp/85100673/tmp/85100673/810/tmp/85100673/tmp/85100673/811/tmp/85100673/tmp/85100673/812/tmp/85100673/tmp/85100673/813/tmp/85100673/tmp/85100673/814/tmp/85100673/tmp/85100673/815/tmp/85100673/tmp/85100673/816/tmp/85100673/tmp/85100673/817/tmp/85100673/tmp/85100673/818/tmp/85100673/tmp/85100673/819/tmp/85100673/tmp/85100673/820/tmp/85100673/tmp/85100673/821/tmp/85100673/tmp/85100673/822/tmp/85100673/tmp/85100673/823/tmp/85100673/tmp/85100673/824/tmp/85100673/tmp/85100673/825/tmp/85100673/tmp/85100673/826/tmp/85100673/tmp/85100673/827/tmp/85100673/tmp/85100673/828/tmp/85100673/tmp/85100673/829/tmp/85100673/tmp/85100673/830/tmp/85100673/tmp/85100673/831/tmp/85100673/tmp/85100673/832/tmp/85100673/tmp/85100673/833/tmp/85100673/tmp/85100673/834/tmp/85100673/tmp/85100673/835/tmp/85100673/tmp/85100673/836/tmp/85100673/tmp/85100673/837/tmp/85100673/tmp/85100673/838/tmp/85100673/tmp/85100673/839/tmp/85100673/tmp/85100673/840/tmp/85100673/tmp/85100673/841/tmp/85100673/tmp/85100673/842/tmp/85100673/tmp/85100673/843/tmp/85100673/tmp/85100673/844/tmp/85100673/tmp/85100673/845/tmp/85100673/tmp/85100673/846/tmp/85100673/tmp/85100673/847/tmp/85100673/tmp/85100673/848/tmp/85100673/tmp/85100673/849/tmp/85100673/tmp/85100673/850/tmp/85100673/tmp/85100673/851/tmp/85100673/tmp/85100673/852/tmp/85100673/tmp/85100673/853/tmp/85100673/tmp/85100673/854/tmp/85100673/tmp/85100673/855/tmp/85100673/tmp/85100673/856/tmp/85100673/tmp/85100673/857/tmp/85100673/tmp/85100673/858/tmp/85100673/tmp/85100673/859/tmp/85100673/tmp/85100673/860/tmp/85100673/tmp/85100673/861/tmp/85100673/tmp/85100673/862/tmp/85100673/tmp/85100673/863/tmp/85100673/tmp/85100673/864/tmp/85100673/tmp/85100673/865/tmp/85100673/tmp/85100673/866/tmp/85100673/tmp/85100673/867/tmp/85100673/tmp/85100673/868/tmp/85100673/tmp/85100673/869/tmp/85100673/tmp/85100673/870/tmp/85100673/tmp/85100673/871/tmp/85100673/tmp/85100673/872/tmp/85100673/tmp/85100673/873/tmp/85100673/tmp/85100673/874/tmp/85100673/tmp/85100673/875/tmp/85100673/tmp/85100673/876/tmp/85100673/tmp/85100673/877/tmp/85100673/tmp/85100673/878/tmp/85100673/tmp/85100673/879/tmp/85100673/tmp/85100673/880/tmp/85100673/tmp/85100673/881/tmp/85100673/tmp/85100673/882/tmp/85100673/tmp/85100673/883/tmp/85100673/tmp/85100673/884/tmp/85100673/tmp/85100673/885/tmp/85100673/tmp/85100673/886/tmp/85100673/tmp/85100673/887/tmp/85100673/tmp/85100673/888/tmp/85100673/tmp/85100673/889/tmp/85100673/tmp/85100673/890/tmp/85100673/tmp/85100673/891/tmp/85100673/tmp/85100673/892/tmp/85100673/tmp/85100673/893/tmp/85100673/tmp/85100673/894/tmp/85100673/tmp/85100673/895/tmp/85100673/tmp/85100673/896/tmp/85100673/tmp/85100673/897/tmp/85100673/tmp/85100673/898/tmp/85100673/tmp/85100673/899/tmp/85100673/tmp/85100673/900/tmp/85100673/tmp/85100673/901/tmp/85100673/tmp/85100673/902/tmp/85100673/tmp/85100673/903/tmp/85100673/tmp/85100673/904/tmp/85100673/tmp/85100673/905/tmp/85100673/tmp/85100673/906/tmp/85100673/tmp/85100673/907/tmp/85100673/tmp/85100673/908/tmp/85100673/tmp/85100673/909/tmp/85100673/tmp/85100673/910/tmp/85100673/tmp/85100673/911/tmp/85100673/tmp/85100673/912/tmp/85100673/tmp/85100673/913/tmp/85100673/tmp/85100673/914/tmp/85100673/tmp/85100673/915/tmp/85100673/tmp/85100673/916/tmp/85100673/tmp/85100673/917/tmp/85100673/tmp/85100673/918/tmp/85100673/tmp/85100673/919/tmp/85100673/tmp/85100673/920/tmp/85100673/tmp/85100673/921/tmp/85100673/tmp/85100673/922/tmp/85100673/tmp/85100673/923/tmp/85100673/tmp/85100673/924/tmp/85100673/tmp/85100673/925/tmp/85100673/tmp/85100673/926/tmp/85100673/tmp/85100673/927/tmp/85100673/tmp/85100673/928/tmp/85100673/tmp/85100673/929/tmp/85100673/tmp/85100673/930/tmp/85100673/tmp/85100673/931/tmp/85100673/tmp/85100673/932/tmp/85100673/tmp/85100673/933/tmp/85100673/tmp/85100673/934/tmp/85100673/tmp/85100673/935/tmp/85100673/tmp/85100673/936/tmp/85100673/tmp/85100673/937/tmp/85100673/tmp/85100673/938/tmp/85100673/tmp/85100673/939/tmp/85100673/tmp/85100673/940/tmp/85100673/tmp/85100673/941/tmp/85100673/tmp/85100673/942/tmp/85100673/tmp/85100673/943/tmp/85100673/tmp/85100673/944/tmp/85100673/tmp/85100673/945/tmp/85100673/tmp/85100673/946/tmp/85100673/tmp/85100673/947/tmp/85100673/tmp/85100673/948/tmp/85100673/tmp/85100673/949/tmp/85100673/tmp/85100673/950/tmp/85100673/tmp/85100673/951/tmp/85100673/tmp/85100673/952/tmp/85100673/tmp/85100673/953/tmp/85100673/tmp/85100673/954/tmp/85100673/tmp/85100673/955/tmp/85100673/tmp/85100673/956/tmp/85100673/tmp/85100673/957/tmp/85100673/tmp/85100673/958/tmp/85100673/tmp/85100673/959/tmp/85100673/tmp/85100673/960/tmp/85100673/tmp/85100673/961/tmp/85100673/tmp/85100673/962/tmp/85100673/tmp/85100673/963/tmp/85100673/tmp/85100673/964/tmp/85100673/tmp/85100673/965/tmp/85100673/tmp/85100673/966/tmp/85100673/tmp/85100673/967/tmp/85100673/tmp/85100673/968/tmp/85100673/tmp/85100673/969/tmp/85100673/tmp/85100673/970/tmp/85100673/tmp/85100673/971/tmp/85100673/tmp/85100673/972/tmp/85100673/tmp/85100673/973/tmp/85100673/tmp/85100673/974/tmp/85100673/tmp/85100673/975/tmp/85100673/tmp/85100673/976/tmp/85100673/tmp/85100673/977/tmp/85100673/tmp/85100673/978/tmp/85100673/tmp/85100673/979/tmp/85100673/tmp/85100673/980/tmp/85100673/tmp/85100673/981/tmp/85100673/tmp/85100673/982/tmp/85100673/tmp/85100673/983/tmp/85100673/tmp/85100673/984/tmp/85100673/tmp/85100673/985/tmp/85100673/tmp/85100673/986/tmp/85100673/tmp/85100673/987/tmp/85100673/tmp/85100673/988/tmp/85100673/tmp/85100673/989/tmp/85100673/tmp/85100673/990/tmp/85100673/tmp/85100673/991/tmp/85100673/tmp/85100673/992/tmp/85100673/tmp/85100673/993/tmp/85100673/tmp/85100673/994/tmp/85100673/tmp/85100673/995/tmp/85100673/tmp/85100673/996/tmp/85100673/tmp/85100673/997/tmp/85100673/tmp/85100673/998/tmp/85100673/tmp/85100673/999/tmp/85100673/tmp/85100673/1000/tmp/85100673/tmp/85100673/1001/tmp/85100673/tmp/85100673/1002/tmp/85100673/tmp/85100673/1003/tmp/85100673/tmp/85100673/1004/tmp/85100673/tmp/85100673/1005/tmp/85100673/tmp/85100673/1006/tmp/85100673/tmp/85100673/1007/tmp/85100673/tmp/85100673/1008/tmp/85100673/tmp/85100673/1009/tmp/85100673/tmp/85100673/1010/tmp/85100673/tmp/85100673/1011/tmp/85100673/tmp/85100673/1012/tmp/85100673/tmp/85100673/1013/tmp/85100673/tmp/85100673/1014/tmp/85100673/tmp/85100673/1015/tmp/85100673/tmp/85100673/1016/tmp/85100673/tmp/85100673/1017/tmp/85100673/tmp/85100673/1018/tmp/85100673/tmp/85100673/1019/tmp/85100673/tmp/85100673/1020/tmp/85100673/tmp/85100673/1021/tmp/85100673/tmp/85100673/1022/tmp/85100673/tmp/85100673/1023/tmp/85100673/tmp/85100673/1024/tmp/85100673/tmp/85100673/1025/tmp/85100673/tmp/85100673/1026/tmp/85100673/tmp/85100673/1027/tmp/85100673/tmp/85100673/1028/tmp/85100673/tmp/85100673/1029/tmp/85100673/tmp/85100673/1030/tmp/85100673/tmp/85100673/1031/tmp/85100673/tmp/85100673/1032/tmp/85100673/tmp/85100673/1033/tmp/85100673/tmp/85100673/1034/tmp/85100673/tmp/85100673/1035/tmp/85100673/tmp/85100673/1036/tmp/85100673/tmp/85100673/1037/tmp/85100673/tmp/85100673/1038/tmp/85100673/tmp/85100673/1039/tmp/85100673/tmp/85100673/1040/tmp/85100673/tmp/85100673/1041/tmp/85100673/tmp/85100673/1042/tmp/85100673/tmp/85100673/1043/tmp/85100673/tmp/85100673/1044/tmp/85100673/tmp/85100673/1045/tmp/85100673/tmp/85100673/1046/tmp/85100673/tmp/85100673/1047/tmp/85100673/tmp/85100673/1048/tmp/85100673/tmp/85100673/1049/tmp/85100673/tmp/85100673/1050/tmp/85100673/tmp/85100673/1051/tmp/85100673/tmp/85100673/1052/tmp/85100673/tmp/85100673/1053/tmp/85100673/tmp/85100673/1054/tmp/85100673/tmp/85100673/1055/tmp/85100673/tmp/85100673/1056/tmp/85100673/tmp/85100673/1057/tmp/85100673/tmp/85100673/1058/tmp/85100673/tmp/85100673/1059/tmp/85100673/tmp/85100673/1060/tmp/85100673/tmp/85100673/1061/tmp/85100673/tmp/85100673/1062/tmp/85100673/tmp/85100673/1063/tmp/85100673/tmp/85100673/1064/tmp/85100673/tmp/85100673/1065/tmp/85100673/tmp/85100673/1066/tmp/85100673/tmp/85100673/1067/tmp/85100673/tmp/85100673/1068/tmp/85100673/tmp/85100673/1069/tmp/85100673/tmp/85100673/1070/tmp/85100673/tmp/85100673/1071/tmp/85100673/tmp/85100673/1072/tmp/85100673/tmp/85100673/1073/tmp/85100673/tmp/85100673/1074/tmp/85100673/tmp/85100673/1075/tmp/85100673/tmp/85100673/1076/tmp/85100673/tmp/85100673/1077/tmp/85100673/tmp/85100673/1078/tmp/85100673/tmp/85100673/1079/tmp/85100673/tmp/85100673/1080/tmp/85100673/tmp/85100673/1081/tmp/85100673/tmp/85100673/1082/tmp/85100673/tmp/85100673/1083/tmp/85100673/tmp/85100673/1084/tmp/85100673/tmp/85100673/1085/tmp/85100673/tmp/85100673/1086/tmp/85100673/tmp/85100673/1087/tmp/85100673/tmp/85100673/1088/tmp/85100673/tmp/85100673/1089/tmp/85100673/tmp/85100673/1090/tmp/85100673/tmp/85100673/1091/tmp/85100673/tmp/85100673/1092/tmp/85100673/tmp/85100673/1093/tmp/85100673/tmp/85100673/1094/tmp/85100673/tmp/85100673/1095/tmp/85100673/tmp/85100673/1096/tmp/85100673/tmp/85100673/1097/tmp/85100673/tmp/85100673/1098/tmp/85100673/tmp/85100673/1099/tmp/85100673/tmp/85100673/1100/tmp/85100673/tmp/85100673/1101/tmp/85100673/tmp/85100673/1102/tmp/85100673/tmp/85100673/1103/tmp/85100673/tmp/85100673/1104/tmp/85100673/tmp/85100673/1105/tmp/85100673/tmp/85100673/1106/tmp/85100673/tmp/85100673/1107/tmp/85100673/tmp/85100673/1108/tmp/85100673/tmp/85100673/1109/tmp/85100673/tmp/85100673/1110/tmp/85100673/tmp/85100673/1111/tmp/85100673/tmp/85100673/1112/tmp/85100673/tmp/85100673/1113/tmp/85100673/tmp/85100673/1114/tmp/85100673/tmp/85100673/1115/tmp/85100673/tmp/85100673/1116/tmp/85100673/tmp/85100673/1117/tmp/85100673/tmp/85100673/1118/tmp/85100673/tmp/85100673/1119/tmp/85100673/tmp/85100673/1120/tmp/85100673/tmp/85100673/1121/tmp/85100673/tmp/85100673/1122/tmp/85100673/tmp/85100673/1123/tmp/85100673/tmp/85100673/1124/tmp/85100673/tmp/85100673/1125/tmp/85100673/tmp/85100673/1126/tmp/85100673/tmp/85100673/1127/tmp/85100673/tmp/85100673/1128/tmp/85100673/tmp/85100673/1129/tmp/85100673/tmp/85100673/1130/tmp/85100673/tmp/85100673/1131/tmp/85100673/tmp/85100673/1132/tmp/85100673/tmp/85100673/1133/tmp/85100673/tmp/85100673/1134/tmp/85100673/tmp/85100673/1135/tmp/85100673/tmp/85100673/1136/tmp/85100673/tmp/85100673/1137/tmp/85100673/tmp/85100673/1138/tmp/85100673/tmp/85100673/1139/tmp/85100673/tmp/85100673/1140/tmp/85100673/tmp/85100673/1141/tmp/85100673/tmp/85100673/1142/tmp/85100673/tmp/85100673/1143/tmp/85100673/tmp/85100673/1144/tmp/85100673/tmp/85100673/1145/tmp/85100673/tmp/85100673/1146/tmp/85100673/tmp/85100673/1147/tmp/85100673/tmp/85100673/1148/tmp/85100673/tmp/85100673/1149/tmp/85100673/tmp/85100673/1150/tmp/85100673/tmp/85100673/1151/tmp/85100673/tmp/85100673/1152/tmp/85100673/tmp/85100673/1153/tmp/85100673/tmp/85100673/1154/tmp/85100673/tmp/85100673/1155/tmp/85100673/tmp/85100673/1156/tmp/85100673/tmp/85100673/1157/tmp/85100673/tmp/85100673/1158/tmp/85100673/tmp/85100673/1159/tmp/85100673/tmp/85100673/1160/tmp/85100673/tmp/85100673/1161/tmp/85100673/tmp/85100673/1162/tmp/85100673/tmp/85100673/1163/tmp/85100673/tmp/85100673/1164/tmp/85100673/tmp/85100673/1165/tmp/85100673/tmp/85100673/1166/tmp/85100673/tmp/85100673/1167/tmp/85100673/tmp/85100673/1168/tmp/85100673/tmp/85100673/1169/tmp/85100673/tmp/85100673/1170/tmp/85100673/tmp/85100673/1171/tmp/85100673/tmp/85100673/1172/tmp/85100673/tmp/85100673/1173/tmp/85100673/tmp/85100673/1174/tmp/85100673/tmp/85100673/1175/tmp/85100673/tmp/85100673/1176/tmp/85100673/tmp/85100673/1177/tmp/85100673/tmp/85100673/1178/tmp/85100673/tmp/85100673/1179/tmp/85100673/tmp/85100673/1180/tmp/85100673/tmp/85100673/1181/tmp/85100673/tmp/85100673/1182/tmp/85100673/tmp/85100673/1183/tmp/85100673/tmp/85100673/1184/tmp/85100673/tmp/85100673/1185/tmp/85100673/tmp/85100673/1186/tmp/85100673/tmp/85100673/1187/tmp/85100673/tmp/85100673/1188/tmp/85100673/tmp/85100673/1189/tmp/85100673/tmp/85100673/1190/tmp/85100673/tmp/85100673/1191/tmp/85100673/tmp/85100673/1192/tmp/85100673/tmp/85100673/1193/tmp/85100673/tmp/85100673/1194/tmp/85100673/tmp/85100673/1195/tmp/85100673/tmp/85100673/1196/tmp/85100673/tmp/85100673/1197/tmp/85100673/tmp/85100673/1198/tmp/85100673/tmp/85100673/1199/tmp/85100673/tmp/85100673/1200/tmp/85100673/tmp/85100673/1201/tmp/85100673/tmp/85100673/1202/tmp/85100673/tmp/85100673/1203/tmp/85100673/tmp/85100673/1204/tmp/85100673/tmp/85100673/1205/tmp/85100673/tmp/85100673/1206/tmp/85100673/tmp/85100673/1207/tmp/85100673/tmp/85100673/1208/tmp/85100673/tmp/85100673/1209/tmp/85100673/tmp/85100673/1210/tmp/85100673/tmp/85100673/1211/tmp/85100673/tmp/85100673/1212/tmp/85100673/tmp/85100673/1213/tmp/85100673/tmp/85100673/1214/tmp/85100673/tmp/85100673/1215/tmp/85100673/tmp/85100673/1216/tmp/85100673/tmp/85100673/1217/tmp/85100673/tmp/85100673/1218/tmp/85100673/tmp/85100673/1219/tmp/85100673/tmp/85100673/1220/tmp/85100673/tmp/85100673/1221/tmp/85100673/tmp/85100673/1222/tmp/85100673/tmp/85100673/1223/tmp/85100673/tmp/85100673/1224/tmp/85100673/tmp/85100673/1225/tmp/85100673/tmp/85100673/1226/tmp/85100673/tmp/85100673/1227/tmp/85100673/tmp/85100673/1228/tmp/85100673/tmp/85100673/1229/tmp/85100673/tmp/85100673/1230/tmp/85100673/tmp/85100673/1231/tmp/85100673/tmp/85100673/1232/tmp/85100673/tmp/85100673/1233/tmp/85100673/tmp/85100673/1234/tmp/85100673/tmp/85100673/1235/tmp/85100673/tmp/85100673/1236/tmp/85100673/tmp/85100673/1237/tmp/85100673/tmp/85100673/1238/tmp/85100673/tmp/85100673/1239/tmp/85100673/tmp/85100673/1240/tmp/85100673/tmp/85100673/1241/tmp/85100673/tmp/85100673/1242/tmp/85100673/tmp/85100673/1243/tmp/85100673/tmp/85100673/1244/tmp/85100673/tmp/85100673/1245/tmp/85100673/tmp/85100673/1246/tmp/85100673/tmp/85100673/1247/tmp/85100673/tmp/85100673/1248/tmp/85100673/tmp/85100673/1249/tmp/85100673/tmp/85100673/1250/tmp/85100673/tmp/85100673/1251/tmp/85100673/tmp/85100673/1252/tmp/85100673/tmp/85100673/1253/tmp/85100673/tmp/85100673/1254/tmp/85100673/tmp/85100673/1255/tmp/85100673/tmp/85100673/1256/tmp/85100673/tmp/85100673/1257/tmp/85100673/tmp/85100673/1258/tmp/85100673/tmp/85100673/1259/tmp/85100673/tmp/85100673/1260/tmp/85100673/tmp/85100673/1261/tmp/85100673/tmp/85100673/1262/tmp/85100673/tmp/85100673/1263/tmp/85100673/tmp/85100673/1264/tmp/85100673/tmp/85100673/1265/tmp/85100673/tmp/85100673/1266/tmp/85100673/tmp/85100673/1267/tmp/85100673/tmp/85100673/1268/tmp/85100673/tmp/85100673/1269/tmp/85100673/tmp/85100673/1270/tmp/85100673/tmp/85100673/1271/tmp/85100673/tmp/85100673/1272/tmp/85100673/tmp/85100673/1273/tmp/85100673/tmp/85100673/1274/tmp/85100673/tmp/85100673/1275/tmp/85100673/tmp/85100673/1276/tmp/85100673/tmp/85100673/1277/tmp/85100673/tmp/85100673/1278/tmp/85100673/tmp/85100673/1279/tmp/85100673/tmp/85100673/1280/tmp/85100673/tmp/85100673/1281/tmp/85100673/tmp/85100673/1282/tmp/85100673/tmp/85100673/1283/tmp/85100673/tmp/85100673/1284/tmp/85100673/tmp/85100673/1285/tmp/85100673/tmp/85100673/1286/tmp/85100673/tmp/85100673/1287/tmp/85100673/tmp/85100673/1288/tmp/85100673/tmp/85100673/1289/tmp/85100673/tmp/85100673/1290/tmp/85100673/tmp/85100673/1291/tmp/85100673/tmp/85100673/1292/tmp/85100673/tmp/85100673/1293/tmp/85100673/tmp/85100673/1294/tmp/85100673/tmp/85100673/1295/tmp/85100673/tmp/85100673/1296/tmp/85100673/tmp/85100673/1297/tmp/85100673/tmp/85100673/1298/tmp/85100673/tmp/85100673/1299/tmp/85100673/tmp/85100673/1300/tmp/85100673/tmp/85100673/1301/tmp/85100673/tmp/85100673/1302/tmp/85100673/tmp/85100673/1303/tmp/85100673/tmp/85100673/1304/tmp/85100673/tmp/85100673/1305/tmp/85100673/tmp/85100673/1306/tmp/85100673/tmp/85100673/1307/tmp/85100673/tmp/85100673/1308/tmp/85100673/tmp/85100673/1309/tmp/85100673/tmp/85100673/1310/tmp/85100673/tmp/85100673/1311/tmp/85100673/tmp/85100673/1312/tmp/85100673/tmp/85100673/1313/tmp/85100673/tmp/85100673/1314/tmp/85100673/tmp/85100673/1315/tmp/85100673/tmp/85100673/1316/tmp/85100673/tmp/85100673/1317/tmp/85100673/tmp/85100673/1318/tmp/85100673/tmp/85100673/1319/tmp/85100673/tmp/85100673/1320/tmp/85100673/tmp/85100673/1321/tmp/85100673/tmp/85100673/1322/tmp/85100673/tmp/85100673/1323/tmp/85100673/tmp/85100673/1324/tmp/85100673/tmp/85100673/1325/tmp/85100673/tmp/85100673/1326/tmp/85100673/tmp/85100673/1327/tmp/85100673/tmp/85100673/1328/tmp/85100673/tmp/85100673/1329/tmp/85100673/tmp/85100673/1330/tmp/85100673/tmp/85100673/1331/tmp/85100673/tmp/85100673/1332/tmp/85100673/tmp/85100673/1333/tmp/85100673/tmp/85100673/1334/tmp/85100673/tmp/85100673/1335/tmp/85100673/tmp/85100673/1336/tmp/85100673/tmp/85100673/1337/tmp/85100673/tmp/85100673/1338/tmp/85100673/tmp/85100673/1339/tmp/85100673/tmp/85100673/1340/tmp/85100673/tmp/85100673/1341/tmp/85100673/tmp/85100673/1342/tmp/85100673/tmp/85100673/1343/tmp/85100673/tmp/85100673/1344/tmp/85100673/tmp/85100673/1345/tmp/85100673/tmp/85100673/1346/tmp/85100673/tmp/85100673/1347/tmp/85100673/tmp/85100673/1348/tmp/85100673/tmp/85100673/1349/tmp/85100673/tmp/85100673/1350/tmp/85100673/tmp/85100673/1351/tmp/85100673/tmp/85100673/1352/tmp/85100673/tmp/85100673/1353/tmp/85100673/tmp/85100673/1354/tmp/85100673/tmp/85100673/1355/tmp/85100673/tmp/85100673/1356/tmp/85100673/tmp/85100673/1357/tmp/85100673/tmp/85100673/1358/tmp/85100673/tmp/85100673/1359/tmp/85100673/tmp/85100673/1360/tmp/85100673/tmp/85100673/1361/tmp/85100673/tmp/85100673/1362/tmp/85100673/tmp/85100673/1363/tmp/85100673/tmp/85100673/1364/tmp/85100673/tmp/85100673/1365/tmp/85100673/tmp/85100673/1366/tmp/85100673/tmp/85100673/1367/tmp/85100673/tmp/85100673/1368/tmp/85100673/tmp/85100673/1369/tmp/85100673/tmp/85100673/1370/tmp/85100673/tmp/85100673/1371/tmp/85100673/tmp/85100673/1372/tmp/85100673/tmp/85100673/1373/tmp/85100673/tmp/85100673/1374/tmp/85100673/tmp/85100673/1375/tmp/85100673/tmp/85100673/1376/tmp/85100673/tmp/85100673/1377/tmp/85100673/tmp/85100673/1378/tmp/85100673/tmp/85100673/1379/tmp/85100673/tmp/85100673/1380/tmp/85100673/tmp/85100673/1381/tmp/85100673/tmp/85100673/1382/tmp/85100673/tmp/85100673/1383/tmp/85100673/tmp/85100673/1384/tmp/85100673/tmp/85100673/1385/tmp/85100673/tmp/85100673/1386/tmp/85100673/tmp/85100673/1387/tmp/85100673/tmp/85100673/1388/tmp/85100673/tmp/85100673/1389/tmp/85100673/tmp/85100673/1390/tmp/85100673/tmp/85100673/1391/tmp/85100673/tmp/85100673/1392/tmp/85100673/tmp/85100673/1393/tmp/85100673/tmp/85100673/1394/tmp/85100673/tmp/85100673/1395/tmp/85100673/tmp/85100673/1396/tmp/85100673/tmp/85100673/1397/tmp/85100673/tmp/85100673/1398/tmp/85100673/tmp/85100673/1399/tmp/85100673/tmp/85100673/1400/tmp/85100673/tmp/85100673/1401/tmp/85100673/tmp/85100673/1402/tmp/85100673/tmp/85100673/1403/tmp/85100673/tmp/85100673/1404/tmp/85100673/tmp/85100673/1405/tmp/85100673/tmp/85100673/1406/tmp/85100673/tmp/85100673/1407/tmp/85100673/tmp/85100673/1408/tmp/85100673/tmp/85100673/1409/tmp/85100673/tmp/85100673/1410/tmp/85100673/tmp/85100673/1411/tmp/85100673/tmp/85100673/1412/tmp/85100673/tmp/85100673/1413/tmp/85100673/tmp/85100673/1414/tmp/85100673/tmp/85100673/1415/tmp/85100673/tmp/85100673/1416/tmp/85100673/tmp/85100673/1417/tmp/85100673/tmp/85100673/1418/tmp/85100673/tmp/85100673/1419/tmp/85100673/tmp/85100673/1420/tmp/85100673/tmp/85100673/1421/tmp/85100673/tmp/85100673/1422/tmp/85100673/tmp/85100673/1423/tmp/85100673/tmp/85100673/1424/tmp/85100673/tmp/85100673/1425/tmp/85100673/tmp/85100673/1426/tmp/85100673/tmp/85100673/1427/tmp/85100673/tmp/85100673/1428/tmp/85100673/tmp/85100673/1429/tmp/85100673/tmp/85100673/1430/tmp/85100673/tmp/85100673/1431/tmp/85100673/tmp/85100673/1432/tmp/85100673/tmp/85100673/1433/tmp/85100673/tmp/85100673/1434/tmp/85100673/tmp/85100673/1435/tmp/85100673/tmp/85100673/1436/tmp/85100673/tmp/85100673/1437/tmp/85100673/tmp/85100673/1438/tmp/85100673/tmp/85100673/1439/tmp/85100673/tmp/85100673/1440/tmp/85100673/tmp/85100673/1441/tmp/85100673/tmp/85100673/1442/tmp/85100673/tmp/85100673/1443/tmp/85100673/tmp/85100673/1444/tmp/85100673/tmp/85100673/1445/tmp/85100673/tmp/85100673/1446/tmp/85100673/tmp/85100673/1447/tmp/85100673/tmp/85100673/1448/tmp/85100673/tmp/85100673/1449/tmp/85100673/tmp/85100673/1450/tmp/85100673/tmp/85100673/1451/tmp/85100673/tmp/85100673/1452/tmp/85100673/tmp/85100673/1453/tmp/85100673/tmp/85100673/1454/tmp/85100673/tmp/85100673/1455/tmp/85100673/tmp/85100673/1456/tmp/85100673/tmp/85100673/1457/tmp/85100673/tmp/85100673/1458/tmp/85100673/tmp/85100673/1459/tmp/85100673/tmp/85100673/1460/tmp/85100673/tmp/85100673/1461/tmp/85100673/tmp/85100673/1462/tmp/85100673/tmp/85100673/1463/tmp/85100673/tmp/85100673/1464/tmp/85100673/tmp/85100673/1465/tmp/85100673/tmp/85100673/1466/tmp/85100673/tmp/85100673/1467/tmp/85100673/tmp/85100673/1468/tmp/85100673/tmp/85100673/1469/tmp/85100673/tmp/85100673/1470/tmp/85100673/tmp/85100673/1471/tmp/85100673/tmp/85100673/1472/tmp/85100673/tmp/85100673/1473/tmp/85100673/tmp/85100673/1474/tmp/85100673/tmp/85100673/1475/tmp/85100673/tmp/85100673/1476/tmp/85100673/tmp/85100673/1477/tmp/85100673/tmp/85100673/1478/tmp/85100673/tmp/85100673/1479/tmp/85100673/tmp/85100673/1480/tmp/85100673/tmp/85100673/1481/tmp/85100673/tmp/85100673/1482/tmp/85100673/tmp/85100673/1483/tmp/85100673/tmp/85100673/1484/tmp/85100673/tmp/85100673/1485/tmp/85100673/tmp/85100673/1486/tmp/85100673/tmp/85100673/1487/tmp/85100673/tmp/85100673/1488/tmp/85100673/tmp/85100673/1489/tmp/85100673/tmp/85100673/1490/tmp/85100673/tmp/85100673/1491/tmp/85100673/tmp/85100673/1492/tmp/85100673/tmp/85100673/1493/tmp/85100673/tmp/85100673/1494/tmp/85100673/tmp/85100673/1495/tmp/85100673/tmp/85100673/1496/tmp/85100673/tmp/85100673/1497/tmp/85100673/tmp/85100673/1498/tmp/85100673/tmp/85100673/1499/tmp/85100673/tmp/85100673/1500/tmp/85100673/tmp/85100673/1501/tmp/85100673/tmp/85100673/1502/tmp/85100673/tmp/85100673/1503/tmp/85100673/tmp/85100673/1504/tmp/85100673/tmp/85100673/1505/tmp/85100673/tmp/85100673/1506/tmp/85100673/tmp/85100673/1507/tmp/85100673/tmp/85100673/1508/tmp/85100673/tmp/85100673/1509/tmp/85100673/tmp/85100673/1510/tmp/85100673/tmp/85100673/1511/tmp/85100673/tmp/85100673/1512/tmp/85100673/tmp/85100673/1513/tmp/85100673/tmp/85100673/1514/tmp/85100673/tmp/85100673/1515/tmp/85100673/tmp/85100673/1516/tmp/85100673/tmp/85100673/1517/tmp/85100673/tmp/85100673/1518/tmp/85100673/tmp/85100673/1519/tmp/85100673/tmp/85100673/1520/tmp/85100673/tmp/85100673/1521/tmp/85100673/tmp/85100673/1522/tmp/85100673/tmp/85100673/1523/tmp/85100673/tmp/85100673/1524/tmp/85100673/tmp/85100673/1525/tmp/85100673/tmp/85100673/1526/tmp/85100673/tmp/85100673/1527/tmp/85100673/tmp/85100673/1528/tmp/85100673/tmp/85100673/1529/tmp/85100673/tmp/85100673/1530/tmp/85100673/tmp/85100673/1531/tmp/85100673/tmp/85100673/1532/tmp/85100673/tmp/85100673/1533/tmp/85100673/tmp/85100673/1534/tmp/85100673/tmp/85100673/1535/tmp/85100673/tmp/85100673/1536/tmp/85100673/tmp/85100673/1537/tmp/85100673/tmp/85100673/1538/tmp/85100673/tmp/85100673/1539/tmp/85100673/tmp/85100673/1540/tmp/85100673/tmp/85100673/1541/tmp/85100673/tmp/85100673/1542/tmp/85100673/tmp/85100673/1543/tmp/85100673/tmp/85100673/1544/tmp/85100673/tmp/85100673/1545/tmp/85100673/tmp/85100673/1546/tmp/85100673/tmp/85100673/1547/tmp/85100673/tmp/85100673/1548/tmp/85100673/tmp/85100673/1549/tmp/85100673/tmp/85100673/1550/tmp/85100673/tmp/85100673/1551/tmp/85100673/tmp/85100673/1552/tmp/85100673/tmp/85100673/1553/tmp/85100673/tmp/85100673/1554/tmp/85100673/tmp/85100673/1555/tmp/85100673/tmp/85100673/1556/tmp/85100673/tmp/85100673/1557/tmp/85100673/tmp/85100673/1558/tmp/85100673/tmp/85100673/1559/tmp/85100673/tmp/85100673/1560/tmp/85100673/tmp/85100673/1561/tmp/85100673/tmp/85100673/1562/tmp/85100673/tmp/85100673/1563/tmp/85100673/tmp/85100673/1564/tmp/85100673/tmp/85100673/1565/tmp/85100673/tmp/85100673/1566/tmp/85100673/tmp/85100673/1567/tmp/85100673/tmp/85100673/1568/tmp/85100673/tmp/85100673/1569/tmp/85100673/tmp/85100673/1570/tmp/85100673/tmp/85100673/1571/tmp/85100673/tmp/85100673/1572/tmp/85100673/tmp/85100673/1573/tmp/85100673/tmp/85100673/1574/tmp/85100673/tmp/85100673/1575/tmp/85100673/tmp/85100673/1576/tmp/85100673/tmp/85100673/1577/tmp/85100673/tmp/85100673/1578/tmp/85100673/tmp/85100673/1579/tmp/85100673/tmp/85100673/1580/tmp/85100673/tmp/85100673/1581/tmp/85100673/tmp/85100673/1582/tmp/85100673/tmp/85100673/1583/tmp/85100673/tmp/85100673/1584/tmp/85100673/tmp/85100673/1585/tmp/85100673/tmp/85100673/1586/tmp/85100673/tmp/85100673/1587/tmp/85100673/tmp/85100673/1588/tmp/85100673/tmp/85100673/1589/tmp/85100673/tmp/85100673/1590/tmp/85100673/tmp/85100673/1591/tmp/85100673/tmp/85100673/1592/tmp/85100673/tmp/85100673/1593/tmp/85100673/tmp/85100673/1594/tmp/85100673/tmp/85100673/1595/tmp/85100673/tmp/85100673/1596/tmp/85100673/tmp/85100673/1597/tmp/85100673/tmp/85100673/1598/tmp/85100673/tmp/85100673/1599/tmp/85100673/tmp/85100673/1600/tmp/85100673/tmp/85100673/1601/tmp/85100673/tmp/85100673/1602/tmp/85100673/tmp/85100673/1603/tmp/85100673/tmp/85100673/1604/tmp/85100673/tmp/85100673/1605/tmp/85100673/tmp/85100673/1606/tmp/85100673/tmp/85100673/1607/tmp/85100673/tmp/85100673/1608/tmp/85100673/tmp/85100673/1609/tmp/85100673/tmp/85100673/1610/tmp/85100673/tmp/85100673/1611/tmp/85100673/tmp/85100673/1612/tmp/85100673/tmp/85100673/1613/tmp/85100673/tmp/85100673/1614/tmp/85100673/tmp/85100673/1615/tmp/85100673/tmp/85100673/1616/tmp/85100673/tmp/85100673/1617/tmp/85100673/tmp/85100673/1618/tmp/85100673/tmp/85100673/1619/tmp/85100673/tmp/85100673/1620/tmp/85100673/tmp/85100673/1621/tmp/85100673/tmp/85100673/1622/tmp/85100673/tmp/85100673/1623/tmp/85100673/tmp/85100673/1624/tmp/85100673/tmp/85100673/1625/tmp/85100673/tmp/85100673/1626/tmp/85100673/tmp/85100673/1627/tmp/85100673/tmp/85100673/1628/tmp/85100673/tmp/85100673/1629/tmp/85100673/tmp/85100673/1630/tmp/85100673/tmp/85100673/1631/tmp/85100673/tmp/85100673/1632/tmp/85100673/tmp/85100673/1633/tmp/85100673/tmp/85100673/1634/tmp/85100673/tmp/85100673/1635/tmp/85100673/tmp/85100673/1636/tmp/85100673/tmp/85100673/1637/tmp/85100673/tmp/85100673/1638/tmp/85100673/tmp/85100673/1639/tmp/85100673/tmp/85100673/1640/tmp/85100673/tmp/85100673/1641/tmp/85100673/tmp/85100673/1642/tmp/85100673/tmp/85100673/1643/tmp/85100673/tmp/85100673/1644/tmp/85100673/tmp/85100673/1645/tmp/85100673/tmp/85100673/1646/tmp/85100673/tmp/85100673/1647/tmp/85100673/tmp/85100673/1648/tmp/85100673/tmp/85100673/1649/tmp/85100673/tmp/85100673/1650/tmp/85100673/tmp/85100673/1651/tmp/85100673/tmp/85100673/1652/tmp/85100673/tmp/85100673/1653/tmp/85100673/tmp/85100673/1654/tmp/85100673/tmp/85100673/1655/tmp/85100673/tmp/85100673/1656/tmp/85100673/tmp/85100673/1657/tmp/85100673/tmp/85100673/1658/tmp/85100673/tmp/85100673/1659/tmp/85100673/tmp/85100673/1660/tmp/85100673/tmp/85100673/1661/tmp/85100673/tmp/85100673/1662/tmp/85100673/tmp/85100673/1663/tmp/85100673/tmp/85100673/1664/tmp/85100673/tmp/85100673/1665/tmp/85100673/tmp/85100673/1666/tmp/85100673/tmp/85100673/1667/tmp/85100673/tmp/85100673/1668/tmp/85100673/tmp/85100673/1669/tmp/85100673/tmp/85100673/1670/tmp/85100673/tmp/85100673/1671/tmp/85100673/tmp/85100673/1672/tmp/85100673/tmp/85100673/1673/tmp/85100673/tmp/85100673/1674/tmp/85100673/tmp/85100673/1675/tmp/85100673/tmp/85100673/1676/tmp/85100673/tmp/85100673/1677/tmp/85100673/tmp/85100673/1678/tmp/85100673/tmp/85100673/1679/tmp/85100673/tmp/85100673/1680/tmp/85100673/tmp/85100673/1681/tmp/85100673/tmp/85100673/1682/tmp/85100673/tmp/85100673/1683/tmp/85100673/tmp/85100673/1684/tmp/85100673/tmp/85100673/1685/tmp/85100673/tmp/85100673/1686/tmp/85100673/tmp/85100673/1687/tmp/85100673/tmp/85100673/1688/tmp/85100673/tmp/85100673/1689/tmp/85100673/tmp/85100673/1690/tmp/85100673/tmp/85100673/1691/tmp/85100673/tmp/85100673/1692/tmp/85100673/tmp/85100673/1693/tmp/85100673/tmp/85100673/1694/tmp/85100673/tmp/85100673/1695/tmp/85100673/tmp/85100673/1696/tmp/85100673/tmp/85100673/1697/tmp/85100673/tmp/85100673/1698/tmp/85100673/tmp/85100673/1699/tmp/85100673/tmp/85100673/1700/tmp/85100673/tmp/85100673/1701/tmp/85100673/tmp/85100673/1702/tmp/85100673/tmp/85100673/1703/tmp/85100673/tmp/85100673/1704/tmp/85100673/tmp/85100673/1705/tmp/85100673/tmp/85100673/1706/tmp/85100673/tmp/85100673/1707/tmp/85100673/tmp/85100673/1708/tmp/85100673/tmp/85100673/1709/tmp/85100673/tmp/85100673/1710/tmp/85100673/tmp/85100673/1711/tmp/85100673/tmp/85100673/1712/tmp/85100673/tmp/85100673/1713/tmp/85100673/tmp/85100673/1714/tmp/85100673/tmp/85100673/1715/tmp/85100673/tmp/85100673/1716/tmp/85100673/tmp/85100673/1717/tmp/85100673/tmp/85100673/1718/tmp/85100673/tmp/85100673/1719/tmp/85100673/tmp/85100673/1720/tmp/85100673/tmp/85100673/1721/tmp/85100673/tmp/85100673/1722/tmp/85100673/tmp/85100673/1723/tmp/85100673/tmp/85100673/1724/tmp/85100673/tmp/85100673/1725/tmp/85100673/tmp/85100673/1726/tmp/85100673/tmp/85100673/1727/tmp/85100673/tmp/85100673/1728/tmp/85100673/tmp/85100673/1729/tmp/85100673/tmp/85100673/1730/tmp/85100673/tmp/85100673/1731/tmp/85100673/tmp/85100673/1732/tmp/85100673/tmp/85100673/1733/tmp/85100673/tmp/85100673/1734/tmp/85100673/tmp/85100673/1735/tmp/85100673/tmp/85100673/1736/tmp/85100673/tmp/85100673/1737/tmp/85100673/tmp/85100673/1738/tmp/85100673/tmp/85100673/1739/tmp/85100673/tmp/85100673/1740/tmp/85100673/tmp/85100673/1741/tmp/85100673/tmp/85100673/1742/tmp/85100673/tmp/85100673/1743/tmp/85100673/tmp/85100673/1744/tmp/85100673/tmp/85100673/1745/tmp/85100673/tmp/85100673/1746/tmp/85100673/tmp/85100673/1747/tmp/85100673/tmp/85100673/1748/tmp/85100673/tmp/85100673/1749/tmp/85100673/tmp/85100673/1750/tmp/85100673/tmp/85100673/1751/tmp/85100673/tmp/85100673/1752/tmp/85100673/tmp/85100673/1753/tmp/85100673/tmp/85100673/1754/tmp/85100673/tmp/85100673/1755/tmp/85100673/tmp/85100673/1756/tmp/85100673/tmp/85100673/1757/tmp/85100673/tmp/85100673/1758/tmp/85100673/tmp/85100673/1759/tmp/85100673/tmp/85100673/1760/tmp/85100673/tmp/85100673/1761/tmp/85100673/tmp/85100673/1762/tmp/85100673/tmp/85100673/1763/tmp/85100673/tmp/85100673/1764/tmp/85100673/tmp/85100673/1765/tmp/85100673/tmp/85100673/1766/tmp/85100673/tmp/85100673/1767/tmp/85100673/tmp/85100673/1768/tmp/85100673/tmp/85100673/1769/tmp/85100673/tmp/85100673/1770/tmp/85100673/tmp/85100673/1771/tmp/85100673/tmp/85100673/1772/tmp/85100673/tmp/85100673/1773/tmp/85100673/tmp/85100673/1774/tmp/85100673/tmp/85100673/1775/tmp/85100673/tmp/85100673/1776/tmp/85100673/tmp/85100673/1777/tmp/85100673/tmp/85100673/1778/tmp/85100673/tmp/85100673/1779/tmp/85100673/tmp/85100673/1780/tmp/85100673/tmp/85100673/1781/tmp/85100673/tmp/85100673/1782/tmp/85100673/tmp/85100673/1783/tmp/85100673/tmp/85100673/1784/tmp/85100673/tmp/85100673/1785/tmp/85100673/tmp/85100673/1786/tmp/85100673/tmp/85100673/1787/tmp/85100673/tmp/85100673/1788/tmp/85100673/tmp/85100673/1789/tmp/85100673/tmp/85100673/1790/tmp/85100673/tmp/85100673/1791/tmp/85100673/tmp/85100673/1792/tmp/85100673/tmp/85100673/1793/tmp/85100673/tmp/85100673/1794/tmp/85100673/tmp/85100673/1795/tmp/85100673/tmp/85100673/1796/tmp/85100673/tmp/85100673/1797/tmp/85100673/tmp/85100673/1798/tmp/85100673/tmp/85100673/1799/tmp/85100673/tmp/85100673/1800/tmp/85100673/tmp/85100673/1801/tmp/85100673/tmp/85100673/1802/tmp/85100673/tmp/85100673/1803/tmp/85100673/tmp/85100673/1804/tmp/85100673/tmp/85100673/1805/tmp/85100673/tmp/85100673/1806/tmp/85100673/tmp/85100673/1807/tmp/85100673/tmp/85100673/1808/tmp/85100673/tmp/85100673/1809/tmp/85100673/tmp/85100673/1810/tmp/85100673/tmp/85100673/1811/tmp/85100673/tmp/85100673/1812/tmp/85100673/tmp/85100673/1813/tmp/85100673/tmp/85100673/1814/tmp/85100673/tmp/85100673/1815/tmp/85100673/tmp/85100673/1816/tmp/85100673/tmp/85100673/1817/tmp/85100673/tmp/85100673/1818/tmp/85100673/tmp/85100673/1819/tmp/85100673/tmp/85100673/1820/tmp/85100673/tmp/85100673/1821/tmp/85100673/tmp/85100673/1822/tmp/85100673/tmp/85100673/1823/tmp/85100673/tmp/85100673/1824/tmp/85100673/tmp/85100673/1825/tmp/85100673/tmp/85100673/1826/tmp/85100673/tmp/85100673/1827/tmp/85100673/tmp/85100673/1828/tmp/85100673/tmp/85100673/1829/tmp/85100673/tmp/85100673/1830/tmp/85100673/tmp/85100673/1831/tmp/85100673/tmp/85100673/1832/tmp/85100673/tmp/85100673/1833/tmp/85100673/tmp/85100673/1834/tmp/85100673/tmp/85100673/1835/tmp/85100673/tmp/85100673/1836/tmp/85100673/tmp/85100673/1837/tmp/85100673/tmp/85100673/1838/tmp/85100673/tmp/85100673/1839/tmp/85100673/tmp/85100673/1840/tmp/85100673/tmp/85100673/1841/tmp/85100673/tmp/85100673/1842/tmp/85100673/tmp/85100673/1843/tmp/85100673/tmp/85100673/1844/tmp/85100673/tmp/85100673/1845/tmp/85100673/tmp/85100673/1846/tmp/85100673/tmp/85100673/1847/tmp/85100673/tmp/85100673/1848/tmp/85100673/tmp/85100673/1849/tmp/85100673/tmp/85100673/1850/tmp/85100673/tmp/85100673/1851/tmp/85100673/tmp/85100673/1852/tmp/85100673/tmp/85100673/1853/tmp/85100673/tmp/85100673/1854/tmp/85100673/tmp/85100673/1855/tmp/85100673/tmp/85100673/1856/tmp/85100673/tmp/85100673/1857/tmp/85100673/tmp/85100673/1858/tmp/85100673/tmp/85100673/1859/tmp/85100673/tmp/85100673/1860/tmp/85100673/tmp/85100673/1861/tmp/85100673/tmp/85100673/1862/tmp/85100673/tmp/85100673/1863/tmp/85100673/tmp/85100673/1864/tmp/85100673/tmp/85100673/1865/tmp/85100673/tmp/85100673/1866/tmp/85100673/tmp/85100673/1867/tmp/85100673/tmp/85100673/1868/tmp/85100673/tmp/85100673/1869/tmp/85100673/tmp/85100673/1870/tmp/85100673/tmp/85100673/1871/tmp/85100673/tmp/85100673/1872/tmp/85100673/tmp/85100673/1873/tmp/85100673/tmp/85100673/1874/tmp/85100673/tmp/85100673/1875/tmp/85100673/tmp/85100673/1876/tmp/85100673/tmp/85100673/1877/tmp/85100673/tmp/85100673/1878/tmp/85100673/tmp/85100673/1879/tmp/85100673/tmp/85100673/1880/tmp/85100673/tmp/85100673/1881/tmp/85100673/tmp/85100673/1882/tmp/85100673/tmp/85100673/1883/tmp/85100673/tmp/85100673/1884/tmp/85100673/tmp/85100673/1885/tmp/85100673/tmp/85100673/1886/tmp/85100673/tmp/85100673/1887/tmp/85100673/tmp/85100673/1888/tmp/85100673/tmp/85100673/1889/tmp/85100673/tmp/85100673/1890/tmp/85100673/tmp/85100673/1891/tmp/85100673/tmp/85100673/1892/tmp/85100673/tmp/85100673/1893/tmp/85100673/tmp/85100673/1894/tmp/85100673/tmp/85100673/1895/tmp/85100673/tmp/85100673/1896/tmp/85100673/tmp/85100673/1897/tmp/85100673/tmp/85100673/1898/tmp/85100673/tmp/85100673/1899/tmp/85100673/tmp/85100673/1900/tmp/85100673/tmp/85100673/1901/tmp/85100673/tmp/85100673/1902/tmp/85100673/tmp/85100673/1903/tmp/85100673/tmp/85100673/1904/tmp/85100673/tmp/85100673/1905/tmp/85100673/tmp/85100673/1906/tmp/85100673/tmp/85100673/1907/tmp/85100673/tmp/85100673/1908/tmp/85100673/tmp/85100673/1909/tmp/85100673/tmp/85100673/1910/tmp/85100673/tmp/85100673/1911/tmp/85100673/tmp/85100673/1912/tmp/85100673/tmp/85100673/1913/tmp/85100673/tmp/85100673/1914/tmp/85100673/tmp/85100673/1915/tmp/85100673/tmp/85100673/1916/tmp/85100673/tmp/85100673/1917/tmp/85100673/tmp/85100673/1918/tmp/85100673/tmp/85100673/1919/tmp/85100673/tmp/85100673/1920/tmp/85100673/tmp/85100673/1921/tmp/85100673/tmp/85100673/1922/tmp/85100673/tmp/85100673/1923/tmp/85100673/tmp/85100673/1924/tmp/85100673/tmp/85100673/1925/tmp/85100673/tmp/85100673/1926/tmp/85100673/tmp/85100673/1927/tmp/85100673/tmp/85100673/1928/tmp/85100673/tmp/85100673/1929/tmp/85100673/tmp/85100673/1930/tmp/85100673/tmp/85100673/1931/tmp/85100673/tmp/85100673/1932/tmp/85100673/tmp/85100673/1933/tmp/85100673/tmp/85100673/1934/tmp/85100673/tmp/85100673/1935/tmp/85100673/tmp/85100673/1936/tmp/85100673/tmp/85100673/1937/tmp/85100673/tmp/85100673/1938/tmp/85100673/tmp/85100673/1939/tmp/85100673/tmp/85100673/1940/tmp/85100673/tmp/85100673/1941/tmp/85100673/tmp/85100673/1942/tmp/85100673/tmp/85100673/1943/tmp/85100673/tmp/85100673/1944/tmp/85100673/tmp/85100673/1945/tmp/85100673/tmp/85100673/1946/tmp/85100673/tmp/85100673/1947/tmp/85100673/tmp/85100673/1948/tmp/85100673/tmp/85100673/1949/tmp/85100673/tmp/85100673/1950/tmp/85100673/tmp/85100673/1951/tmp/85100673/tmp/85100673/1952/tmp/85100673/tmp/85100673/1953/tmp/85100673/tmp/85100673/1954/tmp/85100673/tmp/85100673/1955/tmp/85100673/tmp/85100673/1956/tmp/85100673/tmp/85100673/1957/tmp/85100673/tmp/85100673/1958/tmp/85100673/tmp/85100673/1959/tmp/85100673/tmp/85100673/1960/tmp/85100673/tmp/85100673/1961/tmp/85100673/tmp/85100673/1962/tmp/85100673/tmp/85100673/1963/tmp/85100673/tmp/85100673/1964/tmp/85100673/tmp/85100673/1965/tmp/85100673/tmp/85100673/1966/tmp/85100673/tmp/85100673/1967/tmp/85100673/tmp/85100673/1968/tmp/85100673/tmp/85100673/1969/tmp/85100673/tmp/85100673/1970/tmp/85100673/tmp/85100673/1971/tmp/85100673/tmp/85100673/1972/tmp/85100673/tmp/85100673/1973/tmp/85100673/tmp/85100673/1974/tmp/85100673/tmp/85100673/1975/tmp/85100673/tmp/85100673/1976/tmp/85100673/tmp/85100673/1977/tmp/85100673/tmp/85100673/1978/tmp/85100673/tmp/85100673/1979/tmp/85100673/tmp/85100673/1980/tmp/85100673/tmp/85100673/1981/tmp/85100673/tmp/85100673/1982/tmp/85100673/tmp/85100673/1983/tmp/85100673/tmp/85100673/1984/tmp/85100673/tmp/85100673/1985/tmp/85100673/tmp/85100673/1986/tmp/85100673/tmp/85100673/1987/tmp/85100673/tmp/85100673/1988/tmp/85100673/tmp/85100673/1989/tmp/85100673/tmp/85100673/1990/tmp/85100673/tmp/85100673/1991/tmp/85100673/tmp/85100673/1992/tmp/85100673/tmp/85100673/1993/tmp/85100673/tmp/85100673/1994/tmp/85100673/tmp/85100673/1995/tmp/85100673/tmp/85100673/1996/tmp/85100673/tmp/85100673/1997/tmp/85100673/tmp/85100673/1998--- PASS: TestTempDirInBenchmark (1.59s)

```


### testing/fstest wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/5
=== RUN   TestSymlink
/tmp/TestSymlink159685478/tmp/TestSymlink159685478/000/tmp/TestSymlink159685478/000/hello/tmp/TestSymlink159685478/000/hello/tmp/TestSymlink159685478/000/hello.link/tmp/TestSymlink159685478/000/tmp/TestSymlink159685478/000/tmp/TestSymlink159685478/000/tmp/TestSymlink159685478/000    TestFS found errors:
        .: diff first Open+ReadDir(-1) vs second Open+ReadDir(-1):
        	+ hello IsDir=false Type=----------
        	+ hello.link IsDir=false Type=L---------
        .: diff first Open+ReadDir(-1) vs third Open+ReadDir(1,2) loop:
        	+ hello IsDir=false Type=----------
        	+ hello.link IsDir=false Type=L---------
        .: diff first Open+ReadDir(-1) vs fs.ReadDir:
        	+ hello IsDir=false Type=----------
        	+ hello.link IsDir=false Type=L---------
        expected but not found: hello
        expected but not found: hello.link
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestSymlink (0.02s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestSymlink159685478: errno 52

```


### testing/quick wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestCheckEqual
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo725566445/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3524 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x3819 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x6ba86 - (Go interface method)
           3: 0x6bc82 - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48
           4: 0x6c28d - testing/quick.TestCheckEqual
                           at /usr/local/go/src/testing/quick/quick_test.go:163:34
           5: 0x27bdd - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x278d3 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x27bdd - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x219ac - <unknown>!runtime.run$1
           9: 0x14938 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1a0d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x147ea - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x14561 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### testing/slogtest wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2840159799/main /tmp/tinygo2840159799/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo2840159799/main --output /tmp/tinygo2840159799/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo2840159799/main -o /tmp/tinygo2840159799/main
wasm-tools component new /tmp/tinygo2840159799/main -o /tmp/tinygo2840159799/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --wasm component-model --dir=/tmp::/tmp /tmp/tinygo2840159799/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --wasm component-model --dir=/tmp::/tmp /tmp/tinygo2840159799/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo2840159799/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3304 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x19588 - testing/slogtest.withSource
                           at /usr/local/go/src/testing/slogtest/slogtest.go:362:8
           2: 0x1783e - <unknown>!runtime.initAll
           3: 0x16e71 - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:24:10
           4: 0xb85c - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           5: 0x182a - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x16d74 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11
           7: 0xcbdd - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11
           8: 0xcb5b - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           9: 0xcae8 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	testing/slogtest	0.690s
```


### text/tabwriter wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestPanicDuringFlush
panic: cannot write
Error: failed to run main module `/tmp/tinygo4009047851/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x36a7 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xd57c - (text/tabwriter_test.panicWriter).Write
                           at /usr/local/go/src/text/tabwriter/tabwriter_test.go:622:7
           2: 0xbde5 - <unknown>!interface:{Write:func:{slice:basic:uint8}{basic:int,named:error}}.Write$invoke
           3: 0xeefb - (*text/tabwriter.Writer).write0
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:251:26
           4: 0xead8 - (*text/tabwriter.Writer).writeLines
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:318:14
           5: 0xdf6b - (*text/tabwriter.Writer).format
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:405:21
           6: 0xd899 - (*text/tabwriter.Writer).flushNoDefers
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:513:10
           7: 0xd6c8 - (*text/tabwriter.Writer).flush
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:495:17              - (*text/tabwriter.Writer).Flush
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:488:16
           8: 0x6ea7d - text/tabwriter_test.TestPanicDuringFlush
                           at /usr/local/go/src/text/tabwriter/tabwriter_test.go:643:9
           9: 0x292ef - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x28fe5 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          11: 0x292ef - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x22e87 - <unknown>!runtime.run$1
          13: 0x15cdb - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          14: 0x194d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          15: 0x15b8e - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          16: 0x15906 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### text/template wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestExecute
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo1816978993/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3ddf - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x49b0 - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0xaf37b - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0xaedd8 - (*text/template.Template).Funcs
                           at /usr/local/go/src/text/template/template.go:181:15
           4: 0xbdce2 - text/template.testExecute
                           at /usr/local/go/src/text/template/exec_test.go:796:23
           5: 0xbe473 - text/template.TestExecute
                           at /usr/local/go/src/text/template/exec_test.go:831:13
           6: 0x3c756 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x9086d - (*testing.T).Run
           8: 0x3c45a - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x3c756 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x2d5d0 - <unknown>!runtime.run$1
          11: 0x1f07a - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x1d35 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x1eef6 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x1eb42 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### text/template/parse wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/6
=== RUN   TestNumberParse
panic: (97652:0x00049dc0)
Error: failed to run main module `/tmp/tinygo2553894149/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3af4 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x57549 - (*fmt.ss).error
                           at /usr/local/go/src/fmt/scan.go:240:7
           2: 0x58b62 - (*fmt.ss).accept
                           at /usr/local/go/src/fmt/scan.go:750:10              - (*fmt.ss).complexTokens
                           at /usr/local/go/src/fmt/scan.go:755:14              - (*fmt.ss).scanComplex
                           at /usr/local/go/src/fmt/scan.go:816:33
           3: 0x5aa0f - <unknown>!fmt.Sscan
           4: 0x90ee0 - text/template/parse.TestNumberParse
                           at /usr/local/go/src/text/template/parse/parse_test.go:99:23
           5: 0x2be04 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x626d5 - (*testing.T).Run
           7: 0x2bb0c - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x2be04 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x263cf - <unknown>!runtime.run$1
          10: 0x15ab4 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11: 0x1a55 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x15967 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          13: 0x156df - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### time wasip2/wasm

[🔝](#summary) build error

```text
FAIL	time	0.000s
# time_test
/usr/local/go/src/time/sleep_test.go:714:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:715:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:716:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:787:8: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:788:8: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
/usr/local/go/src/time/sleep_test.go:789:8: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
```

