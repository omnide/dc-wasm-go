
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
archive/zip |<span style="color: green">🟢</span> &nbsp; 99 |[<span style="color: orange">⛈️</span>](#archivezip-wasip1wasm) &nbsp; [1](#archivezip-wasip1wasm) / 84 |[<span style="color: orange">⛈️</span>](#archivezip-wasip2wasm) &nbsp; [1](#archivezip-wasip2wasm) / 83 |
bufio |[<span style="color: orange">⛈️</span>](#bufio-linuxarm64) &nbsp; [1](#bufio-linuxarm64) / 81 |[<span style="color: orange">⛈️</span>](#bufio-wasip1wasm) &nbsp; [2](#bufio-wasip1wasm) / 42 |[<span style="color: orange">⛈️</span>](#bufio-wasip2wasm) &nbsp; [2](#bufio-wasip2wasm) / 42 |
bytes |<span style="color: green">🟢</span> &nbsp; 91 |[<span style="color: orange">⛈️</span>](#bytes-wasip1wasm) &nbsp; [1](#bytes-wasip1wasm) / 13 |[<span style="color: orange">⛈️</span>](#bytes-wasip2wasm) &nbsp; [1](#bytes-wasip2wasm) / 1 |
cmp |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |
compress/bzip2 |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |
compress/flate |<span style="color: green">🟢</span> &nbsp; 64 |[<span style="color: orange">⛈️</span>](#compressflate-wasip1wasm) &nbsp; [1](#compressflate-wasip1wasm) / 23 |[<span style="color: orange">⛈️</span>](#compressflate-wasip2wasm) &nbsp; [2](#compressflate-wasip2wasm) / 23 |
compress/gzip |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
compress/lzw |<span style="color: green">🟢</span> &nbsp; 17 |<span style="color: green">🟢</span> &nbsp; 17 |<span style="color: green">🟢</span> &nbsp; 17 |
compress/zlib |<span style="color: green">🟢</span> &nbsp; 6 |<span style="color: green">🟢</span> &nbsp; 6 |<span style="color: green">🟢</span> &nbsp; 6 |
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
crypto/ecdsa |[<span style="color: red">❌</span>](#cryptoecdsa-linuxarm64) &nbsp; [1](#cryptoecdsa-linuxarm64) / 0 |<span style="color: green">🟢</span> &nbsp; 82 |[<span style="color: red">❌</span>](#cryptoecdsa-wasip2wasm) &nbsp; [1](#cryptoecdsa-wasip2wasm) / 0 |
crypto/ed25519 |[<span style="color: orange">⛈️</span>](#cryptoed25519-linuxarm64) &nbsp; [1](#cryptoed25519-linuxarm64) / 9 |[<span style="color: orange">⛈️</span>](#cryptoed25519-wasip1wasm) &nbsp; [1](#cryptoed25519-wasip1wasm) / 9 |[<span style="color: orange">⛈️</span>](#cryptoed25519-wasip2wasm) &nbsp; [1](#cryptoed25519-wasip2wasm) / 9 |
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
debug/dwarf |<span style="color: green">🟢</span> &nbsp; 40 |<span style="color: green">🟢</span> &nbsp; 40 |<span style="color: green">🟢</span> &nbsp; 29 |
debug/elf |[<span style="color: red">❌</span>](#debugelf-linuxarm64) &nbsp; [1](#debugelf-linuxarm64) / 0 |[<span style="color: red">❌</span>](#debugelf-wasip1wasm) &nbsp; [1](#debugelf-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#debugelf-wasip2wasm) &nbsp; [1](#debugelf-wasip2wasm) / 0 |
debug/gosym |[<span style="color: orange">⛈️</span>](#debuggosym-linuxarm64) &nbsp; [1](#debuggosym-linuxarm64) / 1 |[<span style="color: orange">⛈️</span>](#debuggosym-wasip1wasm) &nbsp; [1](#debuggosym-wasip1wasm) / 1 |[<span style="color: orange">⛈️</span>](#debuggosym-wasip2wasm) &nbsp; [1](#debuggosym-wasip2wasm) / 1 |
debug/macho |<span style="color: green">🟢</span> &nbsp; 7 |<span style="color: green">🟢</span> &nbsp; 7 |<span style="color: green">🟢</span> &nbsp; 7 |
debug/pe |[<span style="color: orange">⛈️</span>](#debugpe-linuxarm64) &nbsp; [1](#debugpe-linuxarm64) / 1 |[<span style="color: orange">⛈️</span>](#debugpe-wasip1wasm) &nbsp; [1](#debugpe-wasip1wasm) / 1 |[<span style="color: orange">⛈️</span>](#debugpe-wasip2wasm) &nbsp; [1](#debugpe-wasip2wasm) / 1 |
debug/plan9obj |<span style="color: green">🟢</span> &nbsp; 2 |<span style="color: green">🟢</span> &nbsp; 2 |<span style="color: green">🟢</span> &nbsp; 2 |
embed |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
encoding |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
encoding/ascii85 |<span style="color: green">🟢</span> &nbsp; 9 |<span style="color: green">🟢</span> &nbsp; 9 |<span style="color: green">🟢</span> &nbsp; 9 |
encoding/asn1 |<span style="color: green">🟢</span> &nbsp; 38 |<span style="color: green">🟢</span> &nbsp; 38 |<span style="color: green">🟢</span> &nbsp; 38 |
encoding/base32 |<span style="color: green">🟢</span> &nbsp; 24 |<span style="color: green">🟢</span> &nbsp; 24 |<span style="color: green">🟢</span> &nbsp; 24 |
encoding/base64 |<span style="color: green">🟢</span> &nbsp; 17 |<span style="color: green">🟢</span> &nbsp; 17 |<span style="color: green">🟢</span> &nbsp; 17 |
encoding/binary |[<span style="color: orange">⛈️</span>](#encodingbinary-linuxarm64) &nbsp; [1](#encodingbinary-linuxarm64) / 20 |[<span style="color: orange">⛈️</span>](#encodingbinary-wasip1wasm) &nbsp; [1](#encodingbinary-wasip1wasm) / 16 |[<span style="color: orange">⛈️</span>](#encodingbinary-wasip2wasm) &nbsp; [1](#encodingbinary-wasip2wasm) / 16 |
encoding/csv |<span style="color: green">🟢</span> &nbsp; 71 |<span style="color: green">🟢</span> &nbsp; 71 |<span style="color: green">🟢</span> &nbsp; 71 |
encoding/gob |[<span style="color: red">❌</span>](#encodinggob-linuxarm64) &nbsp; [1](#encodinggob-linuxarm64) / 0 |[<span style="color: red">❌</span>](#encodinggob-wasip1wasm) &nbsp; [1](#encodinggob-wasip1wasm) / 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
encoding/hex |<span style="color: green">🟢</span> &nbsp; 12 |<span style="color: green">🟢</span> &nbsp; 12 |<span style="color: green">🟢</span> &nbsp; 12 |
encoding/json |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
encoding/pem |[<span style="color: orange">⛈️</span>](#encodingpem-linuxarm64) &nbsp; [1](#encodingpem-linuxarm64) / 7 |[<span style="color: orange">⛈️</span>](#encodingpem-wasip1wasm) &nbsp; [1](#encodingpem-wasip1wasm) / 4 |[<span style="color: orange">⛈️</span>](#encodingpem-wasip2wasm) &nbsp; [1](#encodingpem-wasip2wasm) / 4 |
encoding/xml |[<span style="color: orange">⛈️</span>](#encodingxml-linuxarm64) &nbsp; [1](#encodingxml-linuxarm64) / 336 |[<span style="color: orange">⛈️</span>](#encodingxml-wasip1wasm) &nbsp; [1](#encodingxml-wasip1wasm) / 336 |[<span style="color: orange">⛈️</span>](#encodingxml-wasip2wasm) &nbsp; [1](#encodingxml-wasip2wasm) / 336 |
errors |[<span style="color: orange">⛈️</span>](#errors-linuxarm64) &nbsp; [19](#errors-linuxarm64) / 60 |[<span style="color: orange">⛈️</span>](#errors-wasip1wasm) &nbsp; [21](#errors-wasip1wasm) / 56 |[<span style="color: orange">⛈️</span>](#errors-wasip2wasm) &nbsp; [21](#errors-wasip2wasm) / 56 |
expvar |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
flag |[<span style="color: orange">⛈️</span>](#flag-linuxarm64) &nbsp; [2](#flag-linuxarm64) / 24 |[<span style="color: orange">⛈️</span>](#flag-wasip1wasm) &nbsp; [1](#flag-wasip1wasm) / 14 |[<span style="color: orange">⛈️</span>](#flag-wasip2wasm) &nbsp; [1](#flag-wasip2wasm) / 14 |
fmt |[<span style="color: orange">⛈️</span>](#fmt-linuxarm64) &nbsp; [1](#fmt-linuxarm64) / 3 |[<span style="color: orange">⛈️</span>](#fmt-wasip1wasm) &nbsp; [1](#fmt-wasip1wasm) / 3 |[<span style="color: orange">⛈️</span>](#fmt-wasip2wasm) &nbsp; [1](#fmt-wasip2wasm) / 3 |
go/ast |<span style="color: green">🟢</span> &nbsp; 8 |<span style="color: green">🟢</span> &nbsp; 8 |<span style="color: green">🟢</span> &nbsp; 8 |
go/build |[<span style="color: orange">⛈️</span>](#gobuild-linuxarm64) &nbsp; [16](#gobuild-linuxarm64) / 56 |[<span style="color: orange">⛈️</span>](#gobuild-wasip1wasm) &nbsp; [17](#gobuild-wasip1wasm) / 56 |[<span style="color: orange">⛈️</span>](#gobuild-wasip2wasm) &nbsp; [17](#gobuild-wasip2wasm) / 56 |
go/build/constraint |<span style="color: green">🟢</span> &nbsp; 81 |[<span style="color: orange">⛈️</span>](#gobuildconstraint-wasip1wasm) &nbsp; [7](#gobuildconstraint-wasip1wasm) / 13 |[<span style="color: orange">⛈️</span>](#gobuildconstraint-wasip2wasm) &nbsp; [7](#gobuildconstraint-wasip2wasm) / 13 |
go/constant |[<span style="color: orange">⛈️</span>](#goconstant-linuxarm64) &nbsp; [1](#goconstant-linuxarm64) / 2 |[<span style="color: orange">⛈️</span>](#goconstant-wasip1wasm) &nbsp; [1](#goconstant-wasip1wasm) / 2 |[<span style="color: orange">⛈️</span>](#goconstant-wasip2wasm) &nbsp; [1](#goconstant-wasip2wasm) / 2 |
go/doc |[<span style="color: red">❌</span>](#godoc-linuxarm64) &nbsp; [1](#godoc-linuxarm64) / 0 |[<span style="color: red">❌</span>](#godoc-wasip1wasm) &nbsp; [1](#godoc-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#godoc-wasip2wasm) &nbsp; [1](#godoc-wasip2wasm) / 0 |
go/doc/comment |[<span style="color: orange">⛈️</span>](#godoccomment-linuxarm64) &nbsp; [1](#godoccomment-linuxarm64) / 10059 |[<span style="color: orange">⛈️</span>](#godoccomment-wasip1wasm) &nbsp; [1](#godoccomment-wasip1wasm) / 10059 |[<span style="color: orange">⛈️</span>](#godoccomment-wasip2wasm) &nbsp; [2](#godoccomment-wasip2wasm) / 10006 |
go/format |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |
go/importer |[<span style="color: orange">⛈️</span>](#goimporter-linuxarm64) &nbsp; [2](#goimporter-linuxarm64) / 2 |[<span style="color: orange">⛈️</span>](#goimporter-wasip1wasm) &nbsp; [2](#goimporter-wasip1wasm) / 2 |[<span style="color: orange">⛈️</span>](#goimporter-wasip2wasm) &nbsp; [2](#goimporter-wasip2wasm) / 2 |
go/parser |[<span style="color: orange">⛈️</span>](#goparser-linuxarm64) &nbsp; [2](#goparser-linuxarm64) / 43 |[<span style="color: orange">⛈️</span>](#goparser-wasip1wasm) &nbsp; [1](#goparser-wasip1wasm) / 27 |[<span style="color: orange">⛈️</span>](#goparser-wasip2wasm) &nbsp; [1](#goparser-wasip2wasm) / 3 |
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
image/draw |[<span style="color: orange">⛈️</span>](#imagedraw-linuxarm64) &nbsp; [1](#imagedraw-linuxarm64) / 9 |[<span style="color: orange">⛈️</span>](#imagedraw-wasip1wasm) &nbsp; [1](#imagedraw-wasip1wasm) / 9 |[<span style="color: orange">⛈️</span>](#imagedraw-wasip2wasm) &nbsp; [1](#imagedraw-wasip2wasm) / 9 |
image/gif |[<span style="color: red">❌</span>](#imagegif-linuxarm64) &nbsp; [1](#imagegif-linuxarm64) / 0 |[<span style="color: red">❌</span>](#imagegif-wasip1wasm) &nbsp; [1](#imagegif-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#imagegif-wasip2wasm) &nbsp; [1](#imagegif-wasip2wasm) / 0 |
image/jpeg |[<span style="color: red">❌</span>](#imagejpeg-linuxarm64) &nbsp; [1](#imagejpeg-linuxarm64) / 0 |[<span style="color: red">❌</span>](#imagejpeg-wasip1wasm) &nbsp; [1](#imagejpeg-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#imagejpeg-wasip2wasm) &nbsp; [1](#imagejpeg-wasip2wasm) / 0 |
image/png |[<span style="color: orange">⛈️</span>](#imagepng-linuxarm64) &nbsp; [1](#imagepng-linuxarm64) / 13 |[<span style="color: orange">⛈️</span>](#imagepng-wasip1wasm) &nbsp; [1](#imagepng-wasip1wasm) / 13 |[<span style="color: orange">⛈️</span>](#imagepng-wasip2wasm) &nbsp; [1](#imagepng-wasip2wasm) / 13 |
index/suffixarray |<span style="color: green">🟢</span> &nbsp; 12 |[<span style="color: orange">⛈️</span>](#indexsuffixarray-wasip1wasm) &nbsp; [4](#indexsuffixarray-wasip1wasm) / 11 |[<span style="color: orange">⛈️</span>](#indexsuffixarray-wasip2wasm) &nbsp; [5](#indexsuffixarray-wasip2wasm) / 7 |
io |[<span style="color: orange">⛈️</span>](#io-linuxarm64) &nbsp; [4](#io-linuxarm64) / 60 |[<span style="color: orange">⛈️</span>](#io-wasip1wasm) &nbsp; [4](#io-wasip1wasm) / 60 |[<span style="color: orange">⛈️</span>](#io-wasip2wasm) &nbsp; [4](#io-wasip2wasm) / 60 |
io/fs |[<span style="color: orange">⛈️</span>](#iofs-linuxarm64) &nbsp; [1](#iofs-linuxarm64) / 6 |[<span style="color: orange">⛈️</span>](#iofs-wasip1wasm) &nbsp; [1](#iofs-wasip1wasm) / 6 |[<span style="color: orange">⛈️</span>](#iofs-wasip2wasm) &nbsp; [2](#iofs-wasip2wasm) / 6 |
io/ioutil |<span style="color: green">🟢</span> &nbsp; 28 |[<span style="color: orange">⛈️</span>](#ioioutil-wasip1wasm) &nbsp; [1](#ioioutil-wasip1wasm) / 28 |[<span style="color: orange">⛈️</span>](#ioioutil-wasip2wasm) &nbsp; [2](#ioioutil-wasip2wasm) / 28 |
log |[<span style="color: orange">⛈️</span>](#log-linuxarm64) &nbsp; [1](#log-linuxarm64) / 9 |[<span style="color: orange">⛈️</span>](#log-wasip1wasm) &nbsp; [1](#log-wasip1wasm) / 9 |[<span style="color: orange">⛈️</span>](#log-wasip2wasm) &nbsp; [1](#log-wasip2wasm) / 9 |
log/slog |[<span style="color: red">❌</span>](#logslog-linuxarm64) &nbsp; [1](#logslog-linuxarm64) / 0 |[<span style="color: red">❌</span>](#logslog-wasip1wasm) &nbsp; [1](#logslog-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#logslog-wasip2wasm) &nbsp; [1](#logslog-wasip2wasm) / 0 |
log/syslog |[<span style="color: red">❌</span>](#logsyslog-linuxarm64) &nbsp; [1](#logsyslog-linuxarm64) / 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |[<span style="color: red">❌</span>](#logsyslog-wasip2wasm) &nbsp; [1](#logsyslog-wasip2wasm) / 0 |
maps |[<span style="color: red">❌</span>](#maps-linuxarm64) &nbsp; [1](#maps-linuxarm64) / 0 |[<span style="color: red">❌</span>](#maps-wasip1wasm) &nbsp; [1](#maps-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#maps-wasip2wasm) &nbsp; [1](#maps-wasip2wasm) / 0 |
math |<span style="color: green">🟢</span> &nbsp; 76 |<span style="color: green">🟢</span> &nbsp; 76 |<span style="color: green">🟢</span> &nbsp; 76 |
math/big |[<span style="color: red">❌</span>](#mathbig-linuxarm64) &nbsp; [1](#mathbig-linuxarm64) / 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
math/bits |[<span style="color: orange">⛈️</span>](#mathbits-linuxarm64) &nbsp; [5](#mathbits-linuxarm64) / 21 |[<span style="color: orange">⛈️</span>](#mathbits-wasip1wasm) &nbsp; [1](#mathbits-wasip1wasm) / 12 |[<span style="color: orange">⛈️</span>](#mathbits-wasip2wasm) &nbsp; [1](#mathbits-wasip2wasm) / 12 |
math/cmplx |<span style="color: green">🟢</span> &nbsp; 24 |<span style="color: green">🟢</span> &nbsp; 24 |<span style="color: green">🟢</span> &nbsp; 24 |
math/rand |[<span style="color: orange">⛈️</span>](#mathrand-linuxarm64) &nbsp; [8](#mathrand-linuxarm64) / 43 |[<span style="color: orange">⛈️</span>](#mathrand-wasip1wasm) &nbsp; [8](#mathrand-wasip1wasm) / 43 |[<span style="color: orange">⛈️</span>](#mathrand-wasip2wasm) &nbsp; [28](#mathrand-wasip2wasm) / 42 |
math/rand/v2 |[<span style="color: red">❌</span>](#mathrandv2-linuxarm64) &nbsp; [1](#mathrandv2-linuxarm64) / 0 |[<span style="color: red">❌</span>](#mathrandv2-wasip1wasm) &nbsp; [1](#mathrandv2-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#mathrandv2-wasip2wasm) &nbsp; [1](#mathrandv2-wasip2wasm) / 0 |
mime |[<span style="color: orange">⛈️</span>](#mime-linuxarm64) &nbsp; [1](#mime-linuxarm64) / 14 |[<span style="color: orange">⛈️</span>](#mime-wasip1wasm) &nbsp; [1](#mime-wasip1wasm) / 13 |[<span style="color: orange">⛈️</span>](#mime-wasip2wasm) &nbsp; [1](#mime-wasip2wasm) / 14 |
mime/multipart |<span style="color: green">🟢</span> &nbsp; 52 |[<span style="color: orange">⛈️</span>](#mimemultipart-wasip1wasm) &nbsp; [4](#mimemultipart-wasip1wasm) / 11 |[<span style="color: orange">⛈️</span>](#mimemultipart-wasip2wasm) &nbsp; [4](#mimemultipart-wasip2wasm) / 11 |
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
net/mail |<span style="color: green">🟢</span> &nbsp; 11 |<span style="color: green">🟢</span> &nbsp; 11 |<span style="color: green">🟢</span> &nbsp; 11 |
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
testing |<span style="color: green">🟢</span> &nbsp; 33 |<span style="color: green">🟢</span> &nbsp; 23 |<span style="color: green">🟢</span> &nbsp; 23 |
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
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3308389968/main /tmp/tinygo3308389968/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-DF7B1E694F38017C37BF13447BDBB61BE010030F:((*crypto/aes.aesCipherAsm).Encrypt)
failed to run tool: ld.lld
FAIL	crypto	0.000s
error: failed to link /tmp/tinygo3308389968/main: exit status 1
```


### crypto/aes linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo518708260/main /tmp/tinygo518708260/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.decryptBlockAsm
>>> referenced by cipher_asm.go:95 (/usr/local/go/src/crypto/aes/cipher_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8D35EAAFAECF0CB6D4C9C8D0DE17A7DA33F48ADB:((*crypto/aes.aesCipherAsm).Decrypt)

ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-8D35EAAFAECF0CB6D4C9C8D0DE17A7DA33F48ADB:((*crypto/aes.aesCipherAsm).Encrypt)
failed to run tool: ld.lld
FAIL	crypto/aes	0.000s
error: failed to link /tmp/tinygo518708260/main: exit status 1
```


### crypto/cipher linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3039831582/main /tmp/tinygo3039831582/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
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
error: failed to link /tmp/tinygo3039831582/main: exit status 1
```


### crypto/ecdh linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2293093185/main /tmp/tinygo2293093185/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo2293093185/embed-a3a5d08c40939adb7c0e9e4f5b689721-823525410.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
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
error: failed to link /tmp/tinygo2293093185/main: exit status 1
```


### crypto/ecdsa linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3597089057/main /tmp/tinygo3597089057/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo3597089057/embed-a3a5d08c40939adb7c0e9e4f5b689721-2247943259.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
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
error: failed to link /tmp/tinygo3597089057/main: exit status 1
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
--- FAIL: TestEd25519Vectors (0.01s)

```


### crypto/elliptic linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2367157109/main /tmp/tinygo2367157109/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo2367157109/embed-a3a5d08c40939adb7c0e9e4f5b689721-286954641.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
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
error: failed to link /tmp/tinygo2367157109/main: exit status 1
```


### crypto/rsa linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1744163691/main /tmp/tinygo1744163691/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo1744163691/embed-a3a5d08c40939adb7c0e9e4f5b689721-382641251.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
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
error: failed to link /tmp/tinygo1744163691/main: exit status 1
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
    running test executable failed: fork/exec /tmp/TestDefaultLinkerDWARF71883266/000/a.exe: operation not implemented 
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
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo109486335/main /tmp/tinygo109486335/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo109486335/main /tmp/tinygo109486335/main -test.v
/tmp/tinygo109486335/main /tmp/tinygo109486335/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
FAIL	encoding/gob	0.014s
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
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0xffff757df930)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0xffff757df930) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff757df930)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff757df930) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0xffff757df930)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0xffff757df930) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0xffff757df930)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0xffff757df930) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0xffff757df970)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0xffff757df970) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0xffff757df950)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0xffff757df950) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff757df950)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff757df950) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0xffff757df950)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff757df9b0)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0xffff757df950) (0.00s)
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
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0xffff757df950)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff757df9b0)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0xffff757df950) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0xffff757df930)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0xffff757df930) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0xffff757df950)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff757df9b0)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0xffff757df950) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0xffff757df930)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0xffff757df930) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff757df930)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff757df930) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff757df950)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff757df950) (0.00s)
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0xffff757df930)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0xffff757df930) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0xffff757df970)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0xffff757df970) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0xffff757df950)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0xffff757df950) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0xffff757df950)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff757df9b0)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0xffff757df950) (0.00s)

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
--- FAIL: TestDotSlashImport (0.01s)
=== RUN   TestLocalDirectory
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestLocalDirectory (0.00s)
=== RUN   TestImportCmd
    import "cmd/internal/objfile": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportCmd (0.04s)
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
--- FAIL: TestImportVendor (0.02s)
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
--- FAIL: TestIssue23594 (0.01s)
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
--- FAIL: TestAllTagsNonSourceFile (0.01s)
=== RUN   TestDirectives
    could not import testdata: import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestDirectives (0.01s)
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
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo4240599404/main /tmp/tinygo4240599404/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo4240599404/main /tmp/tinygo4240599404/main -test.v
/tmp/tinygo4240599404/main /tmp/tinygo4240599404/main -test.v
panic: unimplemented: (reflect.Type).NumOut()
FAIL	go/doc	0.008s
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
=== RUN   TestParseDepthLimit
=== RUN   TestParseDepthLimit/array/small
=== RUN   TestParseDepthLimit/array/small

```


### go/printer linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 12/12
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.04s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.05s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.03s)
=== RUN   TestFiles
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.00s)
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.02s)
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.01s)
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.00s)
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.00s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.01s)
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.04s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.05s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.03s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.04s)
=== RUN   TestFiles/slow.input
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.02s)
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.01s)
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.00s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.01s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.04s)
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.00s)
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.00s)
=== RUN   TestFiles/slow.input

```


### go/token linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3411463503/main /tmp/tinygo3411463503/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo3411463503/main /tmp/tinygo3411463503/main -test.v
/tmp/tinygo3411463503/main /tmp/tinygo3411463503/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
FAIL	go/token	0.017s
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
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/26 04:43:56.244392 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/26 04:43:56.244418 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/26 04:43:56.244658 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/26 04:43:56.244676 ???:0: hello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/26 04:43:56.244699 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/26 04:43:56.253043 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/26 04:43:56.253068 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/26 04:43:56.253087 ???:0: XXXhello 23 world"
--- FAIL: TestAll (0.02s)

```


### log/slog linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3636628880/main /tmp/tinygo3636628880/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo3636628880/embed-a3a5d08c40939adb7c0e9e4f5b689721-2056532010.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo3636628880/main /tmp/tinygo3636628880/main -test.v
/tmp/tinygo3636628880/main /tmp/tinygo3636628880/main -test.v
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
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3683976468/main /tmp/tinygo3683976468/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: maps.clone
>>> referenced by maps.go:46 (/usr/local/go/src/maps/maps.go:46)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-E741FD614938CB8F938506574028B662B05CE9D0:(maps.Clone[map[int]int int int])
>>> referenced by maps.go:46 (/usr/local/go/src/maps/maps.go:46)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-E741FD614938CB8F938506574028B662B05CE9D0:(maps.TestCloneLarge)
failed to run tool: ld.lld
FAIL	maps	0.000s
error: failed to link /tmp/tinygo3683976468/main: exit status 1
```


### math/big linux/arm64

[🔝](#summary) build error

```text
FAIL	math/big	0.000s
# math/big
/usr/local/go/src/math/bits/bits.go:472:10: interp: running for more than 3m0s, timing out (executed calls: 35438156)
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
  %32 = call { ptr, i64, i64 } @"math/big.natFromString"(ptr %30, i64 %31, ptr undef), !dbg !30819
```


### math/bits linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 5/21
=== RUN   TestDivPanicOverflow
    Div should have panicked when y<=hi
--- FAIL: TestDivPanicOverflow (0.00s)
=== RUN   TestDiv32PanicOverflow
    Div32 should have panicked when y<=hi
--- FAIL: TestDiv32PanicOverflow (0.00s)
=== RUN   TestDiv64PanicOverflow
    Div64 should have panicked when y<=hi
--- FAIL: TestDiv64PanicOverflow (0.00s)
=== RUN   TestDivPanicZero
    Div should have panicked when y==0
--- FAIL: TestDivPanicZero (0.00s)
=== RUN   TestDiv32PanicZero
panic: runtime error at 0x0000000000229298: divide by zero

```


### math/rand linux/arm64

[🔝](#summary) failure

```text
Failures/Tests: 8/43
=== RUN   TestDefaultRace
--- FAIL: TestDefaultRace (0.00s)
=== RUN   TestDefaultRace/0
        fork/exec /tmp/tinygo1692772297/main: operation not implemented
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/1
        fork/exec /tmp/tinygo1692772297/main: operation not implemented
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestDefaultRace/2
        fork/exec /tmp/tinygo1692772297/main: operation not implemented
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestDefaultRace/3
        fork/exec /tmp/tinygo1692772297/main: operation not implemented
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestDefaultRace/4
        fork/exec /tmp/tinygo1692772297/main: operation not implemented
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestDefaultRace/5
        fork/exec /tmp/tinygo1692772297/main: operation not implemented
    --- FAIL: TestDefaultRace/5 (0.00s)
=== RUN   TestRegress
panic: unimplemented: (reflect.Type).Method()
=== RUN   TestDefaultRace/3
        fork/exec /tmp/tinygo1692772297/main: operation not implemented
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestDefaultRace/5
        fork/exec /tmp/tinygo1692772297/main: operation not implemented
    --- FAIL: TestDefaultRace/5 (0.00s)
=== RUN   TestDefaultRace/0
        fork/exec /tmp/tinygo1692772297/main: operation not implemented
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/4
        fork/exec /tmp/tinygo1692772297/main: operation not implemented
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestDefaultRace/2
        fork/exec /tmp/tinygo1692772297/main: operation not implemented
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestDefaultRace/1
        fork/exec /tmp/tinygo1692772297/main: operation not implemented
    --- FAIL: TestDefaultRace/1 (0.00s)

```


### math/rand/v2 linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2564061515/main /tmp/tinygo2564061515/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: internal/chacha8rand.block
>>> referenced by chacha8.go:63 (/usr/local/go/src/internal/chacha8rand/chacha8.go:63)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-41AB6AA57CA8BDAFB9032CE81E8509AB3BA1662B:((*internal/chacha8rand.State).Init)
>>> referenced by chacha8.go:88 (/usr/local/go/src/internal/chacha8rand/chacha8.go:88)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-41AB6AA57CA8BDAFB9032CE81E8509AB3BA1662B:((*math/rand/v2.ChaCha8).Uint64)
>>> referenced by chacha8.go:150 (/usr/local/go/src/internal/chacha8rand/chacha8.go:150)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-41AB6AA57CA8BDAFB9032CE81E8509AB3BA1662B:(math/rand/v2_test.TestChaCha8Marshal)
failed to run tool: ld.lld
FAIL	math/rand/v2	0.000s
error: failed to link /tmp/tinygo2564061515/main: exit status 1
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
    --- FAIL: TestAddrStringAllocs/ipv6 (0.00s)
=== RUN   TestAddrStringAllocs/ipv6+zone
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv6+zone (0.02s)
=== RUN   TestAddrStringAllocs/ipv4-in-ipv6
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4-in-ipv6 (0.00s)
=== RUN   TestAddrStringAllocs/ipv4-in-ipv6+zone
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4-in-ipv6+zone (0.00s)
=== RUN   TestAddrStringAllocs/ipv4-in-ipv6+zone
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4-in-ipv6+zone (0.00s)
=== RUN   TestAddrStringAllocs/zero
    --- PASS: TestAddrStringAllocs/zero (0.00s)
=== RUN   TestAddrStringAllocs/ipv6
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv6 (0.00s)
=== RUN   TestAddrStringAllocs/ipv4-in-ipv6
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4-in-ipv6 (0.00s)
=== RUN   TestAddrStringAllocs/ipv4
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4 (0.00s)
=== RUN   TestAddrStringAllocs/ipv6+zone
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv6+zone (0.02s)

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
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2311633911/main /tmp/tinygo2311633911/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo2311633911/main /tmp/tinygo2311633911/main -test.v
/tmp/tinygo2311633911/main /tmp/tinygo2311633911/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
FAIL	net/url	0.026s
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
--- FAIL: TestBuilderGrow (0.13s)
=== RUN   TestBuilderAllocs
    Builder allocs = 0; want 1
--- FAIL: TestBuilderAllocs (0.01s)

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
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo486517766/main /tmp/tinygo486517766/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo486517766/main /tmp/tinygo486517766/main -test.v
/tmp/tinygo486517766/main /tmp/tinygo486517766/main -test.v
panic: runtime.Caller failed
FAIL	testing/slogtest	0.019s
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
    skipping test: cannot make symlinks on wasip1/wasm: symlinks unsupported: symlink /tmp/43574061/testfile.txt /tmp/43574061/testlink: errno 63
    SkipNow is incomplete, requires runtime.Goexit()
    symlink /tmp/TestFileInfoHeaderSymlink171739991/000 /tmp/TestFileInfoHeaderSymlink171739991/000/link: errno 63
    FailNow is incomplete, requires runtime.Goexit()
    lstat /tmp/TestFileInfoHeaderSymlink171739991/000/link: file does not exist
    FailNow is incomplete, requires runtime.Goexit()
    archive/tar: FileInfo is nil
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo1276520795/main`

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
Error: failed to run main module `/tmp/tinygo1833981473/main`

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
Error: failed to run main module `/tmp/tinygo886740231/main`

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
Error: failed to run main module `/tmp/tinygo1879696261/main`

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
Error: failed to run main module `/tmp/tinygo3290581261/main`

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
Error: failed to run main module `/tmp/tinygo383067053/main`

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
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestLinker185029093: errno 52

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
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestEd25519Vectors76903400: errno 52

```


### crypto/hmac wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestNonUniqueHash
panic: crypto/hmac: hash generation function does not produce unique values
Error: failed to run main module `/tmp/tinygo3629558124/main`

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
Error: failed to run main module `/tmp/tinygo515227823/main`

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
Error: failed to run main module `/tmp/tinygo3875841125/main`

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
Error: failed to run main module `/tmp/tinygo3358795229/main`

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
Error: failed to run main module `/tmp/tinygo3091899796/main`

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
Error: failed to run main module `/tmp/tinygo2641283190/main`

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
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3009671312/main /tmp/tinygo3009671312/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo3009671312/main --output /tmp/tinygo3009671312/main
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
Error: failed to run main module `/tmp/tinygo3849687664/main`

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
--- FAIL: TestAs (0.00s)
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
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0x44e30)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0x44e30) (0.00s)
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAsValidation
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo1521966229/main`

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
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0x44e40)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x44e70)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x26cdc)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0x44e40) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44e30)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44e30) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0x44e30)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0x44e30) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0x44e30)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0x44e30) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0x44e50)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0x44e50) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0x44e40)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x44e70)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x26cdc)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0x44e40) (0.00s)
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo1521966229/main`

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
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0x44e40)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0x44e40) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44e40)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44e40) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)

```


### flag wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/14
=== RUN   TestPrintDefaults
panic: panic!
Error: failed to run main module `/tmp/tinygo2489300486/main`

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
Error: failed to run main module `/tmp/tinygo791305175/main`

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
--- FAIL: TestDotSlashImport (0.04s)
=== RUN   TestLocalDirectory
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
    ImportPath=".", want "go/build"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestLocalDirectory (0.01s)
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
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestImportDirNotExist171764514: errno 52
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
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestImportPackageOutsideModule78928838: errno 52
=== RUN   TestIssue23594
    could not import testdata: import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestIssue23594 (0.01s)
=== RUN   TestMissingImportErrorRepetition
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestMissingImportErrorRepetition (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestMissingImportErrorRepetition69557344: errno 52
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
--- FAIL: TestDirectives (0.01s)
=== RUN   TestFindImports
    open /usr/local/go/src/go/build: file does not exist
    FailNow is incomplete, requires runtime.Goexit()
    go/build imports []
    expected to find "bytes" in import list
    expected to find "os" in import list
    expected to find "path/filepath" in import list
    expected to find "strings" in import list
--- FAIL: TestFindImports (0.01s)
=== RUN   TestImportDirNotExist/GO111MODULE=off
    --- PASS: TestImportDirNotExist/GO111MODULE=off (0.00s)
=== RUN   TestImportDirNotExist/GO111MODULE=on
        Import(full, 0) got error: "go/build: go list go/build/doesnotexist: open /dev/null: file does not exist\n\n", want "cannot find package" or "is not in std" error
        Import(full, FindOnly) got error: "go/build: go list go/build/doesnotexist: open /dev/null: file does not exist\n\n", want "cannot find package" or "is not in std" error
    --- FAIL: TestImportDirNotExist/GO111MODULE=on (0.00s)

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
Error: failed to run main module `/tmp/tinygo2243597014/main`

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
=== RUN   TestLex/5
panic: invalid syntax at ²
Error: failed to run main module `/tmp/tinygo2243597014/main`

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
=== RUN   TestLex/0
    --- PASS: TestLex/0 (0.00s)

```


### go/constant wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestOps
panic: division by zero
Error: failed to run main module `/tmp/tinygo205863894/main`

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
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo4270948109/main /tmp/tinygo4270948109/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo4270948109/main --output /tmp/tinygo4270948109/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=. --dir=/tmp::/tmp /tmp/tinygo4270948109/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=.. --dir=../.. --dir=../../.. --dir=. --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --dir=. --dir=/tmp::/tmp /tmp/tinygo4270948109/main -test.v
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo4270948109/main`

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
FAIL	go/doc	1.079s
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
Error: failed to run main module `/tmp/tinygo1891330721/main`

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
Error: failed to run main module `/tmp/tinygo1891330721/main`

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
Error: failed to run main module `/tmp/tinygo2965347192/main`

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
=== RUN   TestFiles
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.06s)
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.13s)
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.07s)
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.13s)
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.07s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.16s)
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.40s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.29s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.11s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.05s)
=== RUN   TestFiles/slow.input
panic: runtime error: slice out of range
Error: failed to run main module `/tmp/tinygo1578987619/main`

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
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.07s)
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.13s)
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.07s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.29s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.11s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.05s)
=== RUN   TestFiles/slow.input
panic: runtime error: slice out of range
Error: failed to run main module `/tmp/tinygo1578987619/main`

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
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.06s)
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.13s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.16s)
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.40s)

```


### go/token wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo189848225/main /tmp/tinygo189848225/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo189848225/main --output /tmp/tinygo189848225/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=. --dir=/tmp::/tmp /tmp/tinygo189848225/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=.. --dir=../.. --dir=../../.. --dir=. --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --dir=. --dir=/tmp::/tmp /tmp/tinygo189848225/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
Error: failed to run main module `/tmp/tinygo189848225/main`

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
FAIL	go/token	0.700s
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
Error: failed to run main module `/tmp/tinygo1425907244/main`

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
Error: failed to run main module `/tmp/tinygo290970313/main`

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
Error: failed to run main module `/tmp/tinygo3756225778/main`

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
Error: failed to run main module `/tmp/tinygo1245779073/main`

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
Error: failed to run main module `/tmp/tinygo2119699440/main`

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
    --- PASS: TestNew64/forcealloc (1.22s)
=== RUN   TestNew64/exhaustive2
=== RUN   TestNew64
=== RUN   TestNew64/ababab...
    --- PASS: TestNew64/ababab... (9.73s)
=== RUN   TestNew64/forcealloc
    --- PASS: TestNew64/forcealloc (1.22s)
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
Error: failed to run main module `/tmp/tinygo273119738/main`

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
    Expected an error when writing to read-only file /tmp/TestReadOnlyWriteFile186908131/blurp.txt
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
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/26 01:55:57.349765 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/26 01:55:57.349965 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/26 01:55:57.351294 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/26 01:55:57.351513 ???:0: hello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/26 01:55:57.351733 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/26 01:55:57.351938 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/26 01:55:57.352135 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/26 01:55:57.352350 ???:0: XXXhello 23 world"
--- FAIL: TestAll (0.00s)

```


### log/slog wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1947451834/main /tmp/tinygo1947451834/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1947451834/main --output /tmp/tinygo1947451834/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=. --dir=/tmp::/tmp /tmp/tinygo1947451834/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=.. --dir=../.. --dir=../../.. --dir=. --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --dir=. --dir=/tmp::/tmp /tmp/tinygo1947451834/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo1947451834/main`

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
FAIL	log/slog	0.614s
```


### maps wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo387810914/main /tmp/tinygo387810914/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo387810914/main.o: undefined symbol: maps.clone
wasm-ld: error: /tmp/tinygo387810914/main.o: undefined symbol: maps.clone
failed to run tool: wasm-ld
FAIL	maps	0.000s
error: failed to link /tmp/tinygo387810914/main: exit status 1
```


### math/bits wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/12
=== RUN   TestAdd64OverflowPanic
panic: overflow
Error: failed to run main module `/tmp/tinygo1221209225/main`

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
=== RUN   TestDefaultRace/1
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestDefaultRace/3
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestRegress
panic: unimplemented: (reflect.Type).Method()
Error: failed to run main module `/tmp/tinygo3894368342/main`

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
=== RUN   TestDefaultRace/0
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/4
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestDefaultRace/2
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/2 (0.00s)

```


### math/rand/v2 wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2296799917/main /tmp/tinygo2296799917/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo2296799917/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: /tmp/tinygo2296799917/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: /tmp/tinygo2296799917/main.o: undefined symbol: internal/chacha8rand.block
failed to run tool: wasm-ld
FAIL	math/rand/v2	0.000s
error: failed to link /tmp/tinygo2296799917/main: exit status 1
```


### mime wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/13
=== RUN   TestTypeByExtension
panic: bufio.Scanner: Read returned impossible count
Error: failed to run main module `/tmp/tinygo2242944616/main`

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
=== RUN   TestReadForm_MetadataTooLarge/many_parts
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
Error: failed to run main module `/tmp/tinygo3136034679/main`

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
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1688456956/main /tmp/tinygo1688456956/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1688456956/main --output /tmp/tinygo1688456956/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=. --dir=/tmp::/tmp /tmp/tinygo1688456956/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=.. --dir=../.. --dir=../../.. --dir=. --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --dir=. --dir=/tmp::/tmp /tmp/tinygo1688456956/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
Error: failed to run main module `/tmp/tinygo1688456956/main`

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
FAIL	net/url	0.691s
```


### path/filepath wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestCVE202230632
Error: failed to run main module `/tmp/tinygo2292563402/main`

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
Error: failed to run main module `/tmp/tinygo1617399543/main`

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
Error: failed to run main module `/tmp/tinygo3305126102/main`

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
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo413305320/main /tmp/tinygo413305320/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo413305320/main --output /tmp/tinygo413305320/main
FAIL	slices	0.000s
error: wasm-opt failed: signal: killed
```


### strconv wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/29
=== RUN   TestFormatComplexInvalidBitSize
panic: invalid bitSize
Error: failed to run main module `/tmp/tinygo307269402/main`

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
Error: failed to run main module `/tmp/tinygo1203819720/main`

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
--- FAIL: TestUnaligned64 (0.59s)
=== RUN   TestNilDeref
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo2930668448/main`

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
    skipping test: cannot make symlinks on wasip1/wasm: symlinks unsupported: symlink /tmp/4862919/testfile.txt /tmp/4862919/testlink: errno 63
    SkipNow is incomplete, requires runtime.Goexit()
    symlink /tmp/TestSymlink125395623/000/hello /tmp/TestSymlink125395623/000/hello.link: errno 63
    FailNow is incomplete, requires runtime.Goexit()
    TestFS found errors:
        expected but not found: hello.link
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestSymlink (0.03s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestSymlink125395623: errno 52

```


### testing/quick wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestCheckEqual
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo4166362298/main`

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
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1208544470/main /tmp/tinygo1208544470/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1208544470/main --output /tmp/tinygo1208544470/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=. --dir=/tmp::/tmp /tmp/tinygo1208544470/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=.. --dir=../.. --dir=../../.. --dir=. --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --dir=. --dir=/tmp::/tmp /tmp/tinygo1208544470/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo1208544470/main`

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
FAIL	testing/slogtest	0.540s
```


### text/tabwriter wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestPanicDuringFlush
panic: cannot write
Error: failed to run main module `/tmp/tinygo2044633962/main`

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
Error: failed to run main module `/tmp/tinygo1822073441/main`

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
Error: failed to run main module `/tmp/tinygo4236101342/main`

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
Failures/Tests: 1/83
=== RUN   TestZip64

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
Error: failed to run main module `/tmp/tinygo3220872636/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x39f6 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xdca0 - (*bufio.Reader).Read
           2: 0x8e260 - bufio_test.TestNegativeRead
                           at /usr/local/go/src/bufio/bufio_test.go:1303:8
           3: 0x303b4 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x5c6c9 - (*testing.T).Run
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
Error: failed to run main module `/tmp/tinygo3005372026/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1c775 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x2e65 - runtime.slicePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:165:16
           2: 0x83bb0 - bytes_test.dangerousSlice
                           at /usr/local/go/src/bytes/boundary_test.go:32:26
           3: 0x83c6f - bytes_test.TestEqualNearPageBoundary
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
Failures/Tests: 2/23
=== RUN   TestDeflateInflateString
    level: 0, size:100.00%, 100018 b
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
    open ../../testdata/Isaac.Newton-Opticks.txt: errno 63
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
--- FAIL: TestDeflateInflateString (25.69s)
=== RUN   TestBestSpeed

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
Error: failed to run main module `/tmp/tinygo2053272869/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x18bcf - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x2432 - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:160:16
           2: 0x6c1d6 - <unknown>!(*crypto/rc4.Cipher).XORKeyStream$bound
           3: 0x6c571 - crypto_test.test
                           at /usr/local/go/src/crypto/issue21104_test.go:60:5
           4: 0x6bf95 - crypto_test.TestRC4OutOfBoundsWrite
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
Error: failed to run main module `/tmp/tinygo2483023355/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3474 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x2630a - (*crypto/aes.aesCipher).Encrypt
                           at /usr/local/go/src/crypto/aes/cipher.go:60:8              - (Go interface method)
                           at <Go interface method>
           2: 0x73857 - crypto/aes.TestShortBlocks$2
                           at /usr/local/go/src/crypto/aes/aes_test.go:327:69
           3: 0x73acd - crypto/aes.mustPanic
                           at /usr/local/go/src/crypto/aes/aes_test.go:344:3
           4: 0x7325a - crypto/aes.TestShortBlocks
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
Error: failed to run main module `/tmp/tinygo1115486399/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x34f8 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x77097 - (*crypto/cipher.cbcDecrypter).CryptBlocks
                           at /usr/local/go/src/crypto/cipher/cbc.go:145:8              - (Go interface method)
                           at <Go interface method>
           2: 0x795ff - crypto/cipher_test.TestCryptBlocks$1
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:20:80
           3: 0x7986d - crypto/cipher_test.mustPanic
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:37:3
           4: 0x7928b - crypto/cipher_test.TestCryptBlocks
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
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    [ build -o hello.exe hello.go]: exec: no command
    FailNow is incomplete, requires runtime.Goexit()
    [./hello.exe]: open /dev/null: errno 2
    FailNow is incomplete, requires runtime.Goexit()
    unexpected output: 
    [ tool nm hello.exe]: exec: no command
    FailNow is incomplete, requires runtime.Goexit()
    no P384 symbols found in program using ecdh.P384, test is broken
--- FAIL: TestLinker (0.04s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestLinker110173894: errno 52

```


### crypto/ecdsa wasip2/wasm

[🔝](#summary) build error

```text
Basic Block in function '(*encoding/asn1.ObjectIdentifier).Equal' does not have terminator!
label %entry
FAIL	crypto/ecdsa	0.000s
error: verification error after compiling package vendor/golang.org/x/crypto/cryptobyte
```


### crypto/ed25519 wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/9
=== RUN   TestEd25519Vectors
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
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestEd25519Vectors175148199: errno 52

```


### crypto/hmac wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestNonUniqueHash
panic: crypto/hmac: hash generation function does not produce unique values
Error: failed to run main module `/tmp/tinygo2557020787/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3490 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x7573b - crypto/hmac.New
           2: 0x7659f - crypto/hmac.TestNonUniqueHash
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
Error: failed to run main module `/tmp/tinygo1987715251/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2d64 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x5092 - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0xf9058 - (Go interface method)
           3: 0xfac04 - testing/quick.Check
                           at /usr/local/go/src/testing/quick/quick.go:273:17              - crypto/rsa_test.TestEncryptPKCS1v15
                           at /usr/local/go/src/crypto/rsa/pkcs1v15_test.go:118:13
           4: 0x3c458 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x864b3 - (*testing.T).Run
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
Error: failed to run main module `/tmp/tinygo2524639242/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3897 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x3b8c - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x6b97a - (Go interface method)
           3: 0x6bb77 - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48
           4: 0x6c459 - crypto/subtle.TestConstantTimeByteEq
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
    open main: file does not exist
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo2608043388/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2978f - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x6600 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x9b3c6 - (*debug/elf.File).Section
           3: 0xae749 - debug/gosym.crack
                           at /usr/local/go/src/debug/gosym/pclntab_test.go:81:10
           4: 0xac1e7 - debug/gosym.getTable
                           at /usr/local/go/src/debug/gosym/pclntab_test.go:72:17
           5: 0xaeefe - debug/gosym.TestLineFromAline
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
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    platform cannot run go tool
    FailNow is incomplete, requires runtime.Goexit()
    building test executable for linktype 1 failed: exec: no command 
    FailNow is incomplete, requires runtime.Goexit()
    running test executable failed: open /dev/null: errno 2 
    FailNow is incomplete, requires runtime.Goexit()
    Testprog output:
    unexpected program output: 
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: index out of range
Error: failed to run main module `/tmp/tinygo3256946882/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x291db - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x27da - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:160:16
           2: 0xd0447 - <unknown>!debug/pe.testDWARF
           3: 0xca76d - debug/pe.testCgoDWARF
                           at /usr/local/go/src/debug/pe/file_cgo_test.go:19:11
           4: 0xd09c3 - debug/pe.TestDefaultLinkerDWARF
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


### encoding/binary wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/16
=== RUN   TestUnexportedRead
panic: reflect: value is not settable
Error: failed to run main module `/tmp/tinygo4198824980/main`

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
           3: 0x74065 - (*encoding/binary.decoder).int32
                           at /usr/local/go/src/encoding/binary/binary.go:656:11              - (*encoding/binary.decoder).value
                           at /usr/local/go/src/encoding/binary/binary.go:656:25
           4: 0x73cc6 - (*encoding/binary.decoder).value
                           at /usr/local/go/src/encoding/binary/binary.go:636:12
           5: 0x72db3 - encoding/binary.Read
           6: 0x7d005 - encoding/binary.TestUnexportedRead
                           at /usr/local/go/src/encoding/binary/binary_test.go:395:6
           7: 0x2b273 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x57acf - (*testing.T).Run
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


### encoding/pem wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/4
=== RUN   TestCVE202224675

```


### encoding/xml wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/336
=== RUN   TestCVE202228131
Error: failed to run main module `/tmp/tinygo3118188887/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x9e0c7 - (*encoding/xml.Decoder).unmarshalPath
                           at /usr/local/go/src/encoding/xml/read.go:711:56
           1: 0x9a23c - <unknown>!(*encoding/xml.Decoder).unmarshal
           2: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
           3: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
           4: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
           5: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
           6: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
           7: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
           8: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
           9: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          10: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          11: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          12: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          13: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          14: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          15: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          16: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          17: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          18: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          19: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          20: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          21: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          22: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          23: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          24: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          25: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          26: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          27: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          28: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          29: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          30: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          31: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          32: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          33: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          34: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          35: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          36: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          37: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          38: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          39: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          40: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          41: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          42: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          43: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          44: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          45: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          46: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          47: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          48: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          49: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          50: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          51: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          52: 0x9a2fb - <unknown>!(*encoding/xml.Decoder).unmarshal
          53: 0x9814b - (*encoding/xml.Decoder).DecodeElement
          54: 0x97bff - (*encoding/xml.Decoder).Decode
                           at /usr/local/go/src/encoding/xml/read.go:140:24
          55: 0x978e5 - encoding/xml.Unmarshal
                           at /usr/local/go/src/encoding/xml/read.go:134:49
          56: 0xb4022 - encoding/xml.TestCVE202228131
                           at /usr/local/go/src/encoding/xml/read_test.go:1106:18
          57: 0x38f31 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          58: 0x732f8 - (*testing.T).Run
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

```


### errors wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 21/56
=== RUN   TestAs
--- FAIL: TestAs (0.01s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0x45df0)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0x45df0) (0.00s)
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
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x45ec0)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x2703c)}
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
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x45ec0)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x2703c)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0x45e00) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0x45e00)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x45ec0)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x2703c)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0x45e00) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAsValidation
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo1472648553/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x32a2 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x1030c - (Go interface method)
                           at /usr/local/go/src/errors/wrap.go:102:8              - errors.As
                           at /usr/local/go/src/errors/wrap.go:109:24
           2: 0x7573d - errors_test.TestAsValidation$1
                           at /usr/local/go/src/errors/wrap_test.go:232:22
           3: 0x2afd9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x56c21 - (*testing.T).Run
           5: 0x75582 - errors_test.TestAsValidation
                           at /usr/local/go/src/errors/wrap_test.go:228:8
           6: 0x2afd9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x56c21 - (*testing.T).Run
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
=== RUN   TestAs/8:As(Errorf(...,_err),_0x45e00)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0x45e00) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0x45df0)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0x45df0) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0x45e10)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0x45e10) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x45df0)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x45df0) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0x45df0)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0x45df0) (0.00s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0x45df0)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0x45df0) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x45e00)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x45e00) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo1472648553/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x32a2 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x1030c - (Go interface method)
                           at /usr/local/go/src/errors/wrap.go:102:8              - errors.As
                           at /usr/local/go/src/errors/wrap.go:109:24
           2: 0x7573d - errors_test.TestAsValidation$1
                           at /usr/local/go/src/errors/wrap_test.go:232:22
           3: 0x2afd9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x56c21 - (*testing.T).Run
           5: 0x75582 - errors_test.TestAsValidation
                           at /usr/local/go/src/errors/wrap_test.go:228:8
           6: 0x2afd9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x56c21 - (*testing.T).Run
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
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0x45e00)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x45ec0)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x2703c)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0x45e00) (0.00s)

```


### flag wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/14
=== RUN   TestPrintDefaults
panic: panic!
Error: failed to run main module `/tmp/tinygo2774691921/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3719 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x215b7 - (*flag_test.zeroPanicker).String
                           at /usr/local/go/src/flag/flag_test.go:479:8
           2: 0x601a6 - (Go interface method)
           3: 0x5f84b - (Go interface method)
                           at /usr/local/go/src/flag/flag.go:560:46              - flag.isZeroValue
                           at /usr/local/go/src/flag/flag.go:545:27              - (*flag.FlagSet).PrintDefaults$1
                           at /usr/local/go/src/flag/flag.go:630:32
           4: 0x5fe64 - (*flag.FlagSet).VisitAll
                           at /usr/local/go/src/flag/flag.go:458:5
           5: 0x5e889 - (*flag.FlagSet).PrintDefaults
                           at /usr/local/go/src/flag/flag.go:609:12
           6: 0x9e2ae - flag_test.TestPrintDefaults
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
Error: failed to run main module `/tmp/tinygo119313178/main`

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
           6: 0x78c15 - <unknown>!(*fmt.pp).handleMethods
           7: 0x72923 - <unknown>!(*fmt.pp).printArg
           8: 0x754f0 - <unknown>!(*fmt.pp).doPrintf
           9: 0x253df - fmt.Sprintf
                           at /usr/local/go/src/fmt/print.go:239:12
          10: 0xa8a8d - fmt_test.TestSprintf
                           at /usr/local/go/src/fmt/fmt_test.go:1095:15
          11: 0x4facc - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x8dd6f - (*testing.T).Run
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
Failures/Tests: 17/56
=== RUN   TestDotSlashImport
    no buildable Go source files in testdata/other
    FailNow is incomplete, requires runtime.Goexit()
    testdata/other: Imports=[], want [./file]
    FailNow is incomplete, requires runtime.Goexit()
    import "./file": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestDotSlashImport (0.00s)
=== RUN   TestLocalDirectory
    import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
    ImportPath=".", want "go/build"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestLocalDirectory (0.03s)
=== RUN   TestImportCmd
    go/build: go list cmd/internal/objfile: open /dev/null: errno 2
        
        
    FailNow is incomplete, requires runtime.Goexit()
    Import cmd/internal/objfile returned Dir="", want ".../src/cmd/internal/objfile"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportCmd (0.00s)
=== RUN   TestImportDirNotExist
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportDirNotExist (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestImportDirNotExist166425114: errno 52
=== RUN   TestImportDirNotExist/GO111MODULE=off
    --- PASS: TestImportDirNotExist/GO111MODULE=off (0.00s)
=== RUN   TestImportDirNotExist/GO111MODULE=on
        Import(full, 0) got error: "go/build: go list go/build/doesnotexist: open /dev/null: errno 2\n\n", want "cannot find package" or "is not in std" error
        Import(full, FindOnly) got error: "go/build: go list go/build/doesnotexist: open /dev/null: errno 2\n\n", want "cannot find package" or "is not in std" error
    --- FAIL: TestImportDirNotExist/GO111MODULE=on (0.00s)
=== RUN   TestImportVendor
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    cannot find vendored c/d from testdata src/a/b directory: import "c/d": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportVendor (0.03s)
=== RUN   TestImportVendorFailure
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportVendorFailure (0.02s)
=== RUN   TestImportVendorParentFailure
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportVendorParentFailure (0.00s)
=== RUN   TestImportPackageOutsideModule
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    error when importing package when no go.mod is present: got "go/build: go list example.com/p: open /dev/null: errno 2\n\n"; want "go.mod file not found in current directory or any parent directory"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportPackageOutsideModule (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestImportPackageOutsideModule38795232: errno 52
=== RUN   TestIssue23594
    could not import testdata: import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestIssue23594 (0.00s)
=== RUN   TestMissingImportErrorRepetition
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestMissingImportErrorRepetition (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestMissingImportErrorRepetition78942036: errno 52
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
=== RUN   TestFindImports
    open /usr/local/go/src/go/build: errno 2
    FailNow is incomplete, requires runtime.Goexit()
    go/build imports []
    expected to find "bytes" in import list
    expected to find "os" in import list
    expected to find "path/filepath" in import list
    expected to find "strings" in import list
--- FAIL: TestFindImports (0.00s)
=== RUN   TestImportDirNotExist/GO111MODULE=off
    --- PASS: TestImportDirNotExist/GO111MODULE=off (0.00s)
=== RUN   TestImportDirNotExist/GO111MODULE=on
        Import(full, 0) got error: "go/build: go list go/build/doesnotexist: open /dev/null: errno 2\n\n", want "cannot find package" or "is not in std" error
        Import(full, FindOnly) got error: "go/build: go list go/build/doesnotexist: open /dev/null: errno 2\n\n", want "cannot find package" or "is not in std" error
    --- FAIL: TestImportDirNotExist/GO111MODULE=on (0.00s)

```


### go/build/constraint wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 7/13
=== RUN   TestLex/1
    --- PASS: TestLex/1 (0.00s)
=== RUN   TestLex/0
    --- PASS: TestLex/0 (0.00s)
=== RUN   TestLex/2
    --- PASS: TestLex/2 (0.00s)
=== RUN   TestLex/3
    --- PASS: TestLex/3 (0.00s)
=== RUN   TestLex/4
    --- PASS: TestLex/4 (0.00s)
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
Error: failed to run main module `/tmp/tinygo3163299308/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3a06 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x7278d - (*go/build/constraint.exprParser).lex
                           at /usr/local/go/src/go/build/constraint/expr.go:339:8
           2: 0x74bc2 - go/build/constraint.lexHelp
                           at /usr/local/go/src/go/build/constraint/expr_test.go:108:7              - go/build/constraint.TestLex$1
                           at /usr/local/go/src/go/build/constraint/expr_test.go:77:24
           3: 0x30655 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x569c9 - (*testing.T).Run
           5: 0x74986 - go/build/constraint.TestLex
                           at /usr/local/go/src/go/build/constraint/expr_test.go:73:8
           6: 0x30655 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x569c9 - (*testing.T).Run
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
=== RUN   TestLex/5
panic: invalid syntax at ²
Error: failed to run main module `/tmp/tinygo3163299308/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3a06 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x7278d - (*go/build/constraint.exprParser).lex
                           at /usr/local/go/src/go/build/constraint/expr.go:339:8
           2: 0x74bc2 - go/build/constraint.lexHelp
                           at /usr/local/go/src/go/build/constraint/expr_test.go:108:7              - go/build/constraint.TestLex$1
                           at /usr/local/go/src/go/build/constraint/expr_test.go:77:24
           3: 0x30655 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x569c9 - (*testing.T).Run
           5: 0x74986 - go/build/constraint.TestLex
                           at /usr/local/go/src/go/build/constraint/expr_test.go:73:8
           6: 0x30655 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x569c9 - (*testing.T).Run
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
Error: failed to run main module `/tmp/tinygo1927102340/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2cdc - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6a96a - (*math/big.Rat).SetFrac64
                           at /usr/local/go/src/math/big/rat.go:321:8              - math/big.NewRat
                           at /usr/local/go/src/math/big/rat.go:34:27
           2: 0x94694 - go/constant.BinaryOp
                           at /usr/local/go/src/go/constant/value.go:1136:19
           3: 0x96daa - go/constant.doOp
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
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3397077851/main /tmp/tinygo3397077851/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo3397077851/main --output /tmp/tinygo3397077851/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo3397077851/main -o /tmp/tinygo3397077851/main
wasm-tools component new /tmp/tinygo3397077851/main -o /tmp/tinygo3397077851/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --wasm component-model --dir=/tmp::/tmp /tmp/tinygo3397077851/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/doc --wasm component-model --dir=/tmp::/tmp /tmp/tinygo3397077851/main -test.v
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo3397077851/main`

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
FAIL	go/doc	20.884s
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
    no testdata
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestTestdata (0.06s)

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
Error: failed to run main module `/tmp/tinygo1555141856/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x388f1 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x7d4f - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x1f1aa5 - (Go interface method)
           3: 0x226107 - go/importer.TestForCompiler$1
                           at /usr/local/go/src/go/importer/importer_test.go:41:25
           4: 0x65794 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x2200eb - (*testing.T).Run
           6: 0x225e52 - go/importer.TestForCompiler
                           at /usr/local/go/src/go/importer/importer_test.go:39:7
           7: 0x65794 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x2200eb - (*testing.T).Run
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
Error: failed to run main module `/tmp/tinygo1555141856/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x388f1 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x7d4f - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x1f1aa5 - (Go interface method)
           3: 0x226107 - go/importer.TestForCompiler$1
                           at /usr/local/go/src/go/importer/importer_test.go:41:25
           4: 0x65794 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x2200eb - (*testing.T).Run
           6: 0x225e52 - go/importer.TestForCompiler
                           at /usr/local/go/src/go/importer/importer_test.go:39:7
           7: 0x65794 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x2200eb - (*testing.T).Run
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
Failures/Tests: 1/3
=== RUN   TestParseFile
panic: (125112:0x000204f0)
Error: failed to run main module `/tmp/tinygo65635412/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x38aa - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x8fc45 - (*go/parser.parser).error
                           at /usr/local/go/src/go/parser/parser.go:277:9
           2: 0x9973b - (*go/parser.parser).parseIndexOrSliceOrInstance
                           at /usr/local/go/src/go/parser/parser.go:1587:12              - (*go/parser.parser).parsePrimaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1732:37
           3: 0xa4460 - (*go/parser.parser).parseUnaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1835:27
           4: 0x99ed8 - (*go/parser.parser).parseBinaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1856:23
           5: 0x9a1bd - (*go/parser.parser).parseBinaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1870:25
           6: 0xa3bc2 - (*go/parser.parser).parseExpr
                           at /usr/local/go/src/go/parser/parser.go:1881:26
           7: 0x977c9 - (*go/parser.parser).parseExprList
                           at /usr/local/go/src/go/parser/parser.go:502:33              - (*go/parser.parser).parseList
                           at /usr/local/go/src/go/parser/parser.go:514:25
           8: 0x92e97 - <unknown>!(*go/parser.parser).parseValueSpec$bound
           9: 0x90929 - (*go/parser.parser).parseGenDecl
                           at /usr/local/go/src/go/parser/parser.go:2740:24
          10: 0x91272 - (*go/parser.parser).parseDecl
                           at /usr/local/go/src/go/parser/parser.go:2835:9
          11: 0x8e3c3 - go/parser.ParseFile
                           at /usr/local/go/src/go/parser/parser.go:2886:38
          12: 0xab0cc - go/parser.TestParseFile
                           at /usr/local/go/src/go/parser/parser_test.go:46:21
          13: 0x2fe12 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          14: 0x77dc3 - (*testing.T).Run
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
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.17s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.11s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.05s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.04s)
=== RUN   TestFiles
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.01s)
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.04s)
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.02s)
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.01s)
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.03s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.09s)
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.17s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.11s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.05s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.04s)
=== RUN   TestFiles/slow.input
panic: runtime error: slice out of range
Error: failed to run main module `/tmp/tinygo423054573/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1849b - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x327f - runtime.slicePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:165:16
           2: 0x4775b - os.ReadFile
           3: 0xd8cd5 - go/printer.runcheck
                           at /usr/local/go/src/go/printer/printer_test.go:121:25              - go/printer.check$1
                           at /usr/local/go/src/go/printer/printer_test.go:152:11
           4: 0xd919f - <goroutine wrapper>
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
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.04s)
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.02s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.09s)
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.01s)
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.01s)
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.03s)
=== RUN   TestFiles/slow.input
panic: runtime error: slice out of range
Error: failed to run main module `/tmp/tinygo423054573/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1849b - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x327f - runtime.slicePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:165:16
           2: 0x4775b - os.ReadFile
           3: 0xd8cd5 - go/printer.runcheck
                           at /usr/local/go/src/go/printer/printer_test.go:121:25              - go/printer.check$1
                           at /usr/local/go/src/go/printer/printer_test.go:152:11
           4: 0xd919f - <goroutine wrapper>
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

```


### go/token wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo4090918461/main /tmp/tinygo4090918461/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo4090918461/main --output /tmp/tinygo4090918461/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo4090918461/main -o /tmp/tinygo4090918461/main
wasm-tools component new /tmp/tinygo4090918461/main -o /tmp/tinygo4090918461/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --wasm component-model --dir=/tmp::/tmp /tmp/tinygo4090918461/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/go/token --wasm component-model --dir=/tmp::/tmp /tmp/tinygo4090918461/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
Error: failed to run main module `/tmp/tinygo4090918461/main`

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
FAIL	go/token	16.940s
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
Error: failed to run main module `/tmp/tinygo578739/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x34fe - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6e44f - hash/crc32.archInitIEEE
                           at /usr/local/go/src/hash/crc32/crc32_otherarch.go:10:57
           2: 0x72336 - hash/crc32.TestArchIEEE
                           at /usr/local/go/src/hash/crc32/crc32_test.go:232:14
           3: 0x2611c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x5445c - (*testing.T).Run
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
Error: failed to run main module `/tmp/tinygo2807078237/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x4401 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x573d - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0x105a07 - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0x10f8ea - (*text/template.Template).Funcs
                           at /usr/local/go/src/text/template/template.go:181:15
           4: 0x138891 - (*html/template.escaper).commit
                           at /usr/local/go/src/html/template/escape.go:918:25              - html/template.escapeTemplate
                           at /usr/local/go/src/html/template/escape.go:40:17
           5: 0x139533 - (*html/template.Template).lookupAndEscapeTemplate
                           at /usr/local/go/src/html/template/template.go:163:23              - (*html/template.Template).ExecuteTemplate
                           at /usr/local/go/src/html/template/template.go:135:40
           6: 0x1428a3 - html/template.TestAddParseTreeHTML
                           at /usr/local/go/src/html/template/clone_test.go:25:29
           7: 0x57719 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x115dca - (*testing.T).Run
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
Error: failed to run main module `/tmp/tinygo3974193450/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x35bc - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x7823a - (image.Rectangle).Dx
                           at /usr/local/go/src/image/image.go:96:8              - image.pixelBufferLength
                           at /usr/local/go/src/image/image.go:94:47
           2: 0x76593 - image.NewRGBA
                           at /usr/local/go/src/image/image.go:229:42
           3: 0x84cf9 - image.TestNewXxxBadRectangle$2
                           at /usr/local/go/src/image/image_test.go:108:39
           4: 0x84e9f - image.TestNewXxxBadRectangle$1
                           at /usr/local/go/src/image/image_test.go:94:10
           5: 0x83cc7 - image.TestNewXxxBadRectangle
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
Error: failed to run main module `/tmp/tinygo461614905/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x348e - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x3783 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x6baf8 - (Go interface method)
           3: 0x6c916 - testing/quick.CheckEqual
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
Failures/Tests: 1/9
=== RUN   TestSqDiff
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo1813292671/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3851 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x3b46 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x8b026 - (Go interface method)
           3: 0x9d768 - testing/quick.CheckEqual
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
Failures/Tests: 1/13
=== RUN   TestDimensionOverflow

```


### index/suffixarray wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 5/7
=== RUN   TestNew32
=== RUN   TestNew32/ababab...
    --- PASS: TestNew32/ababab... (32.40s)
=== RUN   TestNew32/forcealloc
    --- PASS: TestNew32/forcealloc (5.50s)
=== RUN   TestNew32/exhaustive2
    --- PASS: TestNew32/exhaustive2 (170.93s)
=== RUN   TestNew32/exhaustive3
=== RUN   TestNew32/ababab...
    --- PASS: TestNew32/ababab... (32.40s)
=== RUN   TestNew32/forcealloc
    --- PASS: TestNew32/forcealloc (5.50s)
=== RUN   TestNew32/exhaustive2
    --- PASS: TestNew32/exhaustive2 (170.93s)
=== RUN   TestNew32/exhaustive3

```


### io wasip2/wasm

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
--- FAIL: TestMultiReaderFreesExhaustedReaders (5.08s)

```


### io/fs wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/6
=== RUN   TestGlob
    Glob(`gl?b.go`) = []string(nil) want glob.go
    Glob(`*/glob.go`) = []string(nil) want fs/glob.go
--- FAIL: TestGlob (0.05s)
=== RUN   TestCVE202230630
Error: failed to run main module `/tmp/tinygo728513714/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x114cf - path.Match
                           at /usr/local/go/src/path/match.go:37:6
           1: 0x44373 - (Go interface assert)
                           at /usr/local/go/src/io/fs/glob.go:49:25              - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:44:22
           2: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           3: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           4: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           5: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           6: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           7: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           8: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           9: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          10: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          11: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          12: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          13: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          14: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          15: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          16: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          17: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          18: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          19: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          20: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          21: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          22: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          23: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          24: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          25: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          26: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          27: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          28: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          29: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          30: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          31: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          32: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          33: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          34: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          35: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          36: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          37: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          38: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          39: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          40: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          41: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          42: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          43: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          44: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          45: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          46: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          47: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          48: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          49: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          50: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          51: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          52: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          53: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          54: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          55: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          56: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          57: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          58: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          59: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          60: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          61: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          62: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          63: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          64: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          65: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          66: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          67: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          68: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          69: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          70: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          71: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          72: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          73: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          74: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          75: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          76: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          77: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          78: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          79: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          80: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          81: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          82: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          83: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          84: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          85: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          86: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          87: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          88: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          89: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          90: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          91: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          92: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          93: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          94: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          95: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          96: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          97: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          98: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          99: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         100: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         101: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         102: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         103: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         104: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         105: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         106: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         107: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         108: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         109: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         110: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         111: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         112: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         113: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         114: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         115: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         116: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         117: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         118: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         119: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         120: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         121: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         122: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         123: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         124: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         125: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         126: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         127: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         128: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         129: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         130: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         131: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         132: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         133: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         134: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         135: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         136: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         137: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         138: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         139: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         140: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         141: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         142: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         143: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         144: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         145: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         146: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         147: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         148: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         149: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         150: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         151: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         152: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         153: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         154: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         155: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         156: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         157: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         158: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         159: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         160: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         161: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         162: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         163: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         164: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         165: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         166: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         167: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         168: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         169: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         170: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         171: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         172: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         173: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         174: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         175: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         176: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         177: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         178: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         179: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         180: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         181: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         182: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         183: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         184: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         185: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         186: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         187: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         188: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         189: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         190: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         191: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         192: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         193: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         194: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         195: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         196: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         197: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         198: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         199: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         200: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         201: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         202: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         203: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         204: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         205: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         206: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         207: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         208: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         209: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         210: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         211: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         212: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         213: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         214: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         215: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         216: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         217: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         218: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         219: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         220: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         221: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         222: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         223: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         224: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         225: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         226: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         227: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         228: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         229: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         230: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         231: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         232: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         233: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         234: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         235: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         236: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         237: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         238: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         239: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         240: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         241: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         242: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         243: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         244: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         245: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         246: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         247: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         248: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         249: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         250: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         251: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         252: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         253: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         254: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         255: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         256: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         257: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         258: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         259: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         260: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         261: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         262: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         263: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         264: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         265: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         266: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         267: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         268: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         269: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         270: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         271: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         272: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         273: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         274: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         275: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         276: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         277: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         278: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         279: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         280: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         281: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         282: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         283: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         284: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         285: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         286: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         287: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         288: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         289: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         290: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         291: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         292: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         293: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         294: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         295: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         296: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         297: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         298: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         299: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         300: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         301: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         302: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         303: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         304: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         305: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         306: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         307: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         308: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         309: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         310: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         311: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         312: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         313: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         314: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         315: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         316: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         317: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         318: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         319: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         320: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         321: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         322: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         323: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         324: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         325: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         326: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         327: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         328: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         329: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         330: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         331: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         332: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         333: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         334: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         335: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         336: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         337: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         338: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         339: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         340: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         341: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         342: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         343: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         344: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         345: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         346: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         347: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         348: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         349: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         350: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         351: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         352: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         353: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         354: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         355: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         356: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         357: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         358: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         359: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         360: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         361: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         362: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         363: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         364: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         365: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         366: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         367: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         368: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         369: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         370: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         371: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         372: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         373: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         374: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         375: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         376: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         377: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         378: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         379: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         380: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         381: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         382: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         383: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         384: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         385: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         386: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         387: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         388: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         389: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         390: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         391: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         392: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         393: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         394: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         395: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         396: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         397: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         398: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         399: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         400: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         401: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         402: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         403: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         404: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         405: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         406: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         407: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         408: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         409: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         410: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         411: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         412: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         413: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         414: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         415: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         416: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         417: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         418: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         419: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         420: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         421: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         422: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         423: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         424: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         425: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         426: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         427: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         428: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         429: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         430: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         431: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         432: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         433: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         434: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         435: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         436: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         437: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         438: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         439: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         440: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         441: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         442: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         443: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         444: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         445: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         446: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         447: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         448: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         449: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         450: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         451: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         452: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         453: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         454: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         455: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         456: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         457: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         458: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         459: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         460: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         461: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         462: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         463: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         464: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         465: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         466: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         467: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         468: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         469: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         470: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         471: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         472: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         473: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         474: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         475: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         476: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         477: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         478: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         479: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         480: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         481: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         482: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         483: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         484: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         485: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         486: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         487: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         488: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         489: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         490: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         491: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         492: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         493: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         494: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         495: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         496: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         497: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         498: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         499: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         500: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         501: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         502: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         503: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         504: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         505: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         506: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         507: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         508: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         509: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         510: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         511: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         512: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         513: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         514: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         515: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         516: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         517: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         518: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         519: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         520: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         521: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         522: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         523: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         524: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         525: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         526: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         527: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         528: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         529: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         530: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         531: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         532: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         533: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         534: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         535: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         536: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         537: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         538: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         539: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         540: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         541: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         542: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         543: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         544: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         545: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         546: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         547: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         548: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         549: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         550: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         551: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         552: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         553: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         554: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         555: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         556: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         557: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         558: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         559: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         560: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         561: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         562: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         563: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         564: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         565: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         566: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         567: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         568: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         569: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         570: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         571: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         572: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         573: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         574: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         575: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         576: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         577: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         578: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         579: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         580: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         581: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         582: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         583: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         584: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         585: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         586: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         587: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         588: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         589: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         590: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         591: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         592: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         593: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         594: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         595: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         596: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         597: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         598: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         599: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         600: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         601: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         602: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         603: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         604: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         605: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         606: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         607: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         608: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         609: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         610: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         611: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         612: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         613: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         614: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         615: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         616: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         617: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         618: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         619: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         620: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         621: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         622: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         623: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         624: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         625: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         626: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         627: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         628: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         629: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         630: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         631: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         632: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         633: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         634: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         635: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         636: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         637: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         638: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         639: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         640: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         641: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         642: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         643: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         644: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         645: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         646: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         647: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         648: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         649: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         650: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         651: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         652: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         653: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         654: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         655: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         656: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         657: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         658: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         659: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         660: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         661: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         662: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         663: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         664: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         665: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         666: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         667: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         668: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         669: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         670: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         671: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         672: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         673: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         674: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         675: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         676: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         677: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         678: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         679: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         680: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         681: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         682: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         683: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         684: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         685: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         686: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         687: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         688: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         689: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         690: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         691: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         692: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         693: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         694: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         695: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         696: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         697: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         698: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         699: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         700: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         701: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         702: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         703: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         704: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         705: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         706: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         707: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         708: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         709: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         710: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         711: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         712: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         713: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         714: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         715: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         716: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         717: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         718: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         719: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         720: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         721: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         722: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         723: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         724: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         725: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         726: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         727: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         728: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         729: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         730: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         731: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         732: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         733: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         734: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         735: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         736: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         737: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         738: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         739: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         740: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         741: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         742: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         743: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         744: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         745: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         746: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         747: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         748: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         749: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         750: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         751: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         752: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         753: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         754: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         755: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         756: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         757: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         758: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         759: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         760: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         761: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         762: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         763: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         764: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         765: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         766: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         767: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         768: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         769: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         770: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         771: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         772: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         773: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         774: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         775: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         776: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         777: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         778: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         779: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         780: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         781: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         782: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         783: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         784: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         785: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         786: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         787: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         788: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         789: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         790: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         791: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         792: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         793: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         794: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         795: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         796: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         797: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         798: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         799: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         800: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         801: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         802: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         803: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         804: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         805: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         806: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         807: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         808: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         809: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         810: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         811: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         812: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         813: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         814: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         815: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         816: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         817: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         818: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         819: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         820: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         821: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         822: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         823: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         824: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         825: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         826: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         827: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         828: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         829: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         830: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         831: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         832: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         833: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         834: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         835: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         836: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         837: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         838: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         839: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         840: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         841: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         842: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         843: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         844: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         845: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         846: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         847: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         848: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         849: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         850: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         851: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         852: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         853: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         854: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         855: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         856: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         857: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         858: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         859: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         860: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         861: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         862: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         863: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         864: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         865: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         866: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         867: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         868: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         869: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         870: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         871: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         872: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         873: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         874: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         875: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         876: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         877: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         878: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         879: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         880: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         881: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         882: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         883: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         884: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         885: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         886: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         887: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         888: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         889: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         890: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         891: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         892: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         893: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         894: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         895: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         896: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         897: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         898: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         899: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         900: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         901: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         902: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         903: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         904: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         905: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         906: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         907: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         908: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         909: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         910: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         911: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         912: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         913: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         914: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         915: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         916: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         917: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         918: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         919: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         920: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         921: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         922: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         923: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         924: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         925: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         926: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         927: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         928: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         929: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         930: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         931: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         932: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         933: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         934: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         935: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         936: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         937: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         938: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         939: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         940: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         941: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         942: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         943: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         944: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         945: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         946: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         947: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         948: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         949: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         950: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         951: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         952: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         953: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         954: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         955: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         956: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         957: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         958: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         959: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         960: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         961: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         962: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         963: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         964: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         965: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         966: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         967: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         968: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         969: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         970: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         971: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         972: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         973: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         974: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         975: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         976: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         977: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         978: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         979: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         980: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         981: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         982: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         983: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         984: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         985: 0x444cc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         986: 0x44080 - io/fs.Glob
                           at /usr/local/go/src/io/fs/glob.go:34:22
         987: 0x89e4a - <unknown>!io/fs_test.TestCVE202230630
         988: 0x2a230 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         989: 0x6e126 - (*testing.T).Run
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
Failures/Tests: 2/28
=== RUN   TestReadOnlyWriteFile
    Expected an error when writing to read-only file /tmp/TestReadOnlyWriteFile225227126/blurp.txt
    FailNow is incomplete, requires runtime.Goexit()
    want shmorp, got florp
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestReadOnlyWriteFile (0.00s)
=== RUN   TestReadDir
    ReadDir ..: open ..: errno 63
    FailNow is incomplete, requires runtime.Goexit()
    ReadDir ..: io_test.go file not found
    FailNow is incomplete, requires runtime.Goexit()
    ReadDir ..: ioutil directory not found
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestReadDir (0.00s)

```


### log wasip2/wasm

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
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/26 04:34:21.729668 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/26 04:34:21.730912 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/26 04:34:21.731118 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/26 04:34:21.751425 ???:0: hello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/26 04:34:21.751655 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/26 04:34:21.751854 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/26 04:34:21.752052 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/26 04:34:21.752265 ???:0: XXXhello 23 world"
--- FAIL: TestAll (0.02s)

```


### log/slog wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2894288635/main /tmp/tinygo2894288635/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo2894288635/main --output /tmp/tinygo2894288635/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo2894288635/main -o /tmp/tinygo2894288635/main
wasm-tools component new /tmp/tinygo2894288635/main -o /tmp/tinygo2894288635/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --wasm component-model --dir=/tmp::/tmp /tmp/tinygo2894288635/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/log/slog --wasm component-model --dir=/tmp::/tmp /tmp/tinygo2894288635/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo2894288635/main`

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
FAIL	log/slog	8.087s
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
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3163607499/main /tmp/tinygo3163607499/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo3163607499/main.o: undefined symbol: maps.clone
wasm-ld: error: /tmp/tinygo3163607499/main.o: undefined symbol: maps.clone
failed to run tool: wasm-ld
FAIL	maps	0.000s
error: failed to link /tmp/tinygo3163607499/main: exit status 1
```


### math/bits wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/12
=== RUN   TestAdd64OverflowPanic
panic: overflow
Error: failed to run main module `/tmp/tinygo1724939655/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2aaa - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x7146a - math/bits_test.TestAdd64OverflowPanic$1
                           at /usr/local/go/src/math/bits/bits_test.go:816:10
           2: 0x71584 - math/bits_test.TestAdd64OverflowPanic$7
                           at /usr/local/go/src/math/bits/bits_test.go:860:28
           3: 0x716af - math/bits_test.TestAdd64OverflowPanic$6
                           at /usr/local/go/src/math/bits/bits_test.go:856:5
           4: 0x70f58 - math/bits_test.TestAdd64OverflowPanic
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
Failures/Tests: 28/42
=== RUN   TestDefaultRace
--- FAIL: TestDefaultRace (0.00s)
=== RUN   TestDefaultRace/0
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/1
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestDefaultRace/2
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestDefaultRace/3
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestDefaultRace/4
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestDefaultRace/5
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/5 (0.00s)
=== RUN   TestDefaultRace/5
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/5 (0.00s)
=== RUN   TestUniformFactorial/n=6/Int31n
    --- PASS: TestUniformFactorial/n=6/Int31n (55.90s)
=== RUN   TestUniformFactorial/n=4
=== RUN   TestUniformFactorial/n=5/Shuffle
    --- PASS: TestUniformFactorial/n=5/Shuffle (98.74s)
    --- PASS: TestUniformFactorial/n=5 (99.46s)
=== RUN   TestUniformFactorial/n=4/Int31n
    --- PASS: TestUniformFactorial/n=4/Int31n (0.02s)
=== RUN   TestUniformFactorial/n=5/Int31n
    --- PASS: TestUniformFactorial/n=5/Int31n (0.09s)
=== RUN   TestUniformFactorial/n=6/Shuffle
=== RUN   TestDefaultRace/0
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestUniformFactorial/n=3/int31n
    --- PASS: TestUniformFactorial/n=3/int31n (0.02s)
=== RUN   TestDefaultRace/2
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestUniformFactorial/n=5/int31n
    --- PASS: TestUniformFactorial/n=5/int31n (0.11s)
=== RUN   TestUniformFactorial/n=3/Perm
    --- PASS: TestUniformFactorial/n=3/Perm (0.09s)
=== RUN   TestUniformFactorial/n=3/Shuffle
    --- PASS: TestUniformFactorial/n=3/Shuffle (0.06s)
    --- PASS: TestUniformFactorial/n=3 (0.21s)
=== RUN   TestUniformFactorial/n=4/int31n
    --- PASS: TestUniformFactorial/n=4/int31n (0.01s)
=== RUN   TestUniformFactorial/n=5
=== RUN   TestUniformFactorial/n=6
=== RUN   TestUniformFactorial/n=6/Perm
    --- PASS: TestUniformFactorial/n=6/Perm (33.91s)
=== RUN   TestDefaultRace/1
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestUniformFactorial/n=3/Int31n
    --- PASS: TestUniformFactorial/n=3/Int31n (0.01s)
=== RUN   TestDefaultRace/4
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestUniformFactorial/n=3
=== RUN   TestUniformFactorial/n=4/Shuffle
    --- PASS: TestUniformFactorial/n=4/Shuffle (0.06s)
    --- PASS: TestUniformFactorial/n=4 (0.23s)
=== RUN   TestUniformFactorial
=== RUN   TestUniformFactorial/n=3
=== RUN   TestUniformFactorial/n=3/Int31n
    --- PASS: TestUniformFactorial/n=3/Int31n (0.01s)
=== RUN   TestUniformFactorial/n=3/int31n
    --- PASS: TestUniformFactorial/n=3/int31n (0.02s)
=== RUN   TestUniformFactorial/n=3/Perm
    --- PASS: TestUniformFactorial/n=3/Perm (0.09s)
=== RUN   TestUniformFactorial/n=3/Shuffle
    --- PASS: TestUniformFactorial/n=3/Shuffle (0.06s)
    --- PASS: TestUniformFactorial/n=3 (0.21s)
=== RUN   TestUniformFactorial/n=4
=== RUN   TestUniformFactorial/n=4/Int31n
    --- PASS: TestUniformFactorial/n=4/Int31n (0.02s)
=== RUN   TestUniformFactorial/n=4/int31n
    --- PASS: TestUniformFactorial/n=4/int31n (0.01s)
=== RUN   TestUniformFactorial/n=4/Perm
    --- PASS: TestUniformFactorial/n=4/Perm (0.13s)
=== RUN   TestUniformFactorial/n=4/Shuffle
    --- PASS: TestUniformFactorial/n=4/Shuffle (0.06s)
    --- PASS: TestUniformFactorial/n=4 (0.23s)
=== RUN   TestUniformFactorial/n=5
=== RUN   TestUniformFactorial/n=5/Int31n
    --- PASS: TestUniformFactorial/n=5/Int31n (0.09s)
=== RUN   TestUniformFactorial/n=5/int31n
    --- PASS: TestUniformFactorial/n=5/int31n (0.11s)
=== RUN   TestUniformFactorial/n=5/Perm
    --- PASS: TestUniformFactorial/n=5/Perm (0.50s)
=== RUN   TestUniformFactorial/n=5/Shuffle
    --- PASS: TestUniformFactorial/n=5/Shuffle (98.74s)
    --- PASS: TestUniformFactorial/n=5 (99.46s)
=== RUN   TestUniformFactorial/n=6
=== RUN   TestUniformFactorial/n=6/Int31n
    --- PASS: TestUniformFactorial/n=6/Int31n (55.90s)
=== RUN   TestUniformFactorial/n=6/int31n
    --- PASS: TestUniformFactorial/n=6/int31n (0.26s)
=== RUN   TestUniformFactorial/n=6/Perm
    --- PASS: TestUniformFactorial/n=6/Perm (33.91s)
=== RUN   TestUniformFactorial/n=6/Shuffle
=== RUN   TestDefaultRace/3
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestUniformFactorial/n=6/int31n
    --- PASS: TestUniformFactorial/n=6/int31n (0.26s)
=== RUN   TestUniformFactorial/n=4/Perm
    --- PASS: TestUniformFactorial/n=4/Perm (0.13s)
=== RUN   TestUniformFactorial/n=5/Perm
    --- PASS: TestUniformFactorial/n=5/Perm (0.50s)

```


### math/rand/v2 wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo4112250079/main /tmp/tinygo4112250079/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo4112250079/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: /tmp/tinygo4112250079/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: /tmp/tinygo4112250079/main.o: undefined symbol: internal/chacha8rand.block
failed to run tool: wasm-ld
FAIL	math/rand/v2	0.000s
error: failed to link /tmp/tinygo4112250079/main: exit status 1
```


### mime wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/14
=== RUN   TestTypeByExtension_LocalData
panic: runtime error: deadlocked: no event source
Error: failed to run main module `/tmp/tinygo3224654260/main`

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
Failures/Tests: 4/11
=== RUN   TestReadForm_MetadataTooLarge/large_name
    --- PASS: TestReadForm_MetadataTooLarge/large_name (0.07s)
=== RUN   TestReadForm_MetadataTooLarge/large_MIME_header
    --- PASS: TestReadForm_MetadataTooLarge/large_MIME_header (0.04s)
=== RUN   TestReadForm_MetadataTooLarge/many_parts
=== RUN   TestReadForm_MetadataTooLarge
=== RUN   TestReadForm_MetadataTooLarge/large_name
    --- PASS: TestReadForm_MetadataTooLarge/large_name (0.07s)
=== RUN   TestReadForm_MetadataTooLarge/large_MIME_header
    --- PASS: TestReadForm_MetadataTooLarge/large_MIME_header (0.04s)
=== RUN   TestReadForm_MetadataTooLarge/many_parts

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
Error: failed to run main module `/tmp/tinygo623224535/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3b0e - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xbbb09 - (net/netip.Addr).As4
                           at /usr/local/go/src/net/netip/netip.go:685:8
           2: 0xe3827 - <unknown>!net/netip_test.TestAs4
           3: 0x2a240 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x7581c - (*testing.T).Run
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
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo922265945/main /tmp/tinygo922265945/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo922265945/main --output /tmp/tinygo922265945/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo922265945/main -o /tmp/tinygo922265945/main
wasm-tools component new /tmp/tinygo922265945/main -o /tmp/tinygo922265945/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --wasm component-model --dir=/tmp::/tmp /tmp/tinygo922265945/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/net/url --wasm component-model --dir=/tmp::/tmp /tmp/tinygo922265945/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
Error: failed to run main module `/tmp/tinygo922265945/main`

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
FAIL	net/url	14.583s
```


### os wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3644141925/main /tmp/tinygo3644141925/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo3644141925/main --output /tmp/tinygo3644141925/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo3644141925/main -o /tmp/tinygo3644141925/main
wasm-tools component new /tmp/tinygo3644141925/main -o /tmp/tinygo3644141925/main
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
    Glob(`mat?h.go`) = []string(nil) want match.go
    Glob(`../*/match.go`) = []string(nil) want ../filepath/match.go
--- FAIL: TestGlob (0.02s)
=== RUN   TestCVE202230632
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo196140787/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1a590 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x62fa - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0xa641 - runtime.hashmapNext
           3: 0x34632 - syscall.findPreopenForPath
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/libc_wasip2.go:876:6
           4: 0x3661a - lstat
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/libc_wasip2.go:709:36
           5: 0x398c9 - syscall.Lstat
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/syscall_libc_wasi.go:383:17
           6: 0x44aae - os.lstatNolog$1
                           at /workspaces/dc-wasm-go/tinygo/src/os/stat_unix.go:44:42
           7: 0x44c77 - os.ignoringEINTR
                           at /workspaces/dc-wasm-go/tinygo/src/os/file_anyos.go:157:6
           8: 0x44817 - os.lstatNolog
                           at /workspaces/dc-wasm-go/tinygo/src/os/stat_unix.go:43:22              - os.Lstat
                           at /workspaces/dc-wasm-go/tinygo/src/os/stat.go:18:19
           9: 0x7e258 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:258:23
          10: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          11: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          12: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          13: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          14: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          15: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          16: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          17: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          18: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          19: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          20: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          21: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          22: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          23: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          24: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          25: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          26: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          27: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          28: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          29: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          30: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          31: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          32: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          33: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          34: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          35: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          36: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          37: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          38: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          39: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          40: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          41: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          42: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          43: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          44: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          45: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          46: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          47: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          48: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          49: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          50: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          51: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          52: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          53: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          54: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          55: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          56: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          57: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          58: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          59: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          60: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          61: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          62: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          63: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          64: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          65: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          66: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          67: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          68: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          69: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          70: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          71: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          72: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          73: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          74: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          75: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          76: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          77: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          78: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          79: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          80: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          81: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          82: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          83: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          84: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          85: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          86: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          87: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          88: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          89: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          90: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          91: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          92: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          93: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          94: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          95: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          96: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          97: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          98: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          99: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         100: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         101: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         102: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         103: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         104: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         105: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         106: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         107: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         108: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         109: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         110: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         111: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         112: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         113: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         114: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         115: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         116: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         117: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         118: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         119: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         120: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         121: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         122: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         123: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         124: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         125: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         126: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         127: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         128: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         129: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         130: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         131: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         132: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         133: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         134: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         135: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         136: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         137: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         138: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         139: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         140: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         141: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         142: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         143: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         144: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         145: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         146: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         147: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         148: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         149: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         150: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         151: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         152: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         153: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         154: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         155: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         156: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         157: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         158: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         159: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         160: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         161: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         162: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         163: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         164: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         165: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         166: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         167: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         168: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         169: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         170: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         171: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         172: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         173: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         174: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         175: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         176: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         177: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         178: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         179: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         180: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         181: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         182: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         183: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         184: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         185: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         186: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         187: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         188: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         189: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         190: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         191: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         192: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         193: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         194: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         195: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         196: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         197: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         198: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         199: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         200: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         201: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         202: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         203: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         204: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         205: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         206: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         207: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         208: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         209: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         210: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         211: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         212: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         213: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         214: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         215: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         216: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         217: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         218: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         219: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         220: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         221: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         222: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         223: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         224: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         225: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         226: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         227: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         228: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         229: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         230: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         231: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         232: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         233: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         234: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         235: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         236: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         237: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         238: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         239: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         240: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         241: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         242: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         243: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         244: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         245: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         246: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         247: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         248: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         249: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         250: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         251: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         252: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         253: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         254: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         255: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         256: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         257: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         258: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         259: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         260: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         261: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         262: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         263: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         264: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         265: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         266: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         267: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         268: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         269: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         270: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         271: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         272: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         273: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         274: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         275: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         276: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         277: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         278: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         279: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         280: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         281: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         282: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         283: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         284: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         285: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         286: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         287: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         288: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         289: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         290: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         291: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         292: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         293: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         294: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         295: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         296: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         297: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         298: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         299: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         300: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         301: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         302: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         303: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         304: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         305: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         306: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         307: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         308: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         309: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         310: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         311: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         312: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         313: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         314: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         315: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         316: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         317: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         318: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         319: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         320: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         321: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         322: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         323: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         324: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         325: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         326: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         327: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         328: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         329: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         330: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         331: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         332: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         333: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         334: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         335: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         336: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         337: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         338: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         339: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         340: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         341: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         342: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         343: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         344: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         345: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         346: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         347: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         348: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         349: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         350: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         351: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         352: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         353: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         354: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         355: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         356: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         357: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         358: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         359: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         360: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         361: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         362: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         363: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         364: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         365: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         366: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         367: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         368: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         369: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         370: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         371: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         372: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         373: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         374: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         375: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         376: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         377: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         378: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         379: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         380: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         381: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         382: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         383: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         384: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         385: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         386: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         387: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         388: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         389: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         390: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         391: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         392: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         393: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         394: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         395: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         396: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         397: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         398: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         399: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         400: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         401: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         402: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         403: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         404: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         405: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         406: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         407: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         408: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         409: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         410: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         411: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         412: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         413: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         414: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         415: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         416: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         417: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         418: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         419: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         420: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         421: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         422: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         423: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         424: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         425: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         426: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         427: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         428: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         429: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         430: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         431: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         432: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         433: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         434: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         435: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         436: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         437: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         438: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         439: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         440: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         441: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         442: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         443: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         444: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         445: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         446: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         447: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         448: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         449: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         450: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         451: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         452: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         453: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         454: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         455: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         456: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         457: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         458: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         459: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         460: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         461: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         462: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         463: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         464: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         465: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         466: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         467: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         468: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         469: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         470: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         471: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         472: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         473: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         474: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         475: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         476: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         477: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         478: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         479: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         480: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         481: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         482: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         483: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         484: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         485: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         486: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         487: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         488: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         489: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         490: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         491: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         492: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         493: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         494: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         495: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         496: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         497: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         498: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         499: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         500: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         501: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         502: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         503: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         504: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         505: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         506: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         507: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         508: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         509: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         510: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         511: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         512: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         513: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         514: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         515: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         516: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         517: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         518: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         519: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         520: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         521: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         522: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         523: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         524: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         525: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         526: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         527: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         528: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         529: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         530: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         531: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         532: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         533: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         534: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         535: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         536: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         537: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         538: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         539: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         540: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         541: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         542: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         543: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         544: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         545: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         546: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         547: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         548: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         549: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         550: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         551: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         552: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         553: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         554: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         555: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         556: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         557: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         558: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         559: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         560: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         561: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         562: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         563: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         564: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         565: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         566: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         567: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         568: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         569: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         570: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         571: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         572: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         573: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         574: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         575: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         576: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         577: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         578: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         579: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         580: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         581: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         582: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         583: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         584: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         585: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         586: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         587: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         588: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         589: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         590: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         591: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         592: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         593: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         594: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         595: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         596: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         597: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         598: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         599: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         600: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         601: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         602: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         603: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         604: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         605: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         606: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         607: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         608: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         609: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         610: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         611: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         612: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         613: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         614: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         615: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         616: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         617: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         618: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         619: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         620: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         621: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         622: 0x7e0ab - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         623: 0x7dd36 - path/filepath.Glob
                           at /usr/local/go/src/path/filepath/match.go:243:22
         624: 0x842da - path/filepath_test.TestCVE202230632
                           at /usr/local/go/src/path/filepath/match_test.go:162:16
         625: 0x2d5f1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         626: 0x63c3d - (*testing.T).Run
         627: 0x2d2f9 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
         628: 0x2d5f1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         629: 0x28641 - <unknown>!runtime.run$1
         630: 0x19eee - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
         631: 0x1a90 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
         632: 0x19da1 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
         633: 0x19b19 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

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
Error: failed to run main module `/tmp/tinygo799677170/main`

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
           5: 0x82d46 - regexp.Compile
                           at /usr/local/go/src/regexp/regexp.go:135:16
           6: 0x89903 - regexp.compileTest
                           at /usr/local/go/src/regexp/all_test.go:56:20
           7: 0x8a0ec - regexp.TestBadCompile
                           at /usr/local/go/src/regexp/all_test.go:76:14
           8: 0x4d8c6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x74a9e - (*testing.T).Run
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
Error: failed to run main module `/tmp/tinygo720965256/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x346d - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x5def9 - (*regexp/syntax.parser).checkHeight
                           at /usr/local/go/src/regexp/syntax/parse.go:270:8
           2: 0x5c844 - (*regexp/syntax.parser).checkLimits
                           at /usr/local/go/src/regexp/syntax/parse.go:166:15
           3: 0x5c02a - (*regexp/syntax.parser).push
           4: 0x64fe8 - regexp/syntax.parse
                           at /usr/local/go/src/regexp/syntax/parse.go:1441:7              - regexp/syntax.Parse
                           at /usr/local/go/src/regexp/syntax/parse.go:889:14
           5: 0x6c54a - regexp/syntax.TestParseInvalidRegexps
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
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3132548357/main /tmp/tinygo3132548357/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo3132548357/main --output /tmp/tinygo3132548357/main
FAIL	slices	0.000s
error: wasm-opt failed: signal: killed
```


### strconv wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/29
=== RUN   TestFormatComplexInvalidBitSize
panic: invalid bitSize
Error: failed to run main module `/tmp/tinygo103511103/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3ea8 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x55af4 - strconv.FormatComplex
                           at /usr/local/go/src/strconv/ctoa.go:16:8
           2: 0x9f946 - strconv_test.TestFormatComplexInvalidBitSize
                           at /usr/local/go/src/strconv/ctoa_test.go:52:19
           3: 0x376be - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x704a5 - (*testing.T).Run
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
Error: failed to run main module `/tmp/tinygo3581857022/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3f86 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x42543 - (*strings.Builder).Grow
                           at /usr/local/go/src/strings/builder.go:80:8
           2: 0x88ed0 - strings_test.TestBuilderGrow
                           at /usr/local/go/src/strings/builder_test.go:120:8
           3: 0x2f5e5 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x6df56 - (*testing.T).Run
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
--- FAIL: TestUnaligned64 (1.11s)
=== RUN   TestNilDeref
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo1273712321/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1509d - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x1cf8 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x84b08 - (*sync/atomic.Int32).CompareAndSwap
                           at /usr/local/go/src/sync/atomic/type.go:84:32              - sync/atomic_test.TestNilDeref$2
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2461:40
           3: 0x83f65 - sync/atomic_test.TestNilDeref$59
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2525:5              - sync/atomic_test.TestNilDeref
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2526:4
           4: 0x2835d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x56dc8 - (*testing.T).Run
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
Error: failed to run main module `/tmp/tinygo3549973591/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1bd40 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x23f7 - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:160:16
           2: 0x6a7d8 - syscall.Munmap
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/syscall_libc.go:248:42              - syscall_test.TestMmap
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/mmap_unix_test.go:19:26
           3: 0x2e19a - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x2de90 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           5: 0x2e19a - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x284c6 - <unknown>!runtime.run$1
           7: 0x1b69d - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           8: 0x18fe - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           9: 0x1b54f - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          10: 0x1b2c6 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### testing/fstest wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/5
=== RUN   TestSymlink
    TestFS found errors:
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
--- FAIL: TestSymlink (0.04s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestSymlink81374955: errno 52

```


### testing/quick wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestCheckEqual
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo3299109441/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3524 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x3819 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x6b9d1 - (Go interface method)
           3: 0x6bbcd - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48
           4: 0x6c1d8 - testing/quick.TestCheckEqual
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
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3747749415/main /tmp/tinygo3747749415/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo3747749415/main --output /tmp/tinygo3747749415/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo3747749415/main -o /tmp/tinygo3747749415/main
wasm-tools component new /tmp/tinygo3747749415/main -o /tmp/tinygo3747749415/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --wasm component-model --dir=/tmp::/tmp /tmp/tinygo3747749415/main -test.v
/workspaces/dc-wasm-go/bin/wasmtime run --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --dir=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --env=PWD=/home/vscode/.cache/tinygo/goroot-c2837f81ee81c8ecea884819967eafb31ba911b22ee551ef42f43b1105f0124e/src/testing/slogtest --wasm component-model --dir=/tmp::/tmp /tmp/tinygo3747749415/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo3747749415/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3303 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x19460 - testing/slogtest.withSource
                           at /usr/local/go/src/testing/slogtest/slogtest.go:362:8
           2: 0x17716 - <unknown>!runtime.initAll
           3: 0x16d49 - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:24:10
           4: 0xb737 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           5: 0x1829 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x16c4c - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11
           7: 0xcab8 - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11
           8: 0xca36 - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           9: 0xc9c3 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	testing/slogtest	3.980s
```


### text/tabwriter wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestPanicDuringFlush
panic: cannot write
Error: failed to run main module `/tmp/tinygo491993242/main`

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
           8: 0x6e9c9 - text/tabwriter_test.TestPanicDuringFlush
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
Error: failed to run main module `/tmp/tinygo2552787352/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3ddf - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x49b0 - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0xaf2c8 - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0xaed25 - (*text/template.Template).Funcs
                           at /usr/local/go/src/text/template/template.go:181:15
           4: 0xbdc2f - text/template.testExecute
                           at /usr/local/go/src/text/template/exec_test.go:796:23
           5: 0xbe3c0 - text/template.TestExecute
                           at /usr/local/go/src/text/template/exec_test.go:831:13
           6: 0x3c756 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x907ba - (*testing.T).Run
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
Error: failed to run main module `/tmp/tinygo1382842711/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3af4 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x57494 - (*fmt.ss).error
                           at /usr/local/go/src/fmt/scan.go:240:7
           2: 0x58aad - (*fmt.ss).accept
                           at /usr/local/go/src/fmt/scan.go:750:10              - (*fmt.ss).complexTokens
                           at /usr/local/go/src/fmt/scan.go:755:14              - (*fmt.ss).scanComplex
                           at /usr/local/go/src/fmt/scan.go:816:33
           3: 0x5a95a - <unknown>!fmt.Sscan
           4: 0x90e2b - text/template/parse.TestNumberParse
                           at /usr/local/go/src/text/template/parse/parse_test.go:99:23
           5: 0x2be04 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x62620 - (*testing.T).Run
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

