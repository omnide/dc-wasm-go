
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
archive/zip |<span style="color: green">🟢</span> &nbsp; 99 |[<span style="color: orange">⛈️</span>](#archivezip-wasip1wasm) &nbsp; [1](#archivezip-wasip1wasm) / 83 |[<span style="color: orange">⛈️</span>](#archivezip-wasip2wasm) &nbsp; [16](#archivezip-wasip2wasm) / 16 |
bufio |[<span style="color: orange">⛈️</span>](#bufio-linuxarm64) &nbsp; [1](#bufio-linuxarm64) / 81 |[<span style="color: orange">⛈️</span>](#bufio-wasip1wasm) &nbsp; [2](#bufio-wasip1wasm) / 42 |[<span style="color: orange">⛈️</span>](#bufio-wasip2wasm) &nbsp; [2](#bufio-wasip2wasm) / 42 |
bytes |<span style="color: green">🟢</span> &nbsp; 91 |[<span style="color: orange">⛈️</span>](#bytes-wasip1wasm) &nbsp; [1](#bytes-wasip1wasm) / 13 |[<span style="color: orange">⛈️</span>](#bytes-wasip2wasm) &nbsp; [1](#bytes-wasip2wasm) / 1 |
cmp |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |
compress/bzip2 |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |[<span style="color: red">❌</span>](#compressbzip2-wasip2wasm) &nbsp; [1](#compressbzip2-wasip2wasm) / 0 |
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
crypto/dsa |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |[<span style="color: orange">⛈️</span>](#cryptodsa-wasip2wasm) &nbsp; [1](#cryptodsa-wasip2wasm) / 1 |
crypto/ecdh |[<span style="color: red">❌</span>](#cryptoecdh-linuxarm64) &nbsp; [1](#cryptoecdh-linuxarm64) / 0 |[<span style="color: orange">⛈️</span>](#cryptoecdh-wasip1wasm) &nbsp; [1](#cryptoecdh-wasip1wasm) / 47 |[<span style="color: red">❌</span>](#cryptoecdh-wasip2wasm) &nbsp; [1](#cryptoecdh-wasip2wasm) / 0 |
crypto/ecdsa |[<span style="color: red">❌</span>](#cryptoecdsa-linuxarm64) &nbsp; [1](#cryptoecdsa-linuxarm64) / 0 |[<span style="color: orange">⛈️</span>](#cryptoecdsa-wasip1wasm) &nbsp; [6](#cryptoecdsa-wasip1wasm) / 77 |[<span style="color: orange">⛈️</span>](#cryptoecdsa-wasip2wasm) &nbsp; [1](#cryptoecdsa-wasip2wasm) / 31 |
crypto/ed25519 |[<span style="color: orange">⛈️</span>](#cryptoed25519-linuxarm64) &nbsp; [1](#cryptoed25519-linuxarm64) / 9 |[<span style="color: orange">⛈️</span>](#cryptoed25519-wasip1wasm) &nbsp; [1](#cryptoed25519-wasip1wasm) / 9 |[<span style="color: red">❌</span>](#cryptoed25519-wasip2wasm) &nbsp; [1](#cryptoed25519-wasip2wasm) / 0 |
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
debug/dwarf |<span style="color: green">🟢</span> &nbsp; 40 |<span style="color: green">🟢</span> &nbsp; 40 |[<span style="color: orange">⛈️</span>](#debugdwarf-wasip2wasm) &nbsp; [2](#debugdwarf-wasip2wasm) / 2 |
debug/elf |[<span style="color: red">❌</span>](#debugelf-linuxarm64) &nbsp; [1](#debugelf-linuxarm64) / 0 |[<span style="color: red">❌</span>](#debugelf-wasip1wasm) &nbsp; [1](#debugelf-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#debugelf-wasip2wasm) &nbsp; [1](#debugelf-wasip2wasm) / 0 |
debug/gosym |[<span style="color: orange">⛈️</span>](#debuggosym-linuxarm64) &nbsp; [1](#debuggosym-linuxarm64) / 1 |[<span style="color: orange">⛈️</span>](#debuggosym-wasip1wasm) &nbsp; [1](#debuggosym-wasip1wasm) / 1 |[<span style="color: red">❌</span>](#debuggosym-wasip2wasm) &nbsp; [1](#debuggosym-wasip2wasm) / 0 |
debug/macho |<span style="color: green">🟢</span> &nbsp; 7 |<span style="color: green">🟢</span> &nbsp; 7 |[<span style="color: orange">⛈️</span>](#debugmacho-wasip2wasm) &nbsp; [2](#debugmacho-wasip2wasm) / 3 |
debug/pe |[<span style="color: orange">⛈️</span>](#debugpe-linuxarm64) &nbsp; [1](#debugpe-linuxarm64) / 1 |[<span style="color: orange">⛈️</span>](#debugpe-wasip1wasm) &nbsp; [1](#debugpe-wasip1wasm) / 1 |[<span style="color: red">❌</span>](#debugpe-wasip2wasm) &nbsp; [1](#debugpe-wasip2wasm) / 0 |
debug/plan9obj |<span style="color: green">🟢</span> &nbsp; 2 |<span style="color: green">🟢</span> &nbsp; 2 |[<span style="color: orange">⛈️</span>](#debugplan9obj-wasip2wasm) &nbsp; [1](#debugplan9obj-wasip2wasm) / 2 |
embed |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
encoding |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
encoding/ascii85 |<span style="color: green">🟢</span> &nbsp; 9 |<span style="color: green">🟢</span> &nbsp; 9 |<span style="color: green">🟢</span> &nbsp; 9 |
encoding/asn1 |<span style="color: green">🟢</span> &nbsp; 38 |<span style="color: green">🟢</span> &nbsp; 38 |<span style="color: green">🟢</span> &nbsp; 38 |
encoding/base32 |<span style="color: green">🟢</span> &nbsp; 24 |<span style="color: green">🟢</span> &nbsp; 24 |<span style="color: green">🟢</span> &nbsp; 24 |
encoding/base64 |<span style="color: green">🟢</span> &nbsp; 17 |<span style="color: green">🟢</span> &nbsp; 17 |<span style="color: green">🟢</span> &nbsp; 17 |
encoding/binary |[<span style="color: orange">⛈️</span>](#encodingbinary-linuxarm64) &nbsp; [1](#encodingbinary-linuxarm64) / 20 |[<span style="color: orange">⛈️</span>](#encodingbinary-wasip1wasm) &nbsp; [1](#encodingbinary-wasip1wasm) / 16 |[<span style="color: orange">⛈️</span>](#encodingbinary-wasip2wasm) &nbsp; [1](#encodingbinary-wasip2wasm) / 16 |
encoding/csv |<span style="color: green">🟢</span> &nbsp; 71 |<span style="color: green">🟢</span> &nbsp; 71 |<span style="color: green">🟢</span> &nbsp; 71 |
encoding/gob |[<span style="color: red">❌</span>](#encodinggob-linuxarm64) &nbsp; [1](#encodinggob-linuxarm64) / 0 |[<span style="color: red">❌</span>](#encodinggob-wasip1wasm) &nbsp; [1](#encodinggob-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#encodinggob-wasip2wasm) &nbsp; [1](#encodinggob-wasip2wasm) / 0 |
encoding/hex |<span style="color: green">🟢</span> &nbsp; 12 |<span style="color: green">🟢</span> &nbsp; 12 |<span style="color: green">🟢</span> &nbsp; 12 |
encoding/json |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
encoding/pem |[<span style="color: orange">⛈️</span>](#encodingpem-linuxarm64) &nbsp; [1](#encodingpem-linuxarm64) / 7 |[<span style="color: orange">⛈️</span>](#encodingpem-wasip1wasm) &nbsp; [1](#encodingpem-wasip1wasm) / 4 |[<span style="color: orange">⛈️</span>](#encodingpem-wasip2wasm) &nbsp; [1](#encodingpem-wasip2wasm) / 4 |
encoding/xml |[<span style="color: orange">⛈️</span>](#encodingxml-linuxarm64) &nbsp; [1](#encodingxml-linuxarm64) / 336 |[<span style="color: orange">⛈️</span>](#encodingxml-wasip1wasm) &nbsp; [1](#encodingxml-wasip1wasm) / 336 |[<span style="color: orange">⛈️</span>](#encodingxml-wasip2wasm) &nbsp; [1](#encodingxml-wasip2wasm) / 336 |
errors |[<span style="color: orange">⛈️</span>](#errors-linuxarm64) &nbsp; [19](#errors-linuxarm64) / 60 |[<span style="color: orange">⛈️</span>](#errors-wasip1wasm) &nbsp; [21](#errors-wasip1wasm) / 56 |[<span style="color: orange">⛈️</span>](#errors-wasip2wasm) &nbsp; [21](#errors-wasip2wasm) / 56 |
expvar |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
flag |[<span style="color: orange">⛈️</span>](#flag-linuxarm64) &nbsp; [2](#flag-linuxarm64) / 24 |[<span style="color: orange">⛈️</span>](#flag-wasip1wasm) &nbsp; [1](#flag-wasip1wasm) / 14 |[<span style="color: red">❌</span>](#flag-wasip2wasm) &nbsp; [1](#flag-wasip2wasm) / 0 |
fmt |[<span style="color: orange">⛈️</span>](#fmt-linuxarm64) &nbsp; [1](#fmt-linuxarm64) / 3 |[<span style="color: orange">⛈️</span>](#fmt-wasip1wasm) &nbsp; [1](#fmt-wasip1wasm) / 3 |[<span style="color: orange">⛈️</span>](#fmt-wasip2wasm) &nbsp; [1](#fmt-wasip2wasm) / 3 |
go/ast |<span style="color: green">🟢</span> &nbsp; 8 |<span style="color: green">🟢</span> &nbsp; 8 |<span style="color: green">🟢</span> &nbsp; 8 |
go/build |[<span style="color: orange">⛈️</span>](#gobuild-linuxarm64) &nbsp; [16](#gobuild-linuxarm64) / 56 |[<span style="color: orange">⛈️</span>](#gobuild-wasip1wasm) &nbsp; [17](#gobuild-wasip1wasm) / 56 |[<span style="color: red">❌</span>](#gobuild-wasip2wasm) &nbsp; [1](#gobuild-wasip2wasm) / 0 |
go/build/constraint |<span style="color: green">🟢</span> &nbsp; 81 |[<span style="color: orange">⛈️</span>](#gobuildconstraint-wasip1wasm) &nbsp; [7](#gobuildconstraint-wasip1wasm) / 13 |[<span style="color: orange">⛈️</span>](#gobuildconstraint-wasip2wasm) &nbsp; [7](#gobuildconstraint-wasip2wasm) / 13 |
go/constant |[<span style="color: orange">⛈️</span>](#goconstant-linuxarm64) &nbsp; [1](#goconstant-linuxarm64) / 2 |[<span style="color: orange">⛈️</span>](#goconstant-wasip1wasm) &nbsp; [1](#goconstant-wasip1wasm) / 2 |[<span style="color: orange">⛈️</span>](#goconstant-wasip2wasm) &nbsp; [1](#goconstant-wasip2wasm) / 2 |
go/doc |[<span style="color: red">❌</span>](#godoc-linuxarm64) &nbsp; [1](#godoc-linuxarm64) / 0 |[<span style="color: red">❌</span>](#godoc-wasip1wasm) &nbsp; [1](#godoc-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#godoc-wasip2wasm) &nbsp; [1](#godoc-wasip2wasm) / 0 |
go/doc/comment |[<span style="color: orange">⛈️</span>](#godoccomment-linuxarm64) &nbsp; [1](#godoccomment-linuxarm64) / 10059 |[<span style="color: orange">⛈️</span>](#godoccomment-wasip1wasm) &nbsp; [1](#godoccomment-wasip1wasm) / 10059 |[<span style="color: red">❌</span>](#godoccomment-wasip2wasm) &nbsp; [1](#godoccomment-wasip2wasm) / 0 |
go/format |<span style="color: green">🟢</span> &nbsp; 4 |<span style="color: green">🟢</span> &nbsp; 4 |[<span style="color: orange">⛈️</span>](#goformat-wasip2wasm) &nbsp; [2](#goformat-wasip2wasm) / 4 |
go/importer |[<span style="color: orange">⛈️</span>](#goimporter-linuxarm64) &nbsp; [2](#goimporter-linuxarm64) / 2 |[<span style="color: orange">⛈️</span>](#goimporter-wasip1wasm) &nbsp; [2](#goimporter-wasip1wasm) / 2 |[<span style="color: red">❌</span>](#goimporter-wasip2wasm) &nbsp; [1](#goimporter-wasip2wasm) / 0 |
go/parser |[<span style="color: orange">⛈️</span>](#goparser-linuxarm64) &nbsp; [2](#goparser-linuxarm64) / 43 |[<span style="color: orange">⛈️</span>](#goparser-wasip1wasm) &nbsp; [1](#goparser-wasip1wasm) / 27 |[<span style="color: orange">⛈️</span>](#goparser-wasip2wasm) &nbsp; [3](#goparser-wasip2wasm) / 3 |
go/printer |[<span style="color: orange">⛈️</span>](#goprinter-linuxarm64) &nbsp; [12](#goprinter-linuxarm64) / 12 |[<span style="color: orange">⛈️</span>](#goprinter-wasip1wasm) &nbsp; [12](#goprinter-wasip1wasm) / 12 |[<span style="color: orange">⛈️</span>](#goprinter-wasip2wasm) &nbsp; [24](#goprinter-wasip2wasm) / 31 |
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
image/png |[<span style="color: orange">⛈️</span>](#imagepng-linuxarm64) &nbsp; [1](#imagepng-linuxarm64) / 13 |[<span style="color: orange">⛈️</span>](#imagepng-wasip1wasm) &nbsp; [1](#imagepng-wasip1wasm) / 13 |[<span style="color: orange">⛈️</span>](#imagepng-wasip2wasm) &nbsp; [6](#imagepng-wasip2wasm) / 28 |
index/suffixarray |<span style="color: green">🟢</span> &nbsp; 12 |[<span style="color: orange">⛈️</span>](#indexsuffixarray-wasip1wasm) &nbsp; [4](#indexsuffixarray-wasip1wasm) / 11 |[<span style="color: orange">⛈️</span>](#indexsuffixarray-wasip2wasm) &nbsp; [4](#indexsuffixarray-wasip2wasm) / 11 |
io |[<span style="color: orange">⛈️</span>](#io-linuxarm64) &nbsp; [4](#io-linuxarm64) / 60 |[<span style="color: orange">⛈️</span>](#io-wasip1wasm) &nbsp; [4](#io-wasip1wasm) / 60 |[<span style="color: orange">⛈️</span>](#io-wasip2wasm) &nbsp; [4](#io-wasip2wasm) / 60 |
io/fs |[<span style="color: orange">⛈️</span>](#iofs-linuxarm64) &nbsp; [1](#iofs-linuxarm64) / 6 |[<span style="color: orange">⛈️</span>](#iofs-wasip1wasm) &nbsp; [1](#iofs-wasip1wasm) / 6 |[<span style="color: orange">⛈️</span>](#iofs-wasip2wasm) &nbsp; [2](#iofs-wasip2wasm) / 6 |
io/ioutil |<span style="color: green">🟢</span> &nbsp; 28 |[<span style="color: orange">⛈️</span>](#ioioutil-wasip1wasm) &nbsp; [1](#ioioutil-wasip1wasm) / 28 |[<span style="color: orange">⛈️</span>](#ioioutil-wasip2wasm) &nbsp; [1](#ioioutil-wasip2wasm) / 1 |
log |[<span style="color: orange">⛈️</span>](#log-linuxarm64) &nbsp; [1](#log-linuxarm64) / 9 |[<span style="color: orange">⛈️</span>](#log-wasip1wasm) &nbsp; [1](#log-wasip1wasm) / 9 |[<span style="color: orange">⛈️</span>](#log-wasip2wasm) &nbsp; [1](#log-wasip2wasm) / 9 |
log/slog |[<span style="color: red">❌</span>](#logslog-linuxarm64) &nbsp; [1](#logslog-linuxarm64) / 0 |[<span style="color: red">❌</span>](#logslog-wasip1wasm) &nbsp; [1](#logslog-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#logslog-wasip2wasm) &nbsp; [1](#logslog-wasip2wasm) / 0 |
log/syslog |[<span style="color: red">❌</span>](#logsyslog-linuxarm64) &nbsp; [1](#logsyslog-linuxarm64) / 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |[<span style="color: red">❌</span>](#logsyslog-wasip2wasm) &nbsp; [1](#logsyslog-wasip2wasm) / 0 |
maps |[<span style="color: red">❌</span>](#maps-linuxarm64) &nbsp; [1](#maps-linuxarm64) / 0 |[<span style="color: red">❌</span>](#maps-wasip1wasm) &nbsp; [1](#maps-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#maps-wasip2wasm) &nbsp; [1](#maps-wasip2wasm) / 0 |
math |<span style="color: green">🟢</span> &nbsp; 76 |<span style="color: green">🟢</span> &nbsp; 76 |<span style="color: green">🟢</span> &nbsp; 76 |
math/big |[<span style="color: red">❌</span>](#mathbig-linuxarm64) &nbsp; [1](#mathbig-linuxarm64) / 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
math/bits |[<span style="color: orange">⛈️</span>](#mathbits-linuxarm64) &nbsp; [5](#mathbits-linuxarm64) / 21 |[<span style="color: orange">⛈️</span>](#mathbits-wasip1wasm) &nbsp; [1](#mathbits-wasip1wasm) / 12 |[<span style="color: orange">⛈️</span>](#mathbits-wasip2wasm) &nbsp; [1](#mathbits-wasip2wasm) / 12 |
math/cmplx |<span style="color: green">🟢</span> &nbsp; 24 |<span style="color: green">🟢</span> &nbsp; 24 |<span style="color: green">🟢</span> &nbsp; 24 |
math/rand |[<span style="color: orange">⛈️</span>](#mathrand-linuxarm64) &nbsp; [8](#mathrand-linuxarm64) / 43 |[<span style="color: orange">⛈️</span>](#mathrand-wasip1wasm) &nbsp; [8](#mathrand-wasip1wasm) / 43 |[<span style="color: red">❌</span>](#mathrand-wasip2wasm) &nbsp; [1](#mathrand-wasip2wasm) / 0 |
math/rand/v2 |[<span style="color: red">❌</span>](#mathrandv2-linuxarm64) &nbsp; [1](#mathrandv2-linuxarm64) / 0 |[<span style="color: red">❌</span>](#mathrandv2-wasip1wasm) &nbsp; [1](#mathrandv2-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#mathrandv2-wasip2wasm) &nbsp; [1](#mathrandv2-wasip2wasm) / 0 |
mime |[<span style="color: orange">⛈️</span>](#mime-linuxarm64) &nbsp; [1](#mime-linuxarm64) / 14 |[<span style="color: orange">⛈️</span>](#mime-wasip1wasm) &nbsp; [1](#mime-wasip1wasm) / 13 |[<span style="color: orange">⛈️</span>](#mime-wasip2wasm) &nbsp; [2](#mime-wasip2wasm) / 14 |
mime/multipart |<span style="color: green">🟢</span> &nbsp; 48 |[<span style="color: orange">⛈️</span>](#mimemultipart-wasip1wasm) &nbsp; [3](#mimemultipart-wasip1wasm) / 10 |[<span style="color: orange">⛈️</span>](#mimemultipart-wasip2wasm) &nbsp; [1](#mimemultipart-wasip2wasm) / 7 |
mime/quotedprintable |<span style="color: green">🟢</span> &nbsp; 5 |<span style="color: green">🟢</span> &nbsp; 5 |[<span style="color: red">❌</span>](#mimequotedprintable-wasip2wasm) &nbsp; [1](#mimequotedprintable-wasip2wasm) / 0 |
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
net/netip |[<span style="color: orange">⛈️</span>](#netnetip-linuxarm64) &nbsp; [8](#netnetip-linuxarm64) / 256 |[<span style="color: orange">⛈️</span>](#netnetip-wasip1wasm) &nbsp; [2](#netnetip-wasip1wasm) / 196 |[<span style="color: red">❌</span>](#netnetip-wasip2wasm) &nbsp; [1](#netnetip-wasip2wasm) / 0 |
net/rpc |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |<span style="color: yellow">🫥</span> &nbsp; 0 |
net/rpc/jsonrpc |[<span style="color: red">❌</span>](#netrpcjsonrpc-linuxarm64) &nbsp; [1](#netrpcjsonrpc-linuxarm64) / 0 |[<span style="color: red">❌</span>](#netrpcjsonrpc-wasip1wasm) &nbsp; [1](#netrpcjsonrpc-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#netrpcjsonrpc-wasip2wasm) &nbsp; [1](#netrpcjsonrpc-wasip2wasm) / 0 |
net/smtp |[<span style="color: red">❌</span>](#netsmtp-linuxarm64) &nbsp; [1](#netsmtp-linuxarm64) / 0 |[<span style="color: red">❌</span>](#netsmtp-wasip1wasm) &nbsp; [1](#netsmtp-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#netsmtp-wasip2wasm) &nbsp; [1](#netsmtp-wasip2wasm) / 0 |
net/textproto |<span style="color: green">🟢</span> &nbsp; 25 |<span style="color: green">🟢</span> &nbsp; 25 |<span style="color: green">🟢</span> &nbsp; 25 |
net/url |[<span style="color: red">❌</span>](#neturl-linuxarm64) &nbsp; [1](#neturl-linuxarm64) / 0 |[<span style="color: red">❌</span>](#neturl-wasip1wasm) &nbsp; [1](#neturl-wasip1wasm) / 0 |[<span style="color: red">❌</span>](#neturl-wasip2wasm) &nbsp; [1](#neturl-wasip2wasm) / 0 |
os |<span style="color: green">🟢</span> &nbsp; 80 |<span style="color: green">🟢</span> &nbsp; 37 |[<span style="color: orange">⛈️</span>](#os-wasip2wasm) &nbsp; [2](#os-wasip2wasm) / 37 |
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
text/template |[<span style="color: orange">⛈️</span>](#texttemplate-linuxarm64) &nbsp; [1](#texttemplate-linuxarm64) / 1 |[<span style="color: orange">⛈️</span>](#texttemplate-wasip1wasm) &nbsp; [1](#texttemplate-wasip1wasm) / 1 |[<span style="color: red">❌</span>](#texttemplate-wasip2wasm) &nbsp; [1](#texttemplate-wasip2wasm) / 0 |
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
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1208764807/main /tmp/tinygo1208764807/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-6FED0476E43E3A082DA5FBEF74336979C4273449:((*crypto/aes.aesCipherAsm).Encrypt)
failed to run tool: ld.lld
FAIL	crypto	0.000s
error: failed to link /tmp/tinygo1208764807/main: exit status 1
```


### crypto/aes linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1075795588/main /tmp/tinygo1075795588/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.decryptBlockAsm
>>> referenced by cipher_asm.go:95 (/usr/local/go/src/crypto/aes/cipher_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3DE479372CDF103E7D0AFB5F6EFB5C5DC2868A02:((*crypto/aes.aesCipherAsm).Decrypt)

ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-3DE479372CDF103E7D0AFB5F6EFB5C5DC2868A02:((*crypto/aes.aesCipherAsm).Encrypt)
failed to run tool: ld.lld
FAIL	crypto/aes	0.000s
error: failed to link /tmp/tinygo1075795588/main: exit status 1
```


### crypto/cipher linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1683823304/main /tmp/tinygo1683823304/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.gcmAesInit
>>> referenced by aes_gcm.go:49 (/usr/local/go/src/crypto/aes/aes_gcm.go:49)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-71E5BA11B1B0917AE8BC709E0836F873F915A13E:(crypto/cipher.newGCMWithNonceAndTagSize)

ld.lld: error: undefined symbol: crypto/aes.decryptBlockAsm
>>> referenced by cipher_asm.go:95 (/usr/local/go/src/crypto/aes/cipher_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-71E5BA11B1B0917AE8BC709E0836F873F915A13E:((*crypto/aes.aesCipherAsm).Decrypt)

ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-71E5BA11B1B0917AE8BC709E0836F873F915A13E:((*crypto/aes.aesCipherAsm).Encrypt)
>>> referenced by aes_gcm.go:111 (/usr/local/go/src/crypto/aes/aes_gcm.go:111)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-71E5BA11B1B0917AE8BC709E0836F873F915A13E:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:164 (/usr/local/go/src/crypto/aes/aes_gcm.go:164)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-71E5BA11B1B0917AE8BC709E0836F873F915A13E:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Open$invoke)

ld.lld: error: undefined symbol: crypto/aes.gcmAesData
>>> referenced by aes_gcm.go:107 (/usr/local/go/src/crypto/aes/aes_gcm.go:107)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-71E5BA11B1B0917AE8BC709E0836F873F915A13E:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:114 (/usr/local/go/src/crypto/aes/aes_gcm.go:114)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-71E5BA11B1B0917AE8BC709E0836F873F915A13E:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:160 (/usr/local/go/src/crypto/aes/aes_gcm.go:160)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-71E5BA11B1B0917AE8BC709E0836F873F915A13E:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Open$invoke)
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/aes.gcmAesFinish
>>> referenced by aes_gcm.go:108 (/usr/local/go/src/crypto/aes/aes_gcm.go:108)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-71E5BA11B1B0917AE8BC709E0836F873F915A13E:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:123 (/usr/local/go/src/crypto/aes/aes_gcm.go:123)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-71E5BA11B1B0917AE8BC709E0836F873F915A13E:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:161 (/usr/local/go/src/crypto/aes/aes_gcm.go:161)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-71E5BA11B1B0917AE8BC709E0836F873F915A13E:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Open$invoke)
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/aes.gcmAesEnc
>>> referenced by aes_gcm.go:121 (/usr/local/go/src/crypto/aes/aes_gcm.go:121)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-71E5BA11B1B0917AE8BC709E0836F873F915A13E:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)

ld.lld: error: undefined symbol: crypto/aes.gcmAesDec
>>> referenced by aes_gcm.go:174 (/usr/local/go/src/crypto/aes/aes_gcm.go:174)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-71E5BA11B1B0917AE8BC709E0836F873F915A13E:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Open$invoke)
failed to run tool: ld.lld
FAIL	crypto/cipher	0.000s
error: failed to link /tmp/tinygo1683823304/main: exit status 1
```


### crypto/ecdh linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1041699275/main /tmp/tinygo1041699275/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo1041699275/embed-a3a5d08c40939adb7c0e9e4f5b689721-3025761494.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/internal/nistec.p256Sqr
>>> referenced by p256_asm.go:584 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:584)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:586 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:586)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:588 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:588)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:(crypto/internal/nistec.p256Inverse)
>>> referenced 16 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Mul
>>> referenced by p256_asm.go:603 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:603)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:141 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:141)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:489 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:489)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced 8 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256BigToLittle
>>> referenced by p256_asm.go:95 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:(OUTLINED_FUNCTION_764)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256FromMont
>>> referenced by p256_asm.go:125 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:125)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:516 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:516)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:494 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:494)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256NegCond
>>> referenced by p256_asm.go:127 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:127)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:146 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:146)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:723 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:723)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointDoubleAsm
>>> referenced by p256_asm.go:660 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:660)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:661 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:661)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:662 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:662)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced 7 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAsm
>>> referenced by p256_asm.go:669 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:669)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:681 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:681)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:691 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:691)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Select
>>> referenced by p256_asm.go:703 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:703)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:722 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:722)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:739 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:739)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256MovCond
>>> referenced by p256_asm.go:725 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:725)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:742 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:742)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:648 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:648)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256LittleToBig
>>> referenced by p256_asm.go:517 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:517)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:478 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:478)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced by p256_asm.go:479 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:479)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).PublicKey$1)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256SelectAffine
>>> referenced by p256_asm.go:627 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:627)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced by p256_asm.go:642 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:642)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).PublicKey$1)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAffineAsm
>>> referenced by p256_asm.go:643 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:643)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:((*crypto/ecdh.PrivateKey).PublicKey$1)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdBigToLittle
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A9198F8F47DBC3F1380719A57F0B12FF9122D9C7:(OUTLINED_FUNCTION_784)
failed to run tool: ld.lld
FAIL	crypto/ecdh	0.000s
error: failed to link /tmp/tinygo1041699275/main: exit status 1
```


### crypto/ecdsa linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3570518722/main /tmp/tinygo3570518722/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo3570518722/embed-a3a5d08c40939adb7c0e9e4f5b689721-3350882763.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/aes.aesCipherAsm).Encrypt)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAsm
>>> referenced by p256_asm.go:387 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:387)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:669 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:669)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:681 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:681)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 3 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointDoubleAsm
>>> referenced by p256_asm.go:388 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:388)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:660 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:660)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:661 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:661)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 8 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256MovCond
>>> referenced by p256_asm.go:389 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:389)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:390 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:390)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:391 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:391)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).Add)
>>> referenced 4 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Mul
>>> referenced by p256_asm.go:489 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:489)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).Bytes)
>>> referenced by p256_asm.go:603 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:603)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(crypto/internal/nistec.p256Inverse)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(OUTLINED_FUNCTION_189)
>>> referenced 5 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256FromMont
>>> referenced by p256_asm.go:495 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:495)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).Bytes)
>>> referenced by p256_asm.go:125 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:125)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(OUTLINED_FUNCTION_1215)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256LittleToBig
>>> referenced by p256_asm.go:478 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:478)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).Bytes)
>>> referenced by p256_asm.go:479 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:479)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).Bytes)
>>> referenced by p256_asm.go:517 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:517)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).BytesX)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Sqr
>>> referenced by p256_asm.go:584 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:584)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:586 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:586)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:588 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:588)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(crypto/internal/nistec.p256Inverse)
>>> referenced 16 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdBigToLittle
>>> referenced by p256_asm.go:410 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:410)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:425 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:425)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_ordinv.go:27 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:27)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(crypto/internal/nistec.P256OrdInverse)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256SelectAffine
>>> referenced by p256_asm.go:627 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:627)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:642 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:642)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarBaseMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256NegCond
>>> referenced by p256_asm.go:629 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:629)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:723 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:723)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:740 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:740)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAffineAsm
>>> referenced by p256_asm.go:643 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:643)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarBaseMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Select
>>> referenced by p256_asm.go:703 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:703)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:722 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:722)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:739 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:739)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).ScalarMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256BigToLittle
>>> referenced by p256_asm.go:95 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(OUTLINED_FUNCTION_1291)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdMul
>>> referenced by p256_ordinv.go:51 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:51)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(crypto/internal/nistec.P256OrdInverse)
>>> referenced by p256_ordinv.go:53 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:53)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(crypto/internal/nistec.P256OrdInverse)
>>> referenced by p256_ordinv.go:54 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:54)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(crypto/internal/nistec.P256OrdInverse)
>>> referenced 7 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdSqr
>>> referenced by p256_ordinv.go:64 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:64)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(crypto/internal/nistec.P256OrdInverse)
>>> referenced by p256_ordinv.go:66 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:66)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(crypto/internal/nistec.P256OrdInverse)
>>> referenced by p256_ordinv.go:68 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:68)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(crypto/internal/nistec.P256OrdInverse)
>>> referenced 4 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdLittleToBig
>>> referenced by p256_ordinv.go:100 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:100)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F568D06C43F73D8F1BED36B0D9AD0FEE3E7B3634:(crypto/internal/nistec.P256OrdInverse)
failed to run tool: ld.lld
FAIL	crypto/ecdsa	0.000s
error: failed to link /tmp/tinygo3570518722/main: exit status 1
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
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2099428393/main /tmp/tinygo2099428393/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo2099428393/embed-a3a5d08c40939adb7c0e9e4f5b689721-2578739765.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAsm
>>> referenced by p256_asm.go:387 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:387)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:669 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:669)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:681 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:681)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 3 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointDoubleAsm
>>> referenced by p256_asm.go:388 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:388)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:660 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:660)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:661 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:661)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 9 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256MovCond
>>> referenced by p256_asm.go:389 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:389)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:390 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:390)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:391 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:391)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).Add)
>>> referenced 4 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdBigToLittle
>>> referenced by p256_asm.go:410 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:410)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:425 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:425)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256SelectAffine
>>> referenced by p256_asm.go:627 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:627)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:642 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:642)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarBaseMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256NegCond
>>> referenced by p256_asm.go:629 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:629)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:723 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:723)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:740 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:740)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAffineAsm
>>> referenced by p256_asm.go:643 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:643)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarBaseMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Select
>>> referenced by p256_asm.go:703 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:703)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:722 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:722)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:739 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:739)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).ScalarMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256BigToLittle
>>> referenced by p256_asm.go:95 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:(OUTLINED_FUNCTION_830)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Sqr
>>> referenced by p256_asm.go:162 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:162)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:230 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:230)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:232 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:232)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced 16 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256FromMont
>>> referenced by p256_asm.go:125 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:125)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:494 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:494)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:495 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:495)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Mul
>>> referenced by p256_asm.go:141 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:141)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:603 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:603)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:492 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:492)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced 7 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256LittleToBig
>>> referenced by p256_asm.go:478 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:478)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:479 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:479)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-20642E7B314CA985E897E76380AEDC49A8986AF3:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
failed to run tool: ld.lld
FAIL	crypto/elliptic	0.000s
error: failed to link /tmp/tinygo2099428393/main: exit status 1
```


### crypto/rsa linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2211709526/main /tmp/tinygo2211709526/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo2211709526/embed-a3a5d08c40939adb7c0e9e4f5b689721-1152567138.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/aes.aesCipherAsm).Encrypt)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Sqr
>>> referenced by p256_asm.go:140 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:140)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:162 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:162)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointFromAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:230 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:230)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointFromAffine[*crypto/internal/nistec.P256Point])
>>> referenced 16 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Mul
>>> referenced by p256_asm.go:141 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:141)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:492 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:492)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:(OUTLINED_FUNCTION_272)
>>> referenced 6 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256NegCond
>>> referenced by p256_asm.go:146 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:146)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:629 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:629)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:723 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:723)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdBigToLittle
>>> referenced by p256_asm.go:410 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:410)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:425 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:425)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256SelectAffine
>>> referenced by p256_asm.go:627 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:627)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:642 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:642)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAffineAsm
>>> referenced by p256_asm.go:643 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:643)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256MovCond
>>> referenced by p256_asm.go:648 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:648)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:725 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:725)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:742 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:742)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointDoubleAsm
>>> referenced by p256_asm.go:660 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:660)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:661 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:661)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:662 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:662)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced 7 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAsm
>>> referenced by p256_asm.go:669 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:669)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:681 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:681)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:691 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:691)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Select
>>> referenced by p256_asm.go:703 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:703)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:722 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:722)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:739 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:739)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256BigToLittle
>>> referenced by p256_asm.go:95 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointFromAffine[*crypto/internal/nistec.P256Point])
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:(OUTLINED_FUNCTION_1226)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256FromMont
>>> referenced by p256_asm.go:125 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:125)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointFromAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:494 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:494)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:495 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:495)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256LittleToBig
>>> referenced by p256_asm.go:478 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:478)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:479 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:479)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-A7821E8819953E77D1802FDC05E6C7545825E171:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
failed to run tool: ld.lld
FAIL	crypto/rsa	0.000s
error: failed to link /tmp/tinygo2211709526/main: exit status 1
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
    running test executable failed: fork/exec /tmp/TestDefaultLinkerDWARF170414405/000/a.exe: operation not implemented 
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
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1187386426/main /tmp/tinygo1187386426/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo1187386426/main /tmp/tinygo1187386426/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
FAIL	encoding/gob	0.023s
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
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0xffff40b8b930)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0xffff40b8b930) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff40b8b930)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff40b8b930) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0xffff40b8b930)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0xffff40b8b930) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0xffff40b8b930)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0xffff40b8b930) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0xffff40b8b970)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0xffff40b8b970) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0xffff40b8b950)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0xffff40b8b950) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff40b8b950)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff40b8b950) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0xffff40b8b950)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff40b8b9b0)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0xffff40b8b950) (0.00s)
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
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0xffff40b8b950)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff40b8b9b0)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0xffff40b8b950) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff40b8b930)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff40b8b930) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0xffff40b8b950)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0xffff40b8b950) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0xffff40b8b970)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0xffff40b8b970) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0xffff40b8b930)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0xffff40b8b930) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0xffff40b8b950)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff40b8b9b0)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0xffff40b8b950) (0.00s)
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff40b8b950)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff40b8b950) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0xffff40b8b950)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff40b8b9b0)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0xffff40b8b950) (0.00s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0xffff40b8b930)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0xffff40b8b930) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0xffff40b8b930)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0xffff40b8b930) (0.00s)

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
--- FAIL: TestImportCmd (0.02s)
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
--- FAIL: TestAllTagsNonSourceFile (0.01s)
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
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2143178805/main /tmp/tinygo2143178805/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo2143178805/main /tmp/tinygo2143178805/main -test.v
panic: unimplemented: (reflect.Type).NumOut()
FAIL	go/doc	0.023s
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
panic: runtime error at 0x00000000002f3730: nil pointer dereference
=== RUN   TestForCompiler/LookupDefault
panic: runtime error at 0x00000000002f3730: nil pointer dereference

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
    --- PASS: TestFiles/expressions.input (0.11s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.03s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.05s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.02s)
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
    --- PASS: TestFiles/alignment.input (0.01s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.04s)
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.11s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.03s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.05s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.02s)
=== RUN   TestFiles/slow.input
panic: runtime error at 0x0000000000277200: nil pointer dereference
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.00s)
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.02s)
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.01s)
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.00s)
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.01s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.04s)
=== RUN   TestFiles/slow.input
panic: runtime error at 0x0000000000277200: nil pointer dereference

```


### go/token linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo105303234/main /tmp/tinygo105303234/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo105303234/main /tmp/tinygo105303234/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
FAIL	go/token	0.009s
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
--- FAIL: TestMultiReaderFreesExhaustedReaders (5.03s)

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
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/09 12:45:14.003227 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/09 12:45:14.003251 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/09 12:45:14.003488 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/09 12:45:14.003503 ???:0: hello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/09 12:45:14.003521 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/09 12:45:14.003758 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/09 12:45:14.003771 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/09 12:45:14.003788 ???:0: XXXhello 23 world"
--- FAIL: TestAll (0.00s)

```


### log/slog linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1653635461/main /tmp/tinygo1653635461/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo1653635461/embed-a3a5d08c40939adb7c0e9e4f5b689721-1054654341.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo1653635461/main /tmp/tinygo1653635461/main -test.v
panic: runtime.Caller failed
FAIL	log/slog	0.013s
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
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1394597000/main /tmp/tinygo1394597000/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: maps.clone
>>> referenced by maps.go:46 (/usr/local/go/src/maps/maps.go:46)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-02AD9A5FE15F5FB66C638547E45901C297BE14B4:(maps.Clone[map[int]int int int])
>>> referenced by maps.go:46 (/usr/local/go/src/maps/maps.go:46)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-02AD9A5FE15F5FB66C638547E45901C297BE14B4:(maps.TestCloneLarge)
failed to run tool: ld.lld
FAIL	maps	0.000s
error: failed to link /tmp/tinygo1394597000/main: exit status 1
```


### math/big linux/arm64

[🔝](#summary) build error

```text
FAIL	math/big	0.000s
# math/big
/usr/local/go/src/math/bits/bits.go:472:10: interp: running for more than 3m0s, timing out (executed calls: 28596023)
  %0 = and i64 %x, 4294967295, !dbg !30812

traceback:
/usr/local/go/src/math/bits/bits.go:472:10:
  %0 = and i64 %x, 4294967295, !dbg !30812
/usr/local/go/src/math/bits/bits.go:450:15:
  %9 = call { i64, i64 } @"math/bits.Mul64"(i64 %x, i64 %y, ptr undef), !dbg !30820
/usr/local/go/src/math/big/arith.go:51:20:
  %0 = call { i64, i64 } @"math/bits.Mul"(i64 %x, i64 %y, ptr undef), !dbg !30807
/usr/local/go/src/math/big/arith.go:192:24:
  %13 = call { i64, i64 } @"math/big.mulAddWWW_g"(i64 %12, i64 %y, i64 %6, ptr undef), !dbg !30825
/usr/local/go/src/math/big/arith_decl_pure.go:44:20:
  %12 = call i64 @"math/big.mulAddVWW_g"(ptr %6, i64 %7, i64 %8, ptr %9, i64 %10, i64 %11, i64 %y, i64 %r, ptr undef), !dbg !30808
/usr/local/go/src/math/big/nat.go:191:18:
  %32 = call i64 @"math/big.mulAddVWW"(ptr %26, i64 %27, i64 %28, ptr %29, i64 %30, i64 %31, i64 %y, i64 %r, ptr undef), !dbg !30829
/usr/local/go/src/math/big/natconv.go:213:19:
  %98 = call { ptr, i64, i64 } @"(math/big.nat).mulAddWW"(ptr %92, i64 %93, i64 %94, ptr %95, i64 %96, i64 %97, i64 %47, i64 %89, ptr undef), !dbg !30949
/usr/local/go/src/math/big/nat_test.go:92:31:
  %8 = call { { ptr, i64, i64 }, i64, i64, %runtime._interface } @"(math/big.nat).scan"(ptr null, i64 0, i64 0, ptr %6, ptr %7, i64 0, i1 false, ptr undef), !dbg !30804
/usr/local/go/src/math/big:
  %19 = call { ptr, i64, i64 } @"math/big.natFromString"(ptr %17, i64 %18, ptr undef), !dbg !30811
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
        fork/exec /tmp/tinygo3966790371/main: operation not implemented
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/1
        fork/exec /tmp/tinygo3966790371/main: operation not implemented
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestDefaultRace/2
        fork/exec /tmp/tinygo3966790371/main: operation not implemented
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestDefaultRace/3
        fork/exec /tmp/tinygo3966790371/main: operation not implemented
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestDefaultRace/4
        fork/exec /tmp/tinygo3966790371/main: operation not implemented
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestDefaultRace/5
        fork/exec /tmp/tinygo3966790371/main: operation not implemented
    --- FAIL: TestDefaultRace/5 (0.00s)
=== RUN   TestDefaultRace/1
        fork/exec /tmp/tinygo3966790371/main: operation not implemented
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestDefaultRace/3
        fork/exec /tmp/tinygo3966790371/main: operation not implemented
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestDefaultRace/4
        fork/exec /tmp/tinygo3966790371/main: operation not implemented
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestRegress
panic: unimplemented: (reflect.Type).Method()
=== RUN   TestDefaultRace/0
        fork/exec /tmp/tinygo3966790371/main: operation not implemented
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/2
        fork/exec /tmp/tinygo3966790371/main: operation not implemented
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestDefaultRace/5
        fork/exec /tmp/tinygo3966790371/main: operation not implemented
    --- FAIL: TestDefaultRace/5 (0.00s)

```


### math/rand/v2 linux/arm64

[🔝](#summary) build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2493761281/main /tmp/tinygo2493761281/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: internal/chacha8rand.block
>>> referenced by chacha8.go:63 (/usr/local/go/src/internal/chacha8rand/chacha8.go:63)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-284E1DF200A2B7CBE7B265D28D6888F3A8DFA419:((*internal/chacha8rand.State).Init)
>>> referenced by chacha8.go:88 (/usr/local/go/src/internal/chacha8rand/chacha8.go:88)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-284E1DF200A2B7CBE7B265D28D6888F3A8DFA419:((*math/rand/v2.ChaCha8).Uint64)
>>> referenced by chacha8.go:150 (/usr/local/go/src/internal/chacha8rand/chacha8.go:150)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-284E1DF200A2B7CBE7B265D28D6888F3A8DFA419:(math/rand/v2_test.TestChaCha8Marshal)
failed to run tool: ld.lld
FAIL	math/rand/v2	0.000s
error: failed to link /tmp/tinygo2493761281/main: exit status 1
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
    --- FAIL: TestAddrStringAllocs/ipv6+zone (0.01s)
=== RUN   TestAddrStringAllocs/ipv4-in-ipv6
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4-in-ipv6 (0.00s)
=== RUN   TestAddrStringAllocs/ipv4-in-ipv6+zone
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4-in-ipv6+zone (0.00s)
=== RUN   TestAddrStringAllocs/ipv6+zone
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv6+zone (0.01s)
=== RUN   TestAddrStringAllocs/zero
    --- PASS: TestAddrStringAllocs/zero (0.00s)
=== RUN   TestAddrStringAllocs/ipv6
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv6 (0.00s)
=== RUN   TestAddrStringAllocs/ipv4-in-ipv6
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4-in-ipv6 (0.00s)
=== RUN   TestAddrStringAllocs/ipv4-in-ipv6+zone
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4-in-ipv6+zone (0.00s)
=== RUN   TestAddrStringAllocs/ipv4
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4 (0.00s)

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
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo121387233/main /tmp/tinygo121387233/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo121387233/main /tmp/tinygo121387233/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
FAIL	net/url	0.021s
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
--- FAIL: TestBuilderGrow (0.10s)
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
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3092674793/main /tmp/tinygo3092674793/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo3092674793/main /tmp/tinygo3092674793/main -test.v
panic: runtime.Caller failed
FAIL	testing/slogtest	0.013s
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
    skipping test: cannot make symlinks on wasip1/wasm: symlinks unsupported: symlink /tmp/176020032/testfile.txt /tmp/176020032/testlink: errno 63
    SkipNow is incomplete, requires runtime.Goexit()
    symlink /tmp/TestFileInfoHeaderSymlink143914376/000 /tmp/TestFileInfoHeaderSymlink143914376/000/link: errno 63
    FailNow is incomplete, requires runtime.Goexit()
    lstat /tmp/TestFileInfoHeaderSymlink143914376/000/link: file does not exist
    FailNow is incomplete, requires runtime.Goexit()
    archive/tar: FileInfo is nil
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo3347863268/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2d05c - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x9a87 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0xc2a9e - archive/tar.TestFileInfoHeaderSymlink
           3: 0x39a98 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x74a84 - (*testing.T).Run
           5: 0x3979c - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x39a98 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x348d2 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/64/64e4f0b94238e71ca92a746be092ee54ca795a74809f454318857aae67ac27fc-d:137:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x2e969 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0xa92 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x2e83e - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### archive/zip wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/83
=== RUN   TestZip64

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
Error: failed to run main module `/tmp/tinygo866795961/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x296b - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xc7f5 - (*bufio.Reader).Read
           2: 0x7e8c2 - bufio_test.TestNegativeRead
                           at /usr/local/go/src/bufio/bufio_test.go:1303:8
           3: 0x269e0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x4d9da - (*testing.T).Run
           5: 0x266e4 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x269e0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x20be9 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/06/069a56f2cf2c2675af173cda287292b2d6132751fa3da9153f4e8a10b1e3d344-d:241:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x1c71e - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x77e - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          10: 0x1c523 - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo3442939106/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x4790 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x11916 - (bytes_test.panicReader).Read
                           at /usr/local/go/src/bytes/buffer_test.go:271:8
           2: 0x10cac - (bytes_test.panicReader).Read$invoke
                           at /usr/local/go/src/bytes/buffer_test.go:269:22              - (Go interface method)
                           at <Go interface method>
           3: 0x14f82 - (*bytes.Buffer).ReadFrom
                           at /usr/local/go/src/bytes/buffer.go:211:23
           4: 0x797bf - bytes_test.TestReadFromPanicReader
                           at /usr/local/go/src/bytes/buffer_test.go:297:15
           5: 0x29060 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x28d52 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x29060 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x22b8b - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/e9/e93c8444dc8df6f4a356946eb7b5b36c54937c0dfbc9b92af48cbe8e6cdc6d17-d:459:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x1cc58 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x952 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x1cb35 - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo4048108712/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x15c1a - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x1265 - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:160:16
           2: 0x5d242 - <unknown>!(*crypto/rc4.Cipher).XORKeyStream$bound
           3: 0x5d5dd - crypto_test.test
                           at /usr/local/go/src/crypto/issue21104_test.go:60:5
           4: 0x5d001 - crypto_test.TestRC4OutOfBoundsWrite
                           at /usr/local/go/src/crypto/issue21104_test.go:21:6
           5: 0x20e57 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x20b4d - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x20e57 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x1bb47 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/ae/ae5003e243985acd87c6eaa8aa139ba382fcef53385b020be05280b51425c1a5-d:57:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x17957 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x520 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x1782d - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo2733642023/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x229a - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x238ae - (*crypto/aes.aesCipher).Encrypt
                           at /usr/local/go/src/crypto/aes/cipher.go:60:8              - (Go interface method)
                           at <Go interface method>
           2: 0x648b0 - crypto/aes.TestShortBlocks$2
                           at /usr/local/go/src/crypto/aes/aes_test.go:327:69
           3: 0x64b26 - crypto/aes.mustPanic
                           at /usr/local/go/src/crypto/aes/aes_test.go:344:3
           4: 0x642b3 - crypto/aes.TestShortBlocks
                           at /usr/local/go/src/crypto/aes/aes_test.go:327:11
           5: 0x17c03 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x178fa - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x17c03 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x11d00 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/fb/fbd7cbbdabeaf1f6755c53f198ce468296a770fe68d3e21898f1ad5b22c4718e-d:77:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0xdb22 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x541 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0xd9f9 - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo2789511225/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x32f9 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x68c3a - (*crypto/cipher.cbcDecrypter).CryptBlocks
                           at /usr/local/go/src/crypto/cipher/cbc.go:145:8              - (Go interface method)
                           at <Go interface method>
           2: 0x6b19d - crypto/cipher_test.TestCryptBlocks$1
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:20:80
           3: 0x6b40b - crypto/cipher_test.mustPanic
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:37:3
           4: 0x6ae29 - crypto/cipher_test.TestCryptBlocks
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:20:11
           5: 0x1ab19 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x1a80f - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x1ab19 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x14d6b - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/61/6162e4542004ff5d4561a2904bdcadfd96d18761f8e4484f36f3c8725ffde61c-d:107:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x10b77 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x61c - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x10a4d - (*internal/task.Task).Resume
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
--- FAIL: TestLinker (0.03s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestLinker165155153: errno 52

```


### crypto/ecdsa wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 6/77
=== RUN   TestRMinusNSignature/P224
    --- PASS: TestRMinusNSignature/P224 (0.00s)
=== RUN   TestRMinusNSignature/P521
    --- PASS: TestRMinusNSignature/P521 (0.02s)
=== RUN   TestRMinusNSignature
=== RUN   TestRMinusNSignature/P256
    --- PASS: TestRMinusNSignature/P256 (0.00s)
=== RUN   TestRMinusNSignature/P224
    --- PASS: TestRMinusNSignature/P224 (0.00s)
=== RUN   TestRMinusNSignature/P384
    --- PASS: TestRMinusNSignature/P384 (0.00s)
=== RUN   TestRMinusNSignature/P521
    --- PASS: TestRMinusNSignature/P521 (0.02s)
=== RUN   TestRMinusNSignature/P256/Generic
=== RUN   TestRMinusNSignature/P256
    --- PASS: TestRMinusNSignature/P256 (0.00s)
=== RUN   TestRMinusNSignature/P384
    --- PASS: TestRMinusNSignature/P384 (0.00s)
=== RUN   TestRMinusNSignature/P256/Generic

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
--- FAIL: TestEd25519Vectors (0.01s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestEd25519Vectors114368250: errno 52

```


### crypto/hmac wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestNonUniqueHash
panic: crypto/hmac: hash generation function does not produce unique values
Error: failed to run main module `/tmp/tinygo2988068409/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x22c2 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x65d3d - crypto/hmac.New
           2: 0x66ca8 - crypto/hmac.TestNonUniqueHash
                           at /usr/local/go/src/crypto/hmac/hmac_test.go:597:45
           3: 0x1da72 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x1d768 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           5: 0x1da72 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x188ba - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/8d/8dd68077524b4f9a102e80f0c613dde97831cb4f7273bcbb1841dcbf81bac77a-d:59:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           7: 0x146c6 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           8:  0x55f - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           9: 0x1459c - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo1885481923/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x4302 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6599 - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0xea9b6 - (Go interface method)
           3: 0xec564 - testing/quick.Check
                           at /usr/local/go/src/testing/quick/quick.go:273:17              - crypto/rsa_test.TestEncryptPKCS1v15
                           at /usr/local/go/src/crypto/rsa/pkcs1v15_test.go:118:13
           4: 0x361d5 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x79203 - (*testing.T).Run
           6: 0x35edd - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x361d5 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x2eb71 - <unknown>!runtime.run$1
           9: 0x2bfcf - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0xab8 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x2beab - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo417291354/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x327e - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x3520 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x5d615 - (Go interface method)
           3: 0x5d812 - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48
           4: 0x5e0f4 - crypto/subtle.TestConstantTimeByteEq
                           at /usr/local/go/src/crypto/subtle/constant_time_test.go:59:25
           5: 0x14bf3 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x148ea - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x14bf3 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0xe4a7 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/7c/7cc9948b16646f06706c44112c930c26b98cbd01318a65fa88edfa29a37f5dbe-d:69:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0xa1eb - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x55d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0xa0c2 - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo2622614378/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2910e - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x86a4 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x8dc59 - (*debug/elf.File).Section
           3: 0xa01d0 - debug/gosym.crack
                           at /usr/local/go/src/debug/gosym/pclntab_test.go:81:10
           4: 0x9dc6e - debug/gosym.getTable
                           at /usr/local/go/src/debug/gosym/pclntab_test.go:72:17
           5: 0xa0985 - debug/gosym.TestLineFromAline
                           at /usr/local/go/src/debug/gosym/pclntab_test.go:113:14
           6: 0x387e0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x384d2 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x387e0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x2de57 - <unknown>!runtime.run$1
          10: 0x2af5b - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11:  0x9d4 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x2adf8 - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo2280401310/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x288e5 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x4695 - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:160:16
           2: 0xc1886 - <unknown>!debug/pe.testDWARF
           3: 0xbbc85 - debug/pe.testCgoDWARF
                           at /usr/local/go/src/debug/pe/file_cgo_test.go:19:11
           4: 0xc1df7 - debug/pe.TestDefaultLinkerDWARF
                           at /usr/local/go/src/debug/pe/file_cgo_test.go:23:14
           5: 0x35dae - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x35aa0 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x35dae - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x303f8 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/c6/c6b2594ecf7e1bc0013e59951cbc3017ad5a6d482f8dd4bcd166624b7c686322-d:71:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x2a630 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0xa68 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x2a4cd - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo912447486/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2f6d - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xacdc - (reflect.Value).checkRO
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:56:8
           2: 0xb20b - (reflect.Value).SetInt
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:1132:11
           3: 0x64f05 - (*encoding/binary.decoder).int32
                           at /usr/local/go/src/encoding/binary/binary.go:656:11              - (*encoding/binary.decoder).value
                           at /usr/local/go/src/encoding/binary/binary.go:656:25
           4: 0x64b66 - (*encoding/binary.decoder).value
                           at /usr/local/go/src/encoding/binary/binary.go:636:12
           5: 0x63c53 - encoding/binary.Read
           6: 0x6db4b - encoding/binary.TestUnexportedRead
                           at /usr/local/go/src/encoding/binary/binary_test.go:395:6
           7: 0x21312 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x493ca - (*testing.T).Run
           9: 0x2101a - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x21312 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x1bb56 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/fb/fbc5d26cd0caebeb345e8f586b2417fd3156bc04f7d17813959166a5c6f5f5bb-d:179:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          12: 0x17960 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13:  0x66e - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x17836 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### encoding/gob wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo500879315/main /tmp/tinygo500879315/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo500879315/main --output /tmp/tinygo500879315/main
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $runtime.fd_write
 (local.tee $16
  (i64.extend_i32_u
   (local.tee $8
    (call $\28*reflect.rawType\29.Size
     (local.get $5)
    )
   )
  )
 )
 (i64.const 0)
 (local.get $15)
 (i64.const 0)
)
(on argument 0)
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $runtime.fd_write
 (local.tee $16
  (i64.extend_i32_u
   (local.tee $8
    (call $\28*reflect.rawType\29.Size
     (local.get $5)
    )
   )
  )
 )
 (i64.const 0)
 (local.get $15)
 (i64.const 0)
)
(on argument 1)
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $runtime.fd_write
 (local.tee $16
  (i64.extend_i32_u
   (local.tee $8
    (call $\28*reflect.rawType\29.Size
     (local.get $5)
    )
   )
  )
 )
 (i64.const 0)
 (local.get $15)
 (i64.const 0)
)
(on argument 2)
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $runtime.fd_write
 (local.tee $16
  (i64.extend_i32_u
   (local.tee $8
    (call $\28*reflect.rawType\29.Size
     (local.get $5)
    )
   )
  )
 )
 (i64.const 0)
 (local.get $15)
 (i64.const 0)
)
(on argument 3)
Fatal: error validating input
FAIL	encoding/gob	0.000s
error: wasm-opt failed: exit status 1
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
Error: failed to run main module `/tmp/tinygo737694744/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x1497 - runtime.memzero
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime.go:42:6              - runtime.alloc
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/gc_blocks.go:376:11
           1: 0x23ff - runtime.sliceAppend
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/slice.go:30:15
           2: 0x8598a - encoding/xml.addFieldInfo
                           at /usr/local/go/src/encoding/xml/typeinfo.go:295:24
           3: 0x81c5b - encoding/xml.getTypeInfo
                           at /usr/local/go/src/encoding/xml/typeinfo.go:102:26
           4: 0x89bf5 - <unknown>!(*encoding/xml.Decoder).unmarshal
           5: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
           6: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
           7: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
           8: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
           9: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          10: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          11: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          12: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          13: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          14: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          15: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          16: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          17: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          18: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          19: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          20: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          21: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          22: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          23: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          24: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          25: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          26: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          27: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          28: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          29: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          30: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          31: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          32: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          33: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          34: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          35: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          36: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          37: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          38: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          39: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          40: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          41: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          42: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          43: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          44: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          45: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          46: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          47: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          48: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          49: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          50: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          51: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          52: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          53: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          54: 0x8adbb - <unknown>!(*encoding/xml.Decoder).unmarshal
          55: 0x88c0b - (*encoding/xml.Decoder).DecodeElement
          56: 0x886bf - (*encoding/xml.Decoder).Decode
                           at /usr/local/go/src/encoding/xml/read.go:140:24
          57: 0x883a5 - encoding/xml.Unmarshal
                           at /usr/local/go/src/encoding/xml/read.go:134:49
          58: 0xa4a4a - encoding/xml.TestCVE202228131
                           at /usr/local/go/src/encoding/xml/read_test.go:1106:18
          59: 0x30428 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          60: 0x64776 - (*testing.T).Run
          61: 0x30130 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          62: 0x30428 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          63: 0x265e5 - <unknown>!runtime.run$1
          64: 0x238ad - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          65:  0x7a4 - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          66: 0x23783 - (*internal/task.Task).Resume
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
--- FAIL: TestAs (0.01s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0x44dd0)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0x44dd0) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44dd0)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44dd0) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0x44dd0)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0x44dd0) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0x44dd0)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0x44dd0) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0x44df0)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0x44df0) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0x44de0)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0x44de0) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44de0)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44de0) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0x44de0)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x44e10)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x26cdc)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0x44de0) (0.01s)
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
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0x44de0)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x44e10)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x26cdc)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0x44de0) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAsValidation
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo1948106767/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x34fc - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x102c0 - (Go interface method)
                           at /usr/local/go/src/errors/wrap.go:102:8              - errors.As
                           at /usr/local/go/src/errors/wrap.go:109:24
           2: 0x67a0c - errors_test.TestAsValidation$1
                           at /usr/local/go/src/errors/wrap_test.go:232:22
           3: 0x22776 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x4984b - (*testing.T).Run
           5: 0x67851 - errors_test.TestAsValidation
                           at /usr/local/go/src/errors/wrap_test.go:228:8
           6: 0x22776 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x4984b - (*testing.T).Run
           8: 0x2247e - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x22776 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x1dc7c - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/29/296ea2046c05354d953725f9ec87bf4599cebf04d3fee3fb5de97bc80e2f53e0-d:83:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          11: 0x19aa5 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12:  0x665 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x1997b - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44dd0)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44dd0) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0x44dd0)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0x44dd0) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0x44dd0)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0x44dd0) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0x44dd0)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0x44dd0) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0x44df0)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0x44df0) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0x44de0)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x44e10)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x26cdc)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0x44de0) (0.01s)
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo1948106767/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x34fc - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x102c0 - (Go interface method)
                           at /usr/local/go/src/errors/wrap.go:102:8              - errors.As
                           at /usr/local/go/src/errors/wrap.go:109:24
           2: 0x67a0c - errors_test.TestAsValidation$1
                           at /usr/local/go/src/errors/wrap_test.go:232:22
           3: 0x22776 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x4984b - (*testing.T).Run
           5: 0x67851 - errors_test.TestAsValidation
                           at /usr/local/go/src/errors/wrap_test.go:228:8
           6: 0x22776 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x4984b - (*testing.T).Run
           8: 0x2247e - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x22776 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x1dc7c - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/29/296ea2046c05354d953725f9ec87bf4599cebf04d3fee3fb5de97bc80e2f53e0-d:83:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          11: 0x19aa5 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12:  0x665 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x1997b - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestAs/8:As(Errorf(...,_err),_0x44de0)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0x44de0) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44de0)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x44de0) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0x44de0)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x44e10)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x26cdc)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0x44de0) (0.00s)
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)

```


### flag wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/14
=== RUN   TestPrintDefaults
panic: panic!
Error: failed to run main module `/tmp/tinygo3451961966/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x47d8 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x2d66d - (*flag_test.zeroPanicker).String
                           at /usr/local/go/src/flag/flag_test.go:479:8
           2: 0x5370c - (Go interface method)
           3: 0x52e15 - (Go interface method)
                           at /usr/local/go/src/flag/flag.go:560:46              - flag.isZeroValue
                           at /usr/local/go/src/flag/flag.go:545:27              - (*flag.FlagSet).PrintDefaults$1
                           at /usr/local/go/src/flag/flag.go:630:32
           4: 0x5342f - (*flag.FlagSet).VisitAll
                           at /usr/local/go/src/flag/flag.go:458:5
           5: 0x51e53 - (*flag.FlagSet).PrintDefaults
                           at /usr/local/go/src/flag/flag.go:609:12
           6: 0x8c5d5 - flag_test.TestPrintDefaults
                           at /usr/local/go/src/flag/flag_test.go:538:18
           7: 0x22c9e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x22990 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x22c9e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x1d51b - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10
          11: 0x19933 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12:  0x8cc - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x197d0 - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo4112055865/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x1792d - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x5412 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x2ead - (*reflect.rawType).isNamed
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:491:11
           3: 0x3297 - <unknown>!(*reflect.rawType).String
           4: 0xb088 - (reflect.Value).String
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:506:33
           5: 0x46a9e - (Go interface method)
                           at /usr/local/go/src/regexp/syntax/prog.go:125:17
           6: 0x6a315 - <unknown>!(*fmt.pp).handleMethods
           7: 0x64025 - <unknown>!(*fmt.pp).printArg
           8: 0x66bf0 - <unknown>!(*fmt.pp).doPrintf
           9: 0x4e9ca - fmt.Sprintf
                           at /usr/local/go/src/fmt/print.go:239:12
          10: 0x99690 - fmt_test.TestSprintf
                           at /usr/local/go/src/fmt/fmt_test.go:1095:15
          11: 0x4278f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x7f29b - (*testing.T).Run
          13: 0x42497 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          14: 0x4278f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          15: 0x1d8df - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/66/665da5d4c977fc2a206006294ded03ebd6df63735e00381c714cf30190ea5398-d:233:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          16: 0x19567 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          17:  0x72d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          18: 0x1943d - (*internal/task.Task).Resume
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
--- FAIL: TestLocalDirectory (0.01s)
=== RUN   TestImportCmd
    go/build: go list cmd/internal/objfile: open /dev/null: file does not exist
        
        
    FailNow is incomplete, requires runtime.Goexit()
    Import cmd/internal/objfile returned Dir="", want ".../src/cmd/internal/objfile"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportCmd (0.01s)
=== RUN   TestImportDirNotExist
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportDirNotExist (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestImportDirNotExist138788314: errno 52
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
--- FAIL: TestImportVendor (0.01s)
=== RUN   TestImportVendorFailure
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportVendorFailure (0.00s)
=== RUN   TestImportVendorParentFailure
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportVendorParentFailure (0.01s)
=== RUN   TestImportPackageOutsideModule
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
    error when importing package when no go.mod is present: got "go/build: go list example.com/p: open /dev/null: file does not exist\n\n"; want "go.mod file not found in current directory or any parent directory"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestImportPackageOutsideModule (0.01s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestImportPackageOutsideModule107062888: errno 52
=== RUN   TestIssue23594
    could not import testdata: import ".": unknown compiler "tinygo"
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestIssue23594 (0.03s)
=== RUN   TestMissingImportErrorRepetition
    skipping test: 'go build' unavailable: go tool -n compile: exec: "go": executable file not found in $PATH
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestMissingImportErrorRepetition (0.00s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestMissingImportErrorRepetition113282820: errno 52
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
--- FAIL: TestFindImports (0.00s)
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
=== RUN   TestLex/0
    --- PASS: TestLex/0 (0.00s)
=== RUN   TestLex/2
    --- PASS: TestLex/2 (0.00s)
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
Error: failed to run main module `/tmp/tinygo3490639514/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2839 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6375b - (*go/build/constraint.exprParser).lex
                           at /usr/local/go/src/go/build/constraint/expr.go:339:8
           2: 0x65b90 - go/build/constraint.lexHelp
                           at /usr/local/go/src/go/build/constraint/expr_test.go:108:7              - go/build/constraint.TestLex$1
                           at /usr/local/go/src/go/build/constraint/expr_test.go:77:24
           3: 0x2623e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x48367 - (*testing.T).Run
           5: 0x65954 - go/build/constraint.TestLex
                           at /usr/local/go/src/go/build/constraint/expr_test.go:73:8
           6: 0x2623e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x48367 - (*testing.T).Run
           8: 0x25f46 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x2623e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x2262f - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/30/30202da01dd9f128e3d8052cae5abedd5e12e2a69b87c6de9d7decc51b0c3b37-d:63:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          11: 0x1e486 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12:  0x563 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x1e35c - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestLex/3
    --- PASS: TestLex/3 (0.00s)
=== RUN   TestLex/4
    --- PASS: TestLex/4 (0.00s)
=== RUN   TestLex/5
panic: invalid syntax at ²
Error: failed to run main module `/tmp/tinygo3490639514/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2839 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6375b - (*go/build/constraint.exprParser).lex
                           at /usr/local/go/src/go/build/constraint/expr.go:339:8
           2: 0x65b90 - go/build/constraint.lexHelp
                           at /usr/local/go/src/go/build/constraint/expr_test.go:108:7              - go/build/constraint.TestLex$1
                           at /usr/local/go/src/go/build/constraint/expr_test.go:77:24
           3: 0x2623e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x48367 - (*testing.T).Run
           5: 0x65954 - go/build/constraint.TestLex
                           at /usr/local/go/src/go/build/constraint/expr_test.go:73:8
           6: 0x2623e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x48367 - (*testing.T).Run
           8: 0x25f46 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x2623e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x2262f - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/30/30202da01dd9f128e3d8052cae5abedd5e12e2a69b87c6de9d7decc51b0c3b37-d:63:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          11: 0x1e486 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12:  0x563 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x1e35c - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestLex/1
    --- PASS: TestLex/1 (0.00s)

```


### go/constant wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestOps
panic: division by zero
Error: failed to run main module `/tmp/tinygo2278780123/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x1b26 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x5be94 - (*math/big.Rat).SetFrac64
                           at /usr/local/go/src/math/big/rat.go:321:8              - math/big.NewRat
                           at /usr/local/go/src/math/big/rat.go:34:27
           2: 0x84fff - go/constant.BinaryOp
                           at /usr/local/go/src/go/constant/value.go:1136:19
           3: 0x87711 - go/constant.doOp
                           at /usr/local/go/src/go/constant/value_test.go:534:18              - go/constant.TestOps
                           at /usr/local/go/src/go/constant/value_test.go:345:14
           4: 0x1e0fa - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x1ddf0 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x1e0fa - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x1830d - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/58/583445e0700a8fe2773fdef84b84344a144e28b007bdfab093c213a38db43c7d-d:79:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x13c2e - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x670 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x13b04 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/doc wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1917226220/main /tmp/tinygo1917226220/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1917226220/main --output /tmp/tinygo1917226220/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=/tmp::/tmp /tmp/tinygo1917226220/main -test.v
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo1917226220/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x6332 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6eb0 - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0x3b6f9 - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0x274e6 - <unknown>!runtime.initAll
           4: 0x21a6d - <unknown>!runtime.run$1
           5: 0x21827 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           6:  0xb31 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           7: 0x216fc - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	go/doc	0.751s
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
--- FAIL: TestStd (0.01s)

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
Error: failed to run main module `/tmp/tinygo1240760059/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x38587 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0xaf40 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x1deec3 - (Go interface method)
           3: 0x212e27 - go/importer.TestForCompiler$1
                           at /usr/local/go/src/go/importer/importer_test.go:41:25
           4: 0x4e1fe - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x20cf50 - (*testing.T).Run
           6: 0x212b72 - go/importer.TestForCompiler
                           at /usr/local/go/src/go/importer/importer_test.go:39:7
           7: 0x4e1fe - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x20cf50 - (*testing.T).Run
           9: 0x4df01 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x4e1fe - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x3d0a5 - <unknown>!runtime.run$1
          12: 0x3a0f4 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x10fd - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x39f90 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestForCompiler/LookupDefault
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo1240760059/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x38587 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0xaf40 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x1deec3 - (Go interface method)
           3: 0x212e27 - go/importer.TestForCompiler$1
                           at /usr/local/go/src/go/importer/importer_test.go:41:25
           4: 0x4e1fe - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x20cf50 - (*testing.T).Run
           6: 0x212b72 - go/importer.TestForCompiler
                           at /usr/local/go/src/go/importer/importer_test.go:39:7
           7: 0x4e1fe - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x20cf50 - (*testing.T).Run
           9: 0x4df01 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x4e1fe - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x3d0a5 - <unknown>!runtime.run$1
          12: 0x3a0f4 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x10fd - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x39f90 - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo970545768/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x53f8 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x8233d - (*go/parser.parser).error
                           at /usr/local/go/src/go/parser/parser.go:277:9
           2: 0x8be35 - (*go/parser.parser).parseIndexOrSliceOrInstance
                           at /usr/local/go/src/go/parser/parser.go:1587:12              - (*go/parser.parser).parsePrimaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1732:37
           3: 0x96af1 - (*go/parser.parser).parseUnaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1835:27
           4: 0x8c5d2 - (*go/parser.parser).parseBinaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1856:23
           5: 0x8c87a - (*go/parser.parser).parseBinaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1870:25
           6: 0x96253 - (*go/parser.parser).parseExpr
                           at /usr/local/go/src/go/parser/parser.go:1881:26
           7: 0x89ec3 - (*go/parser.parser).parseExprList
                           at /usr/local/go/src/go/parser/parser.go:502:33              - (*go/parser.parser).parseList
                           at /usr/local/go/src/go/parser/parser.go:514:25
           8: 0x85591 - <unknown>!(*go/parser.parser).parseValueSpec$bound
           9: 0x83022 - (*go/parser.parser).parseGenDecl
                           at /usr/local/go/src/go/parser/parser.go:2740:24
          10: 0x8396b - (*go/parser.parser).parseDecl
                           at /usr/local/go/src/go/parser/parser.go:2835:9
          11: 0x80ac6 - go/parser.ParseFile
                           at /usr/local/go/src/go/parser/parser.go:2886:38
          12: 0x9d606 - go/parser.TestParseFile
                           at /usr/local/go/src/go/parser/parser_test.go:46:21
          13: 0x26e87 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          14: 0x6ae77 - (*testing.T).Run
          15: 0x26b8f - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          16: 0x26e87 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          17: 0x1d26b - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/df/df1ffbc2f67009cb7164e9eddbd8e4a1427bd474a1a1b5ebd8579dc5d45f2a14-d:107:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          18: 0x185d6 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          19:  0x87d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          20: 0x184ac - (*internal/task.Task).Resume
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
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.00s)
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.04s)
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.01s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.08s)
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.17s)
=== RUN   TestFiles
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.00s)
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.04s)
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.01s)
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.01s)
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.04s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.08s)
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.17s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.16s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.07s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.06s)
=== RUN   TestFiles/slow.input
panic: runtime error: slice out of range
Error: failed to run main module `/tmp/tinygo1027479031/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x16b16 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x3bf2 - runtime.slicePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:165:16
           2: 0x3a19d - os.ReadFile
           3: 0xc8915 - go/printer.runcheck
                           at /usr/local/go/src/go/printer/printer_test.go:121:25              - go/printer.check$1
                           at /usr/local/go/src/go/printer/printer_test.go:152:11
           4: 0xc8ddf - <goroutine wrapper>
                           at /usr/local/go/src/go/printer/printer_test.go:151:2
           5:  0x91e - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x1884f - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.04s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.16s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.07s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.06s)
=== RUN   TestFiles/slow.input
panic: runtime error: slice out of range
Error: failed to run main module `/tmp/tinygo1027479031/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x16b16 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x3bf2 - runtime.slicePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:165:16
           2: 0x3a19d - os.ReadFile
           3: 0xc8915 - go/printer.runcheck
                           at /usr/local/go/src/go/printer/printer_test.go:121:25              - go/printer.check$1
                           at /usr/local/go/src/go/printer/printer_test.go:152:11
           4: 0xc8ddf - <goroutine wrapper>
                           at /usr/local/go/src/go/printer/printer_test.go:151:2
           5:  0x91e - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x1884f - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.01s)

```


### go/token wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1311999222/main /tmp/tinygo1311999222/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1311999222/main --output /tmp/tinygo1311999222/main
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $runtime.fd_write
 (local.tee $16
  (i64.extend_i32_u
   (local.tee $8
    (call $\28*reflect.rawType\29.Size
     (local.get $5)
    )
   )
  )
 )
 (i64.const 0)
 (local.get $15)
 (i64.const 0)
)
(on argument 0)
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $runtime.fd_write
 (local.tee $16
  (i64.extend_i32_u
   (local.tee $8
    (call $\28*reflect.rawType\29.Size
     (local.get $5)
    )
   )
  )
 )
 (i64.const 0)
 (local.get $15)
 (i64.const 0)
)
(on argument 1)
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $runtime.fd_write
 (local.tee $16
  (i64.extend_i32_u
   (local.tee $8
    (call $\28*reflect.rawType\29.Size
     (local.get $5)
    )
   )
  )
 )
 (i64.const 0)
 (local.get $15)
 (i64.const 0)
)
(on argument 2)
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $runtime.fd_write
 (local.tee $16
  (i64.extend_i32_u
   (local.tee $8
    (call $\28*reflect.rawType\29.Size
     (local.get $5)
    )
   )
  )
 )
 (i64.const 0)
 (local.get $15)
 (i64.const 0)
)
(on argument 3)
Fatal: error validating input
FAIL	go/token	0.000s
error: wasm-opt failed: exit status 1
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
Error: failed to run main module `/tmp/tinygo1534464994/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x316d - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6019e - hash/crc32.archInitIEEE
                           at /usr/local/go/src/hash/crc32/crc32_otherarch.go:10:57
           2: 0x63eab - hash/crc32.TestArchIEEE
                           at /usr/local/go/src/hash/crc32/crc32_test.go:232:14
           3: 0x1db15 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x46cfb - (*testing.T).Run
           5: 0x1d81d - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x1db15 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x17b10 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/42/42abff43a2f6d063760b5c32884a73c3b8a5ebac782b8fcf07ac3452956a7eef-d:67:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x13a71 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x5b8 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1394e - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo108362945/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x6328 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x7611 - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0xf6e0c - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0x100c4b - (*text/template.Template).Funcs
                           at /usr/local/go/src/text/template/template.go:181:15
           4: 0x129106 - (*html/template.escaper).commit
                           at /usr/local/go/src/html/template/escape.go:918:25              - html/template.escapeTemplate
                           at /usr/local/go/src/html/template/escape.go:40:17
           5: 0x129da8 - (*html/template.Template).lookupAndEscapeTemplate
                           at /usr/local/go/src/html/template/template.go:163:23              - (*html/template.Template).ExecuteTemplate
                           at /usr/local/go/src/html/template/template.go:135:40
           6: 0x133141 - html/template.TestAddParseTreeHTML
                           at /usr/local/go/src/html/template/clone_test.go:25:29
           7: 0x4ceb7 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x106fb8 - (*testing.T).Run
           9: 0x4cbbf - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x4ceb7 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x3d3ea - <unknown>!runtime.run$1
          12: 0x3a6ce - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13:  0xe97 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x3a5aa - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo888785641/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x3cd9 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6a3d5 - (image.Rectangle).Dx
                           at /usr/local/go/src/image/image.go:96:8              - image.pixelBufferLength
                           at /usr/local/go/src/image/image.go:94:47
           2: 0x6872e - image.NewRGBA
                           at /usr/local/go/src/image/image.go:229:42
           3: 0x765a4 - image.TestNewXxxBadRectangle$2
                           at /usr/local/go/src/image/image_test.go:108:39
           4: 0x7674a - image.TestNewXxxBadRectangle$1
                           at /usr/local/go/src/image/image_test.go:94:10
           5: 0x75572 - image.TestNewXxxBadRectangle
                           at /usr/local/go/src/image/image_test.go:138:16
           6: 0x2d3ec - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x2d0e2 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x2d3ec - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x26ac3 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/03/03696e0658b26ce2ed516312d26adbf88abfcc3eab0abe0b39a79e0462e8f45c-d:101:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          10: 0x2254d - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11:  0x7ec - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x22423 - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo3267768192/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x22b4 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x2556 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x5ca4a - (Go interface method)
           3: 0x5d822 - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48              - image/color.TestSqDiff
                           at /usr/local/go/src/image/color/color_test.go:44:28
           4: 0x1d014 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x1cd0a - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x1d014 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x17078 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/4d/4dadc14d436b349970b7a4071a99fc9f8aefe01c3235a3bddedb0326061282e8-d:73:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x12dd2 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x55b - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x12ca8 - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo1926311002/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x3f6b - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x420d - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x7c230 - (Go interface method)
           3: 0x8e648 - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48              - image/draw.TestSqDiff
                           at /usr/local/go/src/image/draw/draw_test.go:807:28
           4: 0x365ed - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x362e3 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x365ed - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x30bf2 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/2a/2a9b332c08e48a6461f4d90bdca395e8895837da22f04105e348adb36252d90f-d:105:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x2a72c - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x7f6 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x2a602 - (*internal/task.Task).Resume
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
=== RUN   TestNew64/exhaustive2
=== RUN   TestNew64
=== RUN   TestNew64/ababab...
    --- PASS: TestNew64/ababab... (9.72s)
=== RUN   TestNew64/forcealloc
    --- PASS: TestNew64/forcealloc (1.21s)
=== RUN   TestNew64/exhaustive2
=== RUN   TestNew64/ababab...
    --- PASS: TestNew64/ababab... (9.72s)
=== RUN   TestNew64/forcealloc
    --- PASS: TestNew64/forcealloc (1.21s)

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
--- FAIL: TestMultiReaderFreesExhaustedReaders (5.04s)

```


### io/fs wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/6
=== RUN   TestCVE202230630
Error: failed to run main module `/tmp/tinygo1976487708/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x14530 - path.Match
                           at /usr/local/go/src/path/match.go:42:35
           1: 0x39ba2 - (Go interface assert)
                           at /usr/local/go/src/io/fs/glob.go:49:25              - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:44:22
           2: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           3: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           4: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           5: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           6: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           7: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           8: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           9: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          10: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          11: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          12: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          13: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          14: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          15: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          16: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          17: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          18: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          19: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          20: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          21: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          22: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          23: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          24: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          25: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          26: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          27: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          28: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          29: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          30: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          31: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          32: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          33: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          34: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          35: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          36: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          37: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          38: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          39: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          40: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          41: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          42: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          43: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          44: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          45: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          46: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          47: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          48: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          49: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          50: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          51: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          52: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          53: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          54: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          55: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          56: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          57: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          58: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          59: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          60: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          61: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          62: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          63: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          64: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          65: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          66: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          67: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          68: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          69: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          70: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          71: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          72: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          73: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          74: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          75: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          76: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          77: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          78: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          79: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          80: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          81: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          82: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          83: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          84: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          85: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          86: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          87: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          88: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          89: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          90: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          91: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          92: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          93: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          94: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          95: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          96: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          97: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          98: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          99: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         100: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         101: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         102: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         103: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         104: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         105: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         106: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         107: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         108: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         109: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         110: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         111: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         112: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         113: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         114: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         115: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         116: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         117: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         118: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         119: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         120: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         121: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         122: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         123: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         124: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         125: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         126: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         127: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         128: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         129: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         130: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         131: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         132: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         133: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         134: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         135: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         136: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         137: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         138: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         139: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         140: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         141: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         142: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         143: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         144: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         145: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         146: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         147: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         148: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         149: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         150: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         151: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         152: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         153: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         154: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         155: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         156: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         157: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         158: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         159: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         160: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         161: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         162: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         163: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         164: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         165: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         166: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         167: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         168: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         169: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         170: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         171: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         172: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         173: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         174: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         175: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         176: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         177: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         178: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         179: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         180: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         181: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         182: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         183: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         184: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         185: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         186: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         187: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         188: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         189: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         190: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         191: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         192: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         193: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         194: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         195: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         196: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         197: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         198: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         199: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         200: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         201: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         202: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         203: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         204: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         205: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         206: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         207: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         208: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         209: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         210: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         211: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         212: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         213: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         214: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         215: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         216: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         217: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         218: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         219: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         220: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         221: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         222: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         223: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         224: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         225: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         226: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         227: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         228: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         229: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         230: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         231: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         232: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         233: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         234: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         235: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         236: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         237: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         238: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         239: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         240: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         241: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         242: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         243: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         244: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         245: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         246: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         247: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         248: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         249: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         250: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         251: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         252: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         253: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         254: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         255: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         256: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         257: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         258: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         259: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         260: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         261: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         262: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         263: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         264: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         265: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         266: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         267: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         268: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         269: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         270: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         271: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         272: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         273: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         274: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         275: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         276: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         277: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         278: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         279: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         280: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         281: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         282: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         283: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         284: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         285: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         286: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         287: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         288: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         289: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         290: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         291: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         292: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         293: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         294: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         295: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         296: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         297: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         298: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         299: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         300: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         301: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         302: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         303: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         304: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         305: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         306: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         307: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         308: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         309: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         310: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         311: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         312: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         313: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         314: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         315: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         316: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         317: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         318: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         319: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         320: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         321: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         322: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         323: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         324: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         325: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         326: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         327: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         328: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         329: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         330: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         331: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         332: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         333: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         334: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         335: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         336: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         337: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         338: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         339: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         340: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         341: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         342: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         343: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         344: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         345: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         346: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         347: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         348: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         349: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         350: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         351: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         352: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         353: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         354: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         355: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         356: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         357: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         358: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         359: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         360: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         361: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         362: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         363: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         364: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         365: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         366: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         367: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         368: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         369: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         370: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         371: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         372: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         373: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         374: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         375: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         376: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         377: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         378: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         379: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         380: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         381: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         382: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         383: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         384: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         385: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         386: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         387: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         388: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         389: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         390: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         391: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         392: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         393: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         394: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         395: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         396: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         397: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         398: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         399: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         400: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         401: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         402: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         403: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         404: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         405: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         406: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         407: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         408: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         409: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         410: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         411: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         412: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         413: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         414: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         415: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         416: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         417: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         418: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         419: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         420: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         421: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         422: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         423: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         424: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         425: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         426: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         427: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         428: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         429: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         430: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         431: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         432: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         433: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         434: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         435: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         436: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         437: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         438: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         439: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         440: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         441: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         442: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         443: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         444: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         445: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         446: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         447: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         448: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         449: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         450: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         451: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         452: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         453: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         454: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         455: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         456: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         457: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         458: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         459: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         460: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         461: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         462: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         463: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         464: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         465: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         466: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         467: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         468: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         469: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         470: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         471: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         472: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         473: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         474: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         475: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         476: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         477: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         478: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         479: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         480: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         481: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         482: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         483: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         484: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         485: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         486: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         487: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         488: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         489: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         490: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         491: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         492: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         493: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         494: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         495: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         496: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         497: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         498: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         499: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         500: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         501: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         502: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         503: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         504: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         505: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         506: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         507: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         508: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         509: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         510: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         511: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         512: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         513: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         514: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         515: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         516: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         517: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         518: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         519: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         520: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         521: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         522: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         523: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         524: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         525: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         526: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         527: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         528: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         529: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         530: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         531: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         532: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         533: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         534: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         535: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         536: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         537: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         538: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         539: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         540: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         541: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         542: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         543: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         544: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         545: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         546: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         547: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         548: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         549: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         550: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         551: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         552: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         553: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         554: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         555: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         556: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         557: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         558: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         559: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         560: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         561: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         562: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         563: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         564: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         565: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         566: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         567: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         568: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         569: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         570: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         571: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         572: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         573: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         574: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         575: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         576: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         577: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         578: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         579: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         580: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         581: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         582: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         583: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         584: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         585: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         586: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         587: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         588: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         589: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         590: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         591: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         592: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         593: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         594: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         595: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         596: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         597: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         598: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         599: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         600: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         601: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         602: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         603: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         604: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         605: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         606: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         607: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         608: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         609: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         610: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         611: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         612: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         613: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         614: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         615: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         616: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         617: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         618: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         619: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         620: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         621: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         622: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         623: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         624: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         625: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         626: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         627: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         628: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         629: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         630: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         631: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         632: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         633: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         634: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         635: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         636: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         637: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         638: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         639: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         640: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         641: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         642: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         643: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         644: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         645: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         646: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         647: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         648: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         649: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         650: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         651: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         652: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         653: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         654: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         655: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         656: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         657: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         658: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         659: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         660: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         661: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         662: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         663: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         664: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         665: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         666: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         667: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         668: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         669: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         670: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         671: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         672: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         673: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         674: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         675: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         676: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         677: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         678: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         679: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         680: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         681: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         682: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         683: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         684: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         685: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         686: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         687: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         688: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         689: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         690: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         691: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         692: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         693: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         694: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         695: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         696: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         697: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         698: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         699: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         700: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         701: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         702: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         703: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         704: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         705: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         706: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         707: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         708: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         709: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         710: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         711: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         712: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         713: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         714: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         715: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         716: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         717: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         718: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         719: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         720: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         721: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         722: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         723: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         724: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         725: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         726: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         727: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         728: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         729: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         730: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         731: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         732: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         733: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         734: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         735: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         736: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         737: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         738: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         739: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         740: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         741: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         742: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         743: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         744: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         745: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         746: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         747: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         748: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         749: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         750: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         751: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         752: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         753: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         754: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         755: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         756: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         757: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         758: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         759: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         760: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         761: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         762: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         763: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         764: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         765: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         766: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         767: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         768: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         769: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         770: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         771: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         772: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         773: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         774: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         775: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         776: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         777: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         778: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         779: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         780: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         781: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         782: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         783: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         784: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         785: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         786: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         787: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         788: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         789: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         790: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         791: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         792: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         793: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         794: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         795: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         796: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         797: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         798: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         799: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         800: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         801: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         802: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         803: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         804: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         805: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         806: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         807: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         808: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         809: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         810: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         811: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         812: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         813: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         814: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         815: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         816: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         817: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         818: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         819: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         820: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         821: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         822: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         823: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         824: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         825: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         826: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         827: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         828: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         829: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         830: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         831: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         832: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         833: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         834: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         835: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         836: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         837: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         838: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         839: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         840: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         841: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         842: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         843: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         844: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         845: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         846: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         847: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         848: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         849: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         850: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         851: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         852: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         853: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         854: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         855: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         856: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         857: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         858: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         859: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         860: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         861: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         862: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         863: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         864: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         865: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         866: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         867: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         868: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         869: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         870: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         871: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         872: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         873: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         874: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         875: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         876: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         877: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         878: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         879: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         880: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         881: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         882: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         883: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         884: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         885: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         886: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         887: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         888: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         889: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         890: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         891: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         892: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         893: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         894: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         895: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         896: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         897: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         898: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         899: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         900: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         901: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         902: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         903: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         904: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         905: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         906: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         907: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         908: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         909: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         910: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         911: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         912: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         913: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         914: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         915: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         916: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         917: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         918: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         919: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         920: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         921: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         922: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         923: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         924: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         925: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         926: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         927: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         928: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         929: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         930: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         931: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         932: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         933: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         934: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         935: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         936: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         937: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         938: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         939: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         940: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         941: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         942: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         943: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         944: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         945: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         946: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         947: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         948: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         949: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         950: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         951: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         952: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         953: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         954: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         955: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         956: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         957: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         958: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         959: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         960: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         961: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         962: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         963: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         964: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         965: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         966: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         967: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         968: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         969: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         970: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         971: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         972: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         973: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         974: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         975: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         976: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         977: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         978: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         979: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         980: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         981: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         982: 0x39cfb - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         983: 0x398af - io/fs.Glob
                           at /usr/local/go/src/io/fs/glob.go:34:22
         984: 0x7e582 - <unknown>!io/fs_test.TestCVE202230630
         985: 0x2635d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         986: 0x632ff - (*testing.T).Run
         987: 0x26065 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
         988: 0x2635d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         989: 0x21615 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/71/7165db203a5b207e8aad64f4dbbe3d50948c42aa01ac732215ca4ffa57aeb2ab-d:79:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
         990: 0x1ce1f - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
         991:  0x885 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
         992: 0x1ccf4 - (*internal/task.Task).Resume
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
    Expected an error when writing to read-only file /tmp/TestReadOnlyWriteFile227879832/blurp.txt
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
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/09 12:17:02.693371 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/09 12:17:02.693582 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/09 12:17:02.694922 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/09 12:17:02.695142 ???:0: hello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/09 12:17:02.695364 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/09 12:17:02.695570 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/09 12:17:02.695776 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/09 12:17:02.695998 ???:0: XXXhello 23 world"
--- FAIL: TestAll (0.00s)

```


### log/slog wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1078688061/main /tmp/tinygo1078688061/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1078688061/main --output /tmp/tinygo1078688061/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=/tmp::/tmp /tmp/tinygo1078688061/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo1078688061/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x35ad - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x23e46 - testing/slogtest.withSource
                           at /usr/local/go/src/testing/slogtest/slogtest.go:362:8
           2: 0x197c3 - <unknown>!runtime.initAll
           3: 0x15a94 - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:24:10
           4: 0xdc8b - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           5:  0x7bc - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x15995 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11
           7: 0x15861 - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11
           8: 0x157de - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	log/slog	5.280s
```


### maps wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo4027263219/main /tmp/tinygo4027263219/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo4027263219/main.o: undefined symbol: maps.clone
wasm-ld: error: /tmp/tinygo4027263219/main.o: undefined symbol: maps.clone
failed to run tool: wasm-ld
FAIL	maps	0.000s
error: failed to link /tmp/tinygo4027263219/main: exit status 1
```


### math/bits wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/12
=== RUN   TestAdd64OverflowPanic
panic: overflow
Error: failed to run main module `/tmp/tinygo2608844773/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x18d7 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x624d5 - math/bits_test.TestAdd64OverflowPanic$1
                           at /usr/local/go/src/math/bits/bits_test.go:816:10
           2: 0x625ef - math/bits_test.TestAdd64OverflowPanic$7
                           at /usr/local/go/src/math/bits/bits_test.go:860:28
           3: 0x6271a - math/bits_test.TestAdd64OverflowPanic$6
                           at /usr/local/go/src/math/bits/bits_test.go:856:5
           4: 0x61fc3 - math/bits_test.TestAdd64OverflowPanic
                           at /usr/local/go/src/math/bits/bits_test.go:860:14
           5: 0x1cb2d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x1c823 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x1cb2d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x16c25 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/19/196c6203a629495b14a7882fc6691602ad410973a090372256d92752f4e1a352-d:257:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x12a2a - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x67c - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x12900 - (*internal/task.Task).Resume
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
=== RUN   TestDefaultRace/2
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestDefaultRace/5
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/5 (0.00s)
=== RUN   TestDefaultRace/3
        skipping test: cannot exec subprocess on wasip1/wasm: can't probe for exec support: Executable not implemented
        SkipNow is incomplete, requires runtime.Goexit()
        exec: "main": executable file not found in $PATH
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestRegress
panic: unimplemented: (reflect.Type).Method()
Error: failed to run main module `/tmp/tinygo208680888/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x5aa8 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x59cf - (reflect.rawType).Method
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1083:7
           2: 0x6014 - <unknown>!(*reflect.rawType).Method
           3: 0x8251b - (Go interface method)              - math/rand_test.TestRegress
                           at /usr/local/go/src/math/rand/regress_test.go:38:24
           4: 0x199d6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x57ac2 - (*testing.T).Run
           6: 0x196da - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x199d6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x129e6 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/ae/ae654a5c229aee13fe663229b289acbffac68fe0f560d57f9b7e7251be6a84c2-d:117:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0xd11e - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x900 - <unknown>!tinygo_rewind
          11: 0xcf23 - (*internal/task.Task).Resume
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

```


### math/rand/v2 wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo945832014/main /tmp/tinygo945832014/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo945832014/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: /tmp/tinygo945832014/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: /tmp/tinygo945832014/main.o: undefined symbol: internal/chacha8rand.block
failed to run tool: wasm-ld
FAIL	math/rand/v2	0.000s
error: failed to link /tmp/tinygo945832014/main: exit status 1
```


### mime wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/13
=== RUN   TestTypeByExtension
panic: bufio.Scanner: Read returned impossible count
Error: failed to run main module `/tmp/tinygo31780164/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x4190 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x72738 - mime.loadMimeGlobsFile
                           at /usr/local/go/src/mime/type_unix.go:74:8              - mime.initMimeUnix
                           at /usr/local/go/src/mime/type_unix.go:107:30              - mime.initMime
                           at /usr/local/go/src/mime/type.go:88:13
           2: 0xebc5 - (*sync.Once).Do
                           at /workspaces/dc-wasm-go/tinygo/src/sync/once.go:15:3
           3: 0x72924 - mime.TypeByExtension
                           at /usr/local/go/src/mime/type.go:112:9
           4: 0x7d758 - mime.TestTypeByExtension
                           at /usr/local/go/src/mime/type_test.go:47:25
           5: 0x30d1f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x30a11 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x30d1f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x2c009 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/09/099193785c39b02e3b11ad0bd26f57607faf46ef21bd807d79f3189fb39e2fe4-d:103:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x27045 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x730 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x26f1b - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### mime/multipart wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 3/10
=== RUN   TestReadForm_MetadataTooLarge
=== RUN   TestReadForm_MetadataTooLarge/large_name
    --- PASS: TestReadForm_MetadataTooLarge/large_name (0.11s)
=== RUN   TestReadForm_MetadataTooLarge/large_MIME_header
=== RUN   TestReadForm_MetadataTooLarge/large_name
    --- PASS: TestReadForm_MetadataTooLarge/large_name (0.11s)
=== RUN   TestReadForm_MetadataTooLarge/large_MIME_header

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
Error: failed to run main module `/tmp/tinygo1862633682/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x4bc8 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xac18f - (net/netip.Addr).As4
                           at /usr/local/go/src/net/netip/netip.go:685:8
           2: 0xd3d52 - <unknown>!net/netip_test.TestAs4
           3: 0x212fe - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x6835f - (*testing.T).Run
           5: 0x21002 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x212fe - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x1b4de - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/4e/4e0a8ff6a750f6f7bce278f9800eb6661caea88e4e37bb5fe37ebd8b4a66f130-d:181:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x15acd - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0xb94 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1596a - (*internal/task.Task).Resume
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
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo4094486425/main /tmp/tinygo4094486425/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo4094486425/main --output /tmp/tinygo4094486425/main
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $runtime.fd_write
 (local.tee $16
  (i64.extend_i32_u
   (local.tee $8
    (call $\28*reflect.rawType\29.Size
     (local.get $5)
    )
   )
  )
 )
 (i64.const 0)
 (local.get $15)
 (i64.const 0)
)
(on argument 0)
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $runtime.fd_write
 (local.tee $16
  (i64.extend_i32_u
   (local.tee $8
    (call $\28*reflect.rawType\29.Size
     (local.get $5)
    )
   )
  )
 )
 (i64.const 0)
 (local.get $15)
 (i64.const 0)
)
(on argument 1)
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $runtime.fd_write
 (local.tee $16
  (i64.extend_i32_u
   (local.tee $8
    (call $\28*reflect.rawType\29.Size
     (local.get $5)
    )
   )
  )
 )
 (i64.const 0)
 (local.get $15)
 (i64.const 0)
)
(on argument 2)
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $runtime.fd_write
 (local.tee $16
  (i64.extend_i32_u
   (local.tee $8
    (call $\28*reflect.rawType\29.Size
     (local.get $5)
    )
   )
  )
 )
 (i64.const 0)
 (local.get $15)
 (i64.const 0)
)
(on argument 3)
Fatal: error validating input
FAIL	net/url	0.000s
error: wasm-opt failed: exit status 1
```


### path/filepath wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestCVE202230632
Error: failed to run main module `/tmp/tinygo2512716687/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x1350e - (*sync.Pool).Get
                           at /workspaces/dc-wasm-go/tinygo/src/sync/pool.go:19:14
           1: 0x51ccc - fmt.newPrinter
                           at /usr/local/go/src/fmt/print.go:152:17
           2: 0x52291 - fmt.Sprintf
                           at /usr/local/go/src/fmt/print.go:237:6
           3: 0x57f37 - (*testing.common).Fatalf
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:263:19
           4: 0x7920f - path/filepath_test.TestCVE202230632
                           at /usr/local/go/src/path/filepath/match_test.go:164:11
           5: 0x27c28 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x597e7 - (*testing.T).Run
           7: 0x27930 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x27c28 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x23117 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/69/69d7319c84f52f0989962bd60ff86333367c039c083caa727b0a26564f2ccf0f-d:147:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          10: 0x1d853 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11:  0x972 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x1d728 - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo3320287791/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x5c1c - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x2c558 - (*regexp/syntax.parser).checkLimits
                           at /usr/local/go/src/regexp/syntax/parse.go:163:8
           2: 0x2bd80 - (*regexp/syntax.parser).push
           3: 0x35676 - regexp/syntax.parse
                           at /usr/local/go/src/regexp/syntax/parse.go:1063:9              - regexp/syntax.Parse
                           at /usr/local/go/src/regexp/syntax/parse.go:889:14
           4: 0x430ae - regexp.compile
                           at /usr/local/go/src/regexp/regexp.go:172:25
           5: 0x76931 - regexp.Compile
                           at /usr/local/go/src/regexp/regexp.go:135:16
           6: 0x7d2ae - regexp.compileTest
                           at /usr/local/go/src/regexp/all_test.go:56:20
           7: 0x7da9a - regexp.TestBadCompile
                           at /usr/local/go/src/regexp/all_test.go:76:14
           8: 0x46c5f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x6895d - (*testing.T).Run
          10: 0x46967 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          11: 0x46c5f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x41fb0 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/af/af4559cfe4edf69b71dc29ce1a2355bc32cd22553b56a2f648bb367548ede916-d:251:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          13: 0x3ce0f - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          14:  0x911 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          15: 0x3cce4 - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo3096575376/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x22a0 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x4f6a3 - (*regexp/syntax.parser).checkHeight
                           at /usr/local/go/src/regexp/syntax/parse.go:270:8
           2: 0x4e135 - (*regexp/syntax.parser).checkLimits
                           at /usr/local/go/src/regexp/syntax/parse.go:166:15
           3: 0x4d91b - (*regexp/syntax.parser).push
           4: 0x5669a - regexp/syntax.parse
                           at /usr/local/go/src/regexp/syntax/parse.go:1441:7              - regexp/syntax.Parse
                           at /usr/local/go/src/regexp/syntax/parse.go:889:14
           5: 0x5d957 - regexp/syntax.TestParseInvalidRegexps
                           at /usr/local/go/src/regexp/syntax/parse_test.go:527:22
           6: 0x24008 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x23cfe - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x24008 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x1e9b4 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/c8/c83f19d2969c72a75eafbf9b6f8374b11bb5a0612b7c179397ec896c59a28f7d-d:73:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          10: 0x19bbb - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11:  0x53d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x19a91 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### slices wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2907008187/main /tmp/tinygo2907008187/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo2907008187/main --output /tmp/tinygo2907008187/main
FAIL	slices	0.000s
error: wasm-opt failed: signal: killed
```


### strconv wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/29
=== RUN   TestFormatComplexInvalidBitSize
panic: invalid bitSize
Error: failed to run main module `/tmp/tinygo1260835180/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x5055 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x49769 - strconv.FormatComplex
                           at /usr/local/go/src/strconv/ctoa.go:16:8
           2: 0x92802 - strconv_test.TestFormatComplexInvalidBitSize
                           at /usr/local/go/src/strconv/ctoa_test.go:52:19
           3: 0x30469 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x63d5f - (*testing.T).Run
           5: 0x30171 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x30469 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x1c8e6 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/8c/8c2a46d03666ec6e1d366592d98f60839dcad46c12d8776fe157acce72d12691-d:279:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x1869f - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x8ee - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x18574 - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo2111140082/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x477f - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x35639 - (*strings.Builder).Grow
                           at /usr/local/go/src/strings/builder.go:80:8
           2: 0x7af20 - strings_test.TestBuilderGrow
                           at /usr/local/go/src/strings/builder_test.go:120:8
           3: 0x27571 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x609b9 - (*testing.T).Run
           5: 0x27279 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x27571 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x21246 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/7e/7e7530b4b41ba554fcd61a15fb56262397c798b6647dbef18c7e075b40e7bebf-d:415:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x1b5eb - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9:  0x958 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1b4c8 - (*internal/task.Task).Resume
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
--- FAIL: TestUnaligned64 (1.40s)
=== RUN   TestNilDeref
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo1006007293/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x13056 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x19f6 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x75ee0 - (*sync/atomic.Int32).CompareAndSwap
                           at /usr/local/go/src/sync/atomic/type.go:84:32              - sync/atomic_test.TestNilDeref$2
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2461:40
           3: 0x7533d - sync/atomic_test.TestNilDeref$59
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2525:5              - sync/atomic_test.TestNilDeref
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2526:4
           4: 0x1f6ff - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x491e9 - (*testing.T).Run
           6: 0x1f407 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x1f6ff - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x19595 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/f9/f9c374e6b50bb5564ff0d98214950a7423dae89fb0765aa081b4edd02093723a-d:201:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x149c8 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x81d - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          11: 0x1489e - (*internal/task.Task).Resume
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
    skipping test: cannot make symlinks on wasip1/wasm: symlinks unsupported: symlink /tmp/13164376/testfile.txt /tmp/13164376/testlink: errno 63
    SkipNow is incomplete, requires runtime.Goexit()
    symlink /tmp/TestSymlink70902730/000/hello /tmp/TestSymlink70902730/000/hello.link: errno 63
    FailNow is incomplete, requires runtime.Goexit()
    TestFS found errors:
        expected but not found: hello.link
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestSymlink (0.01s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestSymlink70902730: errno 52

```


### testing/quick wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestCheckEqual
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo1685664115/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x234d - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x25ef - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x5c921 - (Go interface method)
           3: 0x5cb1d - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48
           4: 0x5d128 - testing/quick.TestCheckEqual
                           at /usr/local/go/src/testing/quick/quick_test.go:163:34
           5: 0x1df2c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x1dc22 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x1df2c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x180eb - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/e3/e3de31e3b828492407d361e3b0cb64cd4f3e89c6ed71ece8ac334ab349c804a0-d:61:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x13e4d - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10:  0x5f1 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x13d23 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed

```


### testing/slogtest wasip1/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo463783330/main /tmp/tinygo463783330/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-f6dfdc5c0eba303761141c0df2fcd4c0ea07b3a91bae983ad3a0cdf0.bc /home/vscode/.cache/tinygo/obj-03cb3027306e14931a559af5783370ba29db850f5a080b48d52405d8.bc /workspaces/dc-wasm-go/tinygo/lib/wasi-libc/sysroot/lib/wasm32-wasi/libc.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo463783330/main --output /tmp/tinygo463783330/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=/tmp::/tmp /tmp/tinygo463783330/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo463783330/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x213c - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x16dfa - testing/slogtest.withSource
                           at /usr/local/go/src/testing/slogtest/slogtest.go:362:8
           2: 0xcc25 - <unknown>!runtime.initAll
           3: 0xc34c - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:24:10
           4: 0xa289 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           5:  0x431 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0xc24e - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11
           7: 0xc11c - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11
           8: 0xc09c - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasip1.go:21:5
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	testing/slogtest	4.082s
```


### text/tabwriter wasip1/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestPanicDuringFlush
panic: cannot write
Error: failed to run main module `/tmp/tinygo3203044916/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x24da - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xbfd4 - (text/tabwriter_test.panicWriter).Write
                           at /usr/local/go/src/text/tabwriter/tabwriter_test.go:622:7
           2: 0xa910 - <unknown>!interface:{Write:func:{slice:basic:uint8}{basic:int,named:error}}.Write$invoke
           3: 0xd8a1 - (*text/tabwriter.Writer).write0
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:251:26
           4: 0xd47e - (*text/tabwriter.Writer).writeLines
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:318:14
           5: 0xc978 - (*text/tabwriter.Writer).format
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:405:21
           6: 0xc2f1 - (*text/tabwriter.Writer).flushNoDefers
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:513:10
           7: 0xc120 - (*text/tabwriter.Writer).flush
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:495:17              - (*text/tabwriter.Writer).Flush
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:488:16
           8: 0x5f99c - text/tabwriter_test.TestPanicDuringFlush
                           at /usr/local/go/src/text/tabwriter/tabwriter_test.go:643:9
           9: 0x1f4c5 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x1f1bb - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          11: 0x1f4c5 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x19452 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/82/820448a5a8b28b6568ca535f8febd255e560bfb39fb86b392c543db67f75b4a5-d:67:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          13: 0x15257 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          14:  0x534 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          15: 0x1512d - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo819505394/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x66af - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x722d - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0xa1b2e - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0xa158b - (*text/template.Template).Funcs
                           at /usr/local/go/src/text/template/template.go:181:15
           4: 0xb043d - text/template.testExecute
                           at /usr/local/go/src/text/template/exec_test.go:796:23
           5: 0xb0bce - text/template.TestExecute
                           at /usr/local/go/src/text/template/exec_test.go:831:13
           6: 0x32f50 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x83a11 - (*testing.T).Run
           8: 0x32c54 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x32f50 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x24449 - <unknown>!runtime.run$1
          11: 0x21551 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12:  0xabd - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x213ee - (*internal/task.Task).Resume
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
Error: failed to run main module `/tmp/tinygo3289419597/main`

Caused by:
    0: failed to invoke command default
    1: error while executing at wasm backtrace:
           0: 0x2b53 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasm.go:70:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x48eb7 - (*fmt.ss).error
                           at /usr/local/go/src/fmt/scan.go:240:7
           2: 0x4a4d0 - (*fmt.ss).accept
                           at /usr/local/go/src/fmt/scan.go:750:10              - (*fmt.ss).complexTokens
                           at /usr/local/go/src/fmt/scan.go:755:14              - (*fmt.ss).scanComplex
                           at /usr/local/go/src/fmt/scan.go:816:33
           3: 0x4c376 - <unknown>!fmt.Sscan
           4: 0x819bb - text/template/parse.TestNumberParse
                           at /usr/local/go/src/text/template/parse/parse_test.go:99:23
           5: 0x1f750 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x53ec8 - (*testing.T).Run
           7: 0x1f458 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x1f750 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x1a109 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/97/97aff8905c92f3c2c83a3d8f59473c1d67c5a331a12ffae42fb9894564f7a41a-d:83:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          10: 0x15150 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11:  0x65f - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x15026 - (*internal/task.Task).Resume
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
Failures/Tests: 16/16
=== RUN   TestReader/readme.zip
        ReadFile(testdata/readme.zip) error=open testdata/readme.zip: errno 2
    --- FAIL: TestReader/readme.zip (0.00s)
=== RUN   TestReader/go-no-datadesc-sig.zip.base64
        obscuretestdata.DecodeToTempFile(testdata/go-no-datadesc-sig.zip.base64): open testdata/go-no-datadesc-sig.zip.base64: errno 2
    --- FAIL: TestReader/go-no-datadesc-sig.zip.base64 (0.00s)
=== RUN   TestReader/go-with-datadesc-sig.zip
        ReadFile(testdata/go-with-datadesc-sig.zip) error=open testdata/go-with-datadesc-sig.zip: errno 2
    --- FAIL: TestReader/go-with-datadesc-sig.zip (0.00s)
=== RUN   TestReader/dd.zip
        ReadFile(testdata/dd.zip) error=open testdata/dd.zip: errno 2
    --- FAIL: TestReader/dd.zip (0.00s)
=== RUN   TestReader/Bad-CRC32-in-data-descriptor
panic: Error reading go-with-datadesc-sig.zip: open testdata/go-with-datadesc-sig.zip: errno 2
Error: failed to run main module `/tmp/tinygo2313233803/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3ac9 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xbd1da - archive/zip.messWith
                           at /usr/local/go/src/archive/zip/reader_test.go:810:8
           2: 0xbcdbc - archive/zip.returnCorruptCRC32Zip
                           at /usr/local/go/src/archive/zip/reader_test.go:817:17
           3: 0xcac21 - archive/zip.readTestZip
                           at /usr/local/go/src/archive/zip/reader_test.go:588:25              - archive/zip.TestReader$1
                           at /usr/local/go/src/archive/zip/reader_test.go:578:15
           4: 0x429d2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x949d8 - (*testing.T).Run
           6: 0xca787 - archive/zip.TestReader
                           at /usr/local/go/src/archive/zip/reader_test.go:577:8
           7: 0x429d2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x949d8 - (*testing.T).Run
           9: 0x426d6 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x429d2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x38bc1 - <unknown>!runtime.run$1
          12: 0x2ed12 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x1d65 - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          14: 0x2ebc6 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          15: 0x2e9d9 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestReader/test.zip
        ReadFile(testdata/test.zip) error=open testdata/test.zip: errno 2
    --- FAIL: TestReader/test.zip (0.00s)
=== RUN   TestReader/test-prefix.zip
        ReadFile(testdata/test-prefix.zip) error=open testdata/test-prefix.zip: errno 2
    --- FAIL: TestReader/test-prefix.zip (0.00s)
=== RUN   TestReader/test-badbase.zip
        ReadFile(testdata/test-badbase.zip) error=open testdata/test-badbase.zip: errno 2
    --- FAIL: TestReader/test-badbase.zip (0.00s)
=== RUN   TestReader/r.zip
    --- PASS: TestReader/r.zip (0.00s)
=== RUN   TestReader/symlink.zip
        ReadFile(testdata/symlink.zip) error=open testdata/symlink.zip: errno 2
    --- FAIL: TestReader/symlink.zip (0.00s)
=== RUN   TestReader/readme.notzip
        ReadFile(testdata/readme.notzip) error=open testdata/readme.notzip: errno 2
    --- FAIL: TestReader/readme.notzip (0.00s)
=== RUN   TestReader/winxp.zip
        ReadFile(testdata/winxp.zip) error=open testdata/winxp.zip: errno 2
    --- FAIL: TestReader/winxp.zip (0.00s)
=== RUN   TestReader/unix.zip
        ReadFile(testdata/unix.zip) error=open testdata/unix.zip: errno 2
    --- FAIL: TestReader/unix.zip (0.00s)
=== RUN   TestReader
=== RUN   TestReader/test.zip
        ReadFile(testdata/test.zip) error=open testdata/test.zip: errno 2
    --- FAIL: TestReader/test.zip (0.00s)
=== RUN   TestReader/test-trailing-junk.zip
        ReadFile(testdata/test-trailing-junk.zip) error=open testdata/test-trailing-junk.zip: errno 2
    --- FAIL: TestReader/test-trailing-junk.zip (0.00s)
=== RUN   TestReader/test-prefix.zip
        ReadFile(testdata/test-prefix.zip) error=open testdata/test-prefix.zip: errno 2
    --- FAIL: TestReader/test-prefix.zip (0.00s)
=== RUN   TestReader/test-baddirsz.zip
        ReadFile(testdata/test-baddirsz.zip) error=open testdata/test-baddirsz.zip: errno 2
    --- FAIL: TestReader/test-baddirsz.zip (0.00s)
=== RUN   TestReader/test-badbase.zip
        ReadFile(testdata/test-badbase.zip) error=open testdata/test-badbase.zip: errno 2
    --- FAIL: TestReader/test-badbase.zip (0.00s)
=== RUN   TestReader/r.zip
    --- PASS: TestReader/r.zip (0.00s)
=== RUN   TestReader/symlink.zip
        ReadFile(testdata/symlink.zip) error=open testdata/symlink.zip: errno 2
    --- FAIL: TestReader/symlink.zip (0.00s)
=== RUN   TestReader/readme.zip
        ReadFile(testdata/readme.zip) error=open testdata/readme.zip: errno 2
    --- FAIL: TestReader/readme.zip (0.00s)
=== RUN   TestReader/readme.notzip
        ReadFile(testdata/readme.notzip) error=open testdata/readme.notzip: errno 2
    --- FAIL: TestReader/readme.notzip (0.00s)
=== RUN   TestReader/dd.zip
        ReadFile(testdata/dd.zip) error=open testdata/dd.zip: errno 2
    --- FAIL: TestReader/dd.zip (0.00s)
=== RUN   TestReader/winxp.zip
        ReadFile(testdata/winxp.zip) error=open testdata/winxp.zip: errno 2
    --- FAIL: TestReader/winxp.zip (0.00s)
=== RUN   TestReader/unix.zip
        ReadFile(testdata/unix.zip) error=open testdata/unix.zip: errno 2
    --- FAIL: TestReader/unix.zip (0.00s)
=== RUN   TestReader/go-no-datadesc-sig.zip.base64
        obscuretestdata.DecodeToTempFile(testdata/go-no-datadesc-sig.zip.base64): open testdata/go-no-datadesc-sig.zip.base64: errno 2
    --- FAIL: TestReader/go-no-datadesc-sig.zip.base64 (0.00s)
=== RUN   TestReader/go-with-datadesc-sig.zip
        ReadFile(testdata/go-with-datadesc-sig.zip) error=open testdata/go-with-datadesc-sig.zip: errno 2
    --- FAIL: TestReader/go-with-datadesc-sig.zip (0.00s)
=== RUN   TestReader/Bad-CRC32-in-data-descriptor
panic: Error reading go-with-datadesc-sig.zip: open testdata/go-with-datadesc-sig.zip: errno 2
Error: failed to run main module `/tmp/tinygo2313233803/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3ac9 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xbd1da - archive/zip.messWith
                           at /usr/local/go/src/archive/zip/reader_test.go:810:8
           2: 0xbcdbc - archive/zip.returnCorruptCRC32Zip
                           at /usr/local/go/src/archive/zip/reader_test.go:817:17
           3: 0xcac21 - archive/zip.readTestZip
                           at /usr/local/go/src/archive/zip/reader_test.go:588:25              - archive/zip.TestReader$1
                           at /usr/local/go/src/archive/zip/reader_test.go:578:15
           4: 0x429d2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x949d8 - (*testing.T).Run
           6: 0xca787 - archive/zip.TestReader
                           at /usr/local/go/src/archive/zip/reader_test.go:577:8
           7: 0x429d2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x949d8 - (*testing.T).Run
           9: 0x426d6 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x429d2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x38bc1 - <unknown>!runtime.run$1
          12: 0x2ed12 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x1d65 - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          14: 0x2ebc6 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          15: 0x2e9d9 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestReader/test-trailing-junk.zip
        ReadFile(testdata/test-trailing-junk.zip) error=open testdata/test-trailing-junk.zip: errno 2
    --- FAIL: TestReader/test-trailing-junk.zip (0.00s)
=== RUN   TestReader/test-baddirsz.zip
        ReadFile(testdata/test-baddirsz.zip) error=open testdata/test-baddirsz.zip: errno 2
    --- FAIL: TestReader/test-baddirsz.zip (0.00s)

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
Error: failed to run main module `/tmp/tinygo1036011177/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3a0e - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xdcb8 - (*bufio.Reader).Read
           2: 0x8e289 - bufio_test.TestNegativeRead
                           at /usr/local/go/src/bufio/bufio_test.go:1303:8
           3: 0x303cc - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x5c6f2 - (*testing.T).Run
           5: 0x300d0 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x303cc - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x2a16f - <unknown>!runtime.run$1
           8: 0x1d378 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1c76 - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          10: 0x1d155 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x1ce42 - wasi:cli/run@0.2.0#run
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
Error: failed to run main module `/tmp/tinygo4181564220/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1c786 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x2e76 - runtime.slicePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:165:16
           2: 0x83bd2 - bytes_test.dangerousSlice
                           at /usr/local/go/src/bytes/boundary_test.go:32:26
           3: 0x83c91 - bytes_test.TestEqualNearPageBoundary
                           at /usr/local/go/src/bytes/boundary_test.go:45:21
           4: 0x31152 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x30e44 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x31152 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x2a815 - <unknown>!runtime.run$1
           8: 0x1c0e4 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1cd1 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1bf9f - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x1bdab - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### compress/bzip2 wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1499536338/main /tmp/tinygo1499536338/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1499536338/main --output /tmp/tinygo1499536338/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo1499536338/main -o /tmp/tinygo1499536338/main
wasm-tools component new /tmp/tinygo1499536338/main -o /tmp/tinygo1499536338/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --wasm component-model --dir=/tmp::/tmp /tmp/tinygo1499536338/main -test.v
panic: open testdata/e.txt.bz2: errno 2
Error: failed to run main module `/tmp/tinygo1499536338/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3482 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x29662 - compress/bzip2.mustLoadFile
                           at /usr/local/go/src/compress/bzip2/bzip2_test.go:27:8
           2: 0x23aa2 - <unknown>!runtime.run$1
           3: 0x19a4b - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           4: 0x196b - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           5: 0x198fe - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           6: 0x19676 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	compress/bzip2	11.522s
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
--- FAIL: TestDeflateInflateString (22.12s)
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
Error: failed to run main module `/tmp/tinygo3432901733/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x18be7 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x244a - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:160:16
           2: 0x6c1ff - <unknown>!(*crypto/rc4.Cipher).XORKeyStream$bound
           3: 0x6c59a - crypto_test.test
                           at /usr/local/go/src/crypto/issue21104_test.go:60:5
           4: 0x6bfbe - crypto_test.TestRC4OutOfBoundsWrite
                           at /usr/local/go/src/crypto/issue21104_test.go:21:6
           5: 0x2aa6d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x2a763 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x2aa6d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x252f7 - <unknown>!runtime.run$1
           9: 0x18545 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1951 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x183f8 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x18170 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/aes wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/9
=== RUN   TestShortBlocks
panic: crypto/aes: input not full block
Error: failed to run main module `/tmp/tinygo526079384/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x348c - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x26322 - (*crypto/aes.aesCipher).Encrypt
                           at /usr/local/go/src/crypto/aes/cipher.go:60:8              - (Go interface method)
                           at <Go interface method>
           2: 0x73880 - crypto/aes.TestShortBlocks$2
                           at /usr/local/go/src/crypto/aes/aes_test.go:327:69
           3: 0x73af6 - crypto/aes.mustPanic
                           at /usr/local/go/src/crypto/aes/aes_test.go:344:3
           4: 0x73283 - crypto/aes.TestShortBlocks
                           at /usr/local/go/src/crypto/aes/aes_test.go:327:11
           5: 0x214bf - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x211b5 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x214bf - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x1b1c1 - <unknown>!runtime.run$1
           9: 0xe224 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1975 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0xe0d7 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0xde51 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/cipher wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/5
=== RUN   TestCryptBlocks
panic: crypto/cipher: input not full blocks
Error: failed to run main module `/tmp/tinygo4232117813/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3510 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x770c0 - (*crypto/cipher.cbcDecrypter).CryptBlocks
                           at /usr/local/go/src/crypto/cipher/cbc.go:145:8              - (Go interface method)
                           at <Go interface method>
           2: 0x79628 - crypto/cipher_test.TestCryptBlocks$1
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:20:80
           3: 0x79896 - crypto/cipher_test.mustPanic
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:37:3
           4: 0x792b4 - crypto/cipher_test.TestCryptBlocks
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:20:11
           5: 0x231e0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x22ed6 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x231e0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x1d02a - <unknown>!runtime.run$1
           9: 0x10751 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x19f9 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x10604 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x1037c - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/dsa wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestParameterGeneration

```


### crypto/ecdh wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2535649953/main /tmp/tinygo2535649953/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo2535649953/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	crypto/ecdh	0.000s
error: failed to link /tmp/tinygo2535649953/main: exit status 1
```


### crypto/ecdsa wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/31
=== RUN   TestVectors
    open testdata/SigVer.rsp.bz2: errno 2
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo3894232741/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x226e1 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x6e31 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x15158 - (os.unixFileHandle).Read$invoke              - (Go interface method)
                           at <Go interface method>              - (*os.File).Read
                           at /workspaces/dc-wasm-go/tinygo/src/os/file.go:114:25
           3: 0x12554 - (Go interface method)
                           at /usr/local/go/src/strings/reader.go:45:4
           4: 0x3749a - (*bufio.Reader).fill
                           at /usr/local/go/src/bufio/bufio.go:110:22
           5: 0x17ef4 - (*bufio.Reader).ReadByte
                           at /usr/local/go/src/bufio/bufio.go:269:9              - (Go interface method)
                           at <Go interface method>
           6: 0x16bd6 - (*compress/bzip2.bitReader).ReadBits64
                           at /usr/local/go/src/compress/bzip2/bit_reader.go:38:26
           7: 0x16433 - (*compress/bzip2.bitReader).ReadBits
                           at /usr/local/go/src/compress/bzip2/bit_reader.go:71:22              - (*compress/bzip2.reader).setup
                           at /usr/local/go/src/compress/bzip2/bzip2.go:61:23
           8: 0x129ad - (*compress/bzip2.reader).Read
                           at /usr/local/go/src/compress/bzip2/bzip2.go:91:18              - (Go interface method)
                           at <Go interface method>
           9: 0x3749a - (*bufio.Reader).fill
                           at /usr/local/go/src/bufio/bufio.go:110:22
          10: 0xf2d42 - <unknown>!crypto/ecdsa.TestVectors
          11: 0x3325c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0xc6c2f - (*testing.T).Run
          13: 0x32f64 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          14: 0x3325c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          15: 0x2d7c6 - <unknown>!runtime.run$1
          16: 0x2203e - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          17: 0x1cf9 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          18: 0x21ef0 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          19: 0x21c67 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/ed25519 wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1894930208/main /tmp/tinygo1894930208/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo1894930208/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	crypto/ed25519	0.000s
error: failed to link /tmp/tinygo1894930208/main: exit status 1
```


### crypto/hmac wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestNonUniqueHash
panic: crypto/hmac: hash generation function does not produce unique values
Error: failed to run main module `/tmp/tinygo3988747898/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x34a8 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x75764 - crypto/hmac.New
           2: 0x765c8 - crypto/hmac.TestNonUniqueHash
                           at /usr/local/go/src/crypto/hmac/hmac_test.go:597:45
           3: 0x270eb - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x26de1 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           5: 0x270eb - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x21acb - <unknown>!runtime.run$1
           7: 0x1535c - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           8: 0x1991 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           9: 0x1520f - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          10: 0x14f87 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/rsa wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestEncryptPKCS1v15
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo267761169/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2d7c - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x50aa - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0xf9081 - (Go interface method)
           3: 0xfac2d - testing/quick.Check
                           at /usr/local/go/src/testing/quick/quick.go:273:17              - crypto/rsa_test.TestEncryptPKCS1v15
                           at /usr/local/go/src/crypto/rsa/pkcs1v15_test.go:118:13
           4: 0x3c470 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x864dc - (*testing.T).Run
           6: 0x3c178 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x3c470 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x3483b - <unknown>!runtime.run$1
           9: 0x2b2c9 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1cf3 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x2b183 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x2af8e - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/subtle wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestConstantTimeByteEq
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo618339697/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x38af - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x3ba4 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x6b9a3 - (Go interface method)
           3: 0x6bba0 - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48
           4: 0x6c482 - crypto/subtle.TestConstantTimeByteEq
                           at /usr/local/go/src/crypto/subtle/constant_time_test.go:59:25
           5: 0x1f70e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x1f404 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x1f70e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x1924a - <unknown>!runtime.run$1
           9: 0x980c - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1967 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x96c0 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x943a - wasi:cli/run@0.2.0#run
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
Failures/Tests: 2/2
=== RUN   TestDwarf5Ranges
    could not read test data: open testdata/debug_rnglists: errno 2
    FailNow is incomplete, requires runtime.Goexit()
    could not read rnglist: invalid rnglist offset 12 (max 0)
    FailNow is incomplete, requires runtime.Goexit()
    [][2]uint64(nil)
--- FAIL: TestDwarf5Ranges (0.00s)
=== RUN   TestSplit
    open testdata/split.elf: errno 2
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo1096188343/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x29888 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x6504 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0xbd3c2 - debug/dwarf_test.elfData
           3: 0xba40d - debug/dwarf_test.TestSplit
                           at /usr/local/go/src/debug/dwarf/entry_test.go:15:6
           4: 0x4277a - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x7345b - (*testing.T).Run
           6: 0x42482 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x4277a - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x38ab4 - <unknown>!runtime.run$1
           9: 0x291e6 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1b64 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x29099 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x28e11 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### debug/elf wasip2/wasm

[🔝](#summary) build error

```text
FAIL	debug/elf	0.000s
# debug/elf
/usr/local/go/src/debug/elf/file_test.go:1159:10: undefined: net.ResolveIPAddr
```


### debug/gosym wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2901876954/main /tmp/tinygo2901876954/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo2901876954/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	debug/gosym	0.000s
error: failed to link /tmp/tinygo2901876954/main: exit status 1
```


### debug/macho wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/3
=== RUN   TestOpen
    open testdata/gcc-386-darwin-exec.base64: errno 2
    open testdata/gcc-amd64-darwin-exec.base64: errno 2
    open testdata/gcc-amd64-darwin-exec-debug.base64: errno 2
    open testdata/clang-386-darwin-exec-with-rpath.base64: errno 2
    open testdata/clang-amd64-darwin-exec-with-rpath.base64: errno 2
    open testdata/clang-386-darwin.obj.base64: errno 2
    open testdata/clang-amd64-darwin.obj.base64: errno 2
--- FAIL: TestOpen (0.00s)
=== RUN   TestOpenFat
    open testdata/fat-gcc-386-amd64-darwin-exec.base64: errno 2
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo2516377451/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1f080 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x637b - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x80814 - debug/macho.TestOpenFat
           3: 0x31f95 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x31c8b - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           5: 0x31f95 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x2bfc5 - <unknown>!runtime.run$1
           7: 0x1e9de - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           8: 0x19db - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           9: 0x1e891 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          10: 0x1e608 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### debug/pe wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1056741941/main /tmp/tinygo1056741941/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo1056741941/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	debug/pe	0.000s
error: failed to link /tmp/tinygo1056741941/main: exit status 1
```


### debug/plan9obj wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestOpen
    open testdata/386-plan9-exec: errno 2
    open testdata/amd64-plan9-exec: errno 2
--- FAIL: TestOpen (0.00s)

```


### encoding/binary wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/16
=== RUN   TestUnexportedRead
panic: reflect: value is not settable
Error: failed to run main module `/tmp/tinygo2890979192/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3f21 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xbce3 - (reflect.Value).checkRO
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:56:8
           2: 0xc212 - (reflect.Value).SetInt
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:1132:11
           3: 0x74087 - (*encoding/binary.decoder).int32
                           at /usr/local/go/src/encoding/binary/binary.go:656:11              - (*encoding/binary.decoder).value
                           at /usr/local/go/src/encoding/binary/binary.go:656:25
           4: 0x73ce8 - (*encoding/binary.decoder).value
                           at /usr/local/go/src/encoding/binary/binary.go:636:12
           5: 0x72dd5 - encoding/binary.Read
           6: 0x7d027 - encoding/binary.TestUnexportedRead
                           at /usr/local/go/src/encoding/binary/binary_test.go:395:6
           7: 0x2b284 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x57af1 - (*testing.T).Run
           9: 0x2af8c - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x2b284 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x256d4 - <unknown>!runtime.run$1
          12: 0x182da - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x1a77 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x1818d - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          15: 0x17f05 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### encoding/gob wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo4016898583/main /tmp/tinygo4016898583/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo4016898583/main --output /tmp/tinygo4016898583/main
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $internal/wasi/cli/v0.2.0/environment.wasmimport_GetArguments
 (i64.const 0)
)
(on argument 0)
Fatal: error validating input
FAIL	encoding/gob	0.000s
error: wasm-opt failed: exit status 1
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
Error: failed to run main module `/tmp/tinygo2417657442/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x9e0f0 - (*encoding/xml.Decoder).unmarshalPath
                           at /usr/local/go/src/encoding/xml/read.go:711:56
           1: 0x9a265 - <unknown>!(*encoding/xml.Decoder).unmarshal
           2: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
           3: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
           4: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
           5: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
           6: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
           7: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
           8: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
           9: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          10: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          11: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          12: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          13: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          14: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          15: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          16: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          17: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          18: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          19: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          20: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          21: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          22: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          23: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          24: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          25: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          26: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          27: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          28: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          29: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          30: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          31: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          32: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          33: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          34: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          35: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          36: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          37: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          38: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          39: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          40: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          41: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          42: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          43: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          44: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          45: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          46: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          47: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          48: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          49: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          50: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          51: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          52: 0x9a324 - <unknown>!(*encoding/xml.Decoder).unmarshal
          53: 0x98174 - (*encoding/xml.Decoder).DecodeElement
          54: 0x97c28 - (*encoding/xml.Decoder).Decode
                           at /usr/local/go/src/encoding/xml/read.go:140:24
          55: 0x9790e - encoding/xml.Unmarshal
                           at /usr/local/go/src/encoding/xml/read.go:134:49
          56: 0xb404b - encoding/xml.TestCVE202228131
                           at /usr/local/go/src/encoding/xml/read_test.go:1106:18
          57: 0x38f49 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          58: 0x73321 - (*testing.T).Run
          59: 0x38c51 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          60: 0x38f49 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          61: 0x2ea2b - <unknown>!runtime.run$1
          62: 0x24bf0 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          63: 0x1bb5 - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          64: 0x24aa3 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          65: 0x248b5 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: memory fault at wasm address 0x5590001 in linear memory of size 0xa00000
    3: wasm trap: out of bounds memory access

```


### errors wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 21/56
=== RUN   TestAs
--- FAIL: TestAs (0.00s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0x45c50)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0x45c50) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_errno_2),_0x45c50)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_errno_2),_0x45c50) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0x45c50)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0x45c50) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0x45c50)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0x45c50) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0x45c70)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0x45c70) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0x45c60)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0x45c60) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_errno_2),_0x45c60)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_errno_2),_0x45c60) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0x45c60)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x45d10)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:0x2}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0x45c60) (0.00s)
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
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0x45c60)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x45d10)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:0x2}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0x45c60) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0x45c70)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0x45c70) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0x45c60)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x45d10)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:0x2}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0x45c60) (0.00s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0x45c50)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0x45c50) (0.00s)
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_errno_2),_0x45c50)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_errno_2),_0x45c50) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0x45c50)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0x45c50) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_errno_2),_0x45c60)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_errno_2),_0x45c60) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0x45c60)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x45d10)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:0x2}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0x45c60) (0.00s)
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)
=== RUN   TestAsValidation
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo552601843/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x32ba - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x10324 - (Go interface method)
                           at /usr/local/go/src/errors/wrap.go:102:8              - errors.As
                           at /usr/local/go/src/errors/wrap.go:109:24
           2: 0x75766 - errors_test.TestAsValidation$1
                           at /usr/local/go/src/errors/wrap_test.go:232:22
           3: 0x2aff1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x56c4a - (*testing.T).Run
           5: 0x755ab - errors_test.TestAsValidation
                           at /usr/local/go/src/errors/wrap_test.go:228:8
           6: 0x2aff1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x56c4a - (*testing.T).Run
           8: 0x2acf9 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x2aff1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x25fd3 - <unknown>!runtime.run$1
          11: 0x19153 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x197d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x19006 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x18d7d - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0x45c50)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0x45c50) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0x45c60)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0x45c60) (0.00s)
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo552601843/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x32ba - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x10324 - (Go interface method)
                           at /usr/local/go/src/errors/wrap.go:102:8              - errors.As
                           at /usr/local/go/src/errors/wrap.go:109:24
           2: 0x75766 - errors_test.TestAsValidation$1
                           at /usr/local/go/src/errors/wrap_test.go:232:22
           3: 0x2aff1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x56c4a - (*testing.T).Run
           5: 0x755ab - errors_test.TestAsValidation
                           at /usr/local/go/src/errors/wrap_test.go:228:8
           6: 0x2aff1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x56c4a - (*testing.T).Run
           8: 0x2acf9 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x2aff1 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x25fd3 - <unknown>!runtime.run$1
          11: 0x19153 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x197d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x19006 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x18d7d - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### flag wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo328933858/main /tmp/tinygo328933858/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo328933858/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	flag	0.000s
error: failed to link /tmp/tinygo328933858/main: exit status 1
```


### fmt wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestSprintf
    Sprintf("%#v", 0x2f) = "(func)(0x2f)" want "(func(*testing.T))(0xPTR)"
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo3523980529/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1a85f - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x6420 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x3ebb - (*reflect.rawType).isNamed
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:491:11
           3: 0x42a5 - <unknown>!(*reflect.rawType).String
           4: 0xc096 - (reflect.Value).String
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:506:33
           5: 0x1ce89 - (Go interface method)
                           at /usr/local/go/src/regexp/syntax/prog.go:125:17
           6: 0x78c3e - <unknown>!(*fmt.pp).handleMethods
           7: 0x7294c - <unknown>!(*fmt.pp).printArg
           8: 0x75519 - <unknown>!(*fmt.pp).doPrintf
           9: 0x253f7 - fmt.Sprintf
                           at /usr/local/go/src/fmt/print.go:239:12
          10: 0xa8ab6 - fmt_test.TestSprintf
                           at /usr/local/go/src/fmt/fmt_test.go:1095:15
          11: 0x4fae4 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x8dd98 - (*testing.T).Run
          13: 0x4f7ec - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          14: 0x4fae4 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          15: 0x2a7ca - <unknown>!runtime.run$1
          16: 0x1a1bc - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          17: 0x1b3d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          18: 0x1a06e - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          19: 0x19de5 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/build wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo4213528298/main /tmp/tinygo4213528298/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo4213528298/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	go/build	0.000s
error: failed to link /tmp/tinygo4213528298/main: exit status 1
```


### go/build/constraint wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 7/13
=== RUN   TestLex/5
panic: invalid syntax at ²
Error: failed to run main module `/tmp/tinygo3276406580/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3a1e - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x727b6 - (*go/build/constraint.exprParser).lex
                           at /usr/local/go/src/go/build/constraint/expr.go:339:8
           2: 0x74beb - go/build/constraint.lexHelp
                           at /usr/local/go/src/go/build/constraint/expr_test.go:108:7              - go/build/constraint.TestLex$1
                           at /usr/local/go/src/go/build/constraint/expr_test.go:77:24
           3: 0x3066d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x569f2 - (*testing.T).Run
           5: 0x749af - go/build/constraint.TestLex
                           at /usr/local/go/src/go/build/constraint/expr_test.go:73:8
           6: 0x3066d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x569f2 - (*testing.T).Run
           8: 0x30375 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x3066d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x2c537 - <unknown>!runtime.run$1
          11: 0x1f09f - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x1994 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x1ef51 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x1ecc8 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
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
Error: failed to run main module `/tmp/tinygo3276406580/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3a1e - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x727b6 - (*go/build/constraint.exprParser).lex
                           at /usr/local/go/src/go/build/constraint/expr.go:339:8
           2: 0x74beb - go/build/constraint.lexHelp
                           at /usr/local/go/src/go/build/constraint/expr_test.go:108:7              - go/build/constraint.TestLex$1
                           at /usr/local/go/src/go/build/constraint/expr_test.go:77:24
           3: 0x3066d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x569f2 - (*testing.T).Run
           5: 0x749af - go/build/constraint.TestLex
                           at /usr/local/go/src/go/build/constraint/expr_test.go:73:8
           6: 0x3066d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x569f2 - (*testing.T).Run
           8: 0x30375 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x3066d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x2c537 - <unknown>!runtime.run$1
          11: 0x1f09f - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x1994 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x1ef51 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x1ecc8 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
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

```


### go/constant wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestOps
panic: division by zero
Error: failed to run main module `/tmp/tinygo1174020519/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2cf4 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6a993 - (*math/big.Rat).SetFrac64
                           at /usr/local/go/src/math/big/rat.go:321:8              - math/big.NewRat
                           at /usr/local/go/src/math/big/rat.go:34:27
           2: 0x946bd - go/constant.BinaryOp
                           at /usr/local/go/src/go/constant/value.go:1136:19
           3: 0x96dd3 - go/constant.doOp
                           at /usr/local/go/src/go/constant/value_test.go:534:18              - go/constant.TestOps
                           at /usr/local/go/src/go/constant/value_test.go:345:14
           4: 0x2b497 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x2b18d - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x2b497 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x252b0 - <unknown>!runtime.run$1
           8: 0x145da - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1a9a - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1448c - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x14203 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/doc wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3416561733/main /tmp/tinygo3416561733/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo3416561733/main --output /tmp/tinygo3416561733/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo3416561733/main -o /tmp/tinygo3416561733/main
wasm-tools component new /tmp/tinygo3416561733/main -o /tmp/tinygo3416561733/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --wasm component-model --dir=/tmp::/tmp /tmp/tinygo3416561733/main -test.v
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo3416561733/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x46f4 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x52c5 - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0x3bafe - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0x327be - <unknown>!runtime.initAll
           4: 0x2c979 - <unknown>!runtime.run$1
           5: 0x1feee - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           6: 0x1d6c - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           7: 0x1fda0 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           8: 0x1fb17 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	go/doc	25.571s
```


### go/doc/comment wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo695869050/main /tmp/tinygo695869050/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo695869050/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	go/doc/comment	0.000s
error: failed to link /tmp/tinygo695869050/main: exit status 1
```


### go/format wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/4
=== RUN   TestNode
    open format_test.go: errno 2
    FailNow is incomplete, requires runtime.Goexit()
    format_test.go:1:1: expected 'package', found 'EOF'
    FailNow is incomplete, requires runtime.Goexit()
    len(dst) = 8, len(src) = 0
        src = ""
--- FAIL: TestNode (0.00s)
=== RUN   TestSource
    open format_test.go: errno 2
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestSource (0.00s)

```


### go/importer wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3226700009/main /tmp/tinygo3226700009/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo3226700009/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	go/importer	0.000s
error: failed to link /tmp/tinygo3226700009/main: exit status 1
```


### go/parser wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 3/3
=== RUN   TestErrors
    open testdata: errno 2
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestErrors (0.00s)
=== RUN   TestParse
    ParseFile(parser.go): open parser.go: errno 2
    FailNow is incomplete, requires runtime.Goexit()
    ParseFile(parser_test.go): open parser_test.go: errno 2
    FailNow is incomplete, requires runtime.Goexit()
    ParseFile(error_test.go): open error_test.go: errno 2
    FailNow is incomplete, requires runtime.Goexit()
    ParseFile(short_test.go): open short_test.go: errno 2
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestParse (0.00s)
=== RUN   TestParseFile
panic: (125112:0x000204f0)
Error: failed to run main module `/tmp/tinygo334631171/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x38c2 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x8fc6e - (*go/parser.parser).error
                           at /usr/local/go/src/go/parser/parser.go:277:9
           2: 0x99764 - (*go/parser.parser).parseIndexOrSliceOrInstance
                           at /usr/local/go/src/go/parser/parser.go:1587:12              - (*go/parser.parser).parsePrimaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1732:37
           3: 0xa4489 - (*go/parser.parser).parseUnaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1835:27
           4: 0x99f01 - (*go/parser.parser).parseBinaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1856:23
           5: 0x9a1e6 - (*go/parser.parser).parseBinaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1870:25
           6: 0xa3beb - (*go/parser.parser).parseExpr
                           at /usr/local/go/src/go/parser/parser.go:1881:26
           7: 0x977f2 - (*go/parser.parser).parseExprList
                           at /usr/local/go/src/go/parser/parser.go:502:33              - (*go/parser.parser).parseList
                           at /usr/local/go/src/go/parser/parser.go:514:25
           8: 0x92ec0 - <unknown>!(*go/parser.parser).parseValueSpec$bound
           9: 0x90952 - (*go/parser.parser).parseGenDecl
                           at /usr/local/go/src/go/parser/parser.go:2740:24
          10: 0x9129b - (*go/parser.parser).parseDecl
                           at /usr/local/go/src/go/parser/parser.go:2835:9
          11: 0x8e3ec - go/parser.ParseFile
                           at /usr/local/go/src/go/parser/parser.go:2886:38
          12: 0xab0f5 - go/parser.TestParseFile
                           at /usr/local/go/src/go/parser/parser_test.go:46:21
          13: 0x2fe2a - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          14: 0x77dec - (*testing.T).Run
          15: 0x2fb32 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          16: 0x2fe2a - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          17: 0x2608a - <unknown>!runtime.run$1
          18: 0x166ce - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          19: 0x1ac0 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          20: 0x16581 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          21: 0x162f9 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/printer wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 24/31
=== RUN   TestFiles
--- FAIL: TestFiles (0.01s)
=== RUN   TestFiles/empty.input
        open testdata/empty.input: errno 2
    --- FAIL: TestFiles/empty.input (0.00s)
=== RUN   TestFiles/comments.input
        open testdata/comments.input: errno 2
    --- FAIL: TestFiles/comments.input (0.00s)
=== RUN   TestFiles/comments.input#01
        open testdata/comments.input: errno 2
    --- FAIL: TestFiles/comments.input#01 (0.00s)
=== RUN   TestFiles/comments2.input
        open testdata/comments2.input: errno 2
    --- FAIL: TestFiles/comments2.input (0.00s)
=== RUN   TestFiles/alignment.input
        open testdata/alignment.input: errno 2
    --- FAIL: TestFiles/alignment.input (0.00s)
=== RUN   TestFiles/linebreaks.input
        open testdata/linebreaks.input: errno 2
    --- FAIL: TestFiles/linebreaks.input (0.00s)
=== RUN   TestFiles/expressions.input
        open testdata/expressions.input: errno 2
    --- FAIL: TestFiles/expressions.input (0.00s)
=== RUN   TestFiles/expressions.input#01
        open testdata/expressions.input: errno 2
    --- FAIL: TestFiles/expressions.input#01 (0.00s)
=== RUN   TestFiles/declarations.input
        open testdata/declarations.input: errno 2
    --- FAIL: TestFiles/declarations.input (0.00s)
=== RUN   TestFiles/statements.input
        open testdata/statements.input: errno 2
    --- FAIL: TestFiles/statements.input (0.00s)
=== RUN   TestFiles/slow.input
        open testdata/slow.input: errno 2
    --- FAIL: TestFiles/slow.input (0.00s)
=== RUN   TestFiles/complit.input
        open testdata/complit.input: errno 2
    --- FAIL: TestFiles/complit.input (0.01s)
=== RUN   TestFiles/go2numbers.input
        open testdata/go2numbers.input: errno 2
    --- FAIL: TestFiles/go2numbers.input (0.00s)
=== RUN   TestFiles/go2numbers.input#01
        open testdata/go2numbers.input: errno 2
    --- FAIL: TestFiles/go2numbers.input#01 (0.00s)
=== RUN   TestFiles/generics.input
        open testdata/generics.input: errno 2
    --- FAIL: TestFiles/generics.input (0.00s)
=== RUN   TestFiles/gobuild1.input
        open testdata/gobuild1.input: errno 2
    --- FAIL: TestFiles/gobuild1.input (0.00s)
=== RUN   TestFiles/gobuild2.input
        open testdata/gobuild2.input: errno 2
    --- FAIL: TestFiles/gobuild2.input (0.00s)
=== RUN   TestFiles/gobuild3.input
        open testdata/gobuild3.input: errno 2
    --- FAIL: TestFiles/gobuild3.input (0.00s)
=== RUN   TestFiles/gobuild4.input
        open testdata/gobuild4.input: errno 2
    --- FAIL: TestFiles/gobuild4.input (0.00s)
=== RUN   TestFiles/gobuild5.input
        open testdata/gobuild5.input: errno 2
    --- FAIL: TestFiles/gobuild5.input (0.00s)
=== RUN   TestFiles/gobuild6.input
        open testdata/gobuild6.input: errno 2
    --- FAIL: TestFiles/gobuild6.input (0.00s)
=== RUN   TestFiles/gobuild7.input
        open testdata/gobuild7.input: errno 2
    --- FAIL: TestFiles/gobuild7.input (0.00s)
=== RUN   TestFiles/empty.input
        open testdata/empty.input: errno 2
    --- FAIL: TestFiles/empty.input (0.00s)
=== RUN   TestFiles/expressions.input
        open testdata/expressions.input: errno 2
    --- FAIL: TestFiles/expressions.input (0.00s)
=== RUN   TestFiles/slow.input
        open testdata/slow.input: errno 2
    --- FAIL: TestFiles/slow.input (0.00s)
=== RUN   TestFiles/gobuild3.input
        open testdata/gobuild3.input: errno 2
    --- FAIL: TestFiles/gobuild3.input (0.00s)
=== RUN   TestFiles/gobuild4.input
        open testdata/gobuild4.input: errno 2
    --- FAIL: TestFiles/gobuild4.input (0.00s)
=== RUN   TestFiles/gobuild5.input
        open testdata/gobuild5.input: errno 2
    --- FAIL: TestFiles/gobuild5.input (0.00s)
=== RUN   TestFiles/gobuild6.input
        open testdata/gobuild6.input: errno 2
    --- FAIL: TestFiles/gobuild6.input (0.00s)
=== RUN   TestFiles/comments.input
        open testdata/comments.input: errno 2
    --- FAIL: TestFiles/comments.input (0.00s)
=== RUN   TestFiles/comments.input#01
        open testdata/comments.input: errno 2
    --- FAIL: TestFiles/comments.input#01 (0.00s)
=== RUN   TestFiles/comments2.input
        open testdata/comments2.input: errno 2
    --- FAIL: TestFiles/comments2.input (0.00s)
=== RUN   TestFiles/declarations.input
        open testdata/declarations.input: errno 2
    --- FAIL: TestFiles/declarations.input (0.00s)
=== RUN   TestFiles/statements.input
        open testdata/statements.input: errno 2
    --- FAIL: TestFiles/statements.input (0.00s)
=== RUN   TestFiles/go2numbers.input#01
        open testdata/go2numbers.input: errno 2
    --- FAIL: TestFiles/go2numbers.input#01 (0.00s)
=== RUN   TestFiles/expressions.input#01
        open testdata/expressions.input: errno 2
    --- FAIL: TestFiles/expressions.input#01 (0.00s)
=== RUN   TestFiles/go2numbers.input
        open testdata/go2numbers.input: errno 2
    --- FAIL: TestFiles/go2numbers.input (0.00s)
=== RUN   TestFiles/generics.input
        open testdata/generics.input: errno 2
    --- FAIL: TestFiles/generics.input (0.00s)
=== RUN   TestFiles/gobuild1.input
        open testdata/gobuild1.input: errno 2
    --- FAIL: TestFiles/gobuild1.input (0.00s)
=== RUN   TestFiles/gobuild7.input
        open testdata/gobuild7.input: errno 2
    --- FAIL: TestFiles/gobuild7.input (0.00s)
=== RUN   TestFiles/alignment.input
        open testdata/alignment.input: errno 2
    --- FAIL: TestFiles/alignment.input (0.00s)
=== RUN   TestFiles/linebreaks.input
        open testdata/linebreaks.input: errno 2
    --- FAIL: TestFiles/linebreaks.input (0.00s)
=== RUN   TestFiles/complit.input
        open testdata/complit.input: errno 2
    --- FAIL: TestFiles/complit.input (0.01s)
=== RUN   TestFiles/gobuild2.input
        open testdata/gobuild2.input: errno 2
    --- FAIL: TestFiles/gobuild2.input (0.00s)
=== RUN   TestBaseIndent
panic: open printer.go: errno 2
Error: failed to run main module `/tmp/tinygo1258715429/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x4576 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xdd6a4 - go/printer.TestBaseIndent
                           at /usr/local/go/src/go/printer/printer_test.go:542:8
           2: 0x2d103 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           3: 0x841d2 - (*testing.T).Run
           4: 0x2ce0b - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           5: 0x2d103 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x27893 - <unknown>!runtime.run$1
           7: 0x17d46 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           8: 0x1cec - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
           9: 0x17b22 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          10: 0x1780e - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/token wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1712296555/main /tmp/tinygo1712296555/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1712296555/main --output /tmp/tinygo1712296555/main
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $internal/wasi/cli/v0.2.0/environment.wasmimport_GetArguments
 (i64.const 0)
)
(on argument 0)
Fatal: error validating input
FAIL	go/token	0.000s
error: wasm-opt failed: exit status 1
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
Error: failed to run main module `/tmp/tinygo1484636106/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3516 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x6e478 - hash/crc32.archInitIEEE
                           at /usr/local/go/src/hash/crc32/crc32_otherarch.go:10:57
           2: 0x7235f - hash/crc32.TestArchIEEE
                           at /usr/local/go/src/hash/crc32/crc32_test.go:232:14
           3: 0x26134 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x54485 - (*testing.T).Run
           5: 0x25e3c - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x26134 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x1fd48 - <unknown>!runtime.run$1
           8: 0x136fa - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1a00 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x135b5 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x133c1 - wasi:cli/run@0.2.0#run
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
Error: failed to run main module `/tmp/tinygo541551391/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x4418 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x5754 - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0x1059fe - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0x10f8e1 - (*text/template.Template).Funcs
                           at /usr/local/go/src/text/template/template.go:181:15
           4: 0x138888 - (*html/template.escaper).commit
                           at /usr/local/go/src/html/template/escape.go:918:25              - html/template.escapeTemplate
                           at /usr/local/go/src/html/template/escape.go:40:17
           5: 0x13952a - (*html/template.Template).lookupAndEscapeTemplate
                           at /usr/local/go/src/html/template/template.go:163:23              - (*html/template.Template).ExecuteTemplate
                           at /usr/local/go/src/html/template/template.go:135:40
           6: 0x1428c7 - html/template.TestAddParseTreeHTML
                           at /usr/local/go/src/html/template/clone_test.go:25:29
           7: 0x57730 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x115dc1 - (*testing.T).Run
           9: 0x57438 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x57730 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x475ef - <unknown>!runtime.run$1
          12: 0x39acc - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x20b2 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x39986 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          15: 0x39791 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### image wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/3
=== RUN   TestNewXxxBadRectangle
panic: image: NewRGBA Rectangle has huge or negative dimensions
Error: failed to run main module `/tmp/tinygo2652857254/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x35d4 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x78263 - (image.Rectangle).Dx
                           at /usr/local/go/src/image/image.go:96:8              - image.pixelBufferLength
                           at /usr/local/go/src/image/image.go:94:47
           2: 0x765bc - image.NewRGBA
                           at /usr/local/go/src/image/image.go:229:42
           3: 0x84d22 - image.TestNewXxxBadRectangle$2
                           at /usr/local/go/src/image/image_test.go:108:39
           4: 0x84ec8 - image.TestNewXxxBadRectangle$1
                           at /usr/local/go/src/image/image_test.go:94:10
           5: 0x83cf0 - image.TestNewXxxBadRectangle
                           at /usr/local/go/src/image/image_test.go:138:16
           6: 0x35c69 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x3595f - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x35c69 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x2eef3 - <unknown>!runtime.run$1
          10: 0x21f92 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11: 0x1abd - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x21e45 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          13: 0x21bbd - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### image/color wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestSqDiff
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo3596140007/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x34a6 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x379b - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x6bb21 - (Go interface method)
           3: 0x6c93f - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48              - image/color.TestSqDiff
                           at /usr/local/go/src/image/color/color_test.go:44:28
           4: 0x26cf0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x269e6 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x26cf0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x20967 - <unknown>!runtime.run$1
           8: 0x138f1 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x198f - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x137a4 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x1351c - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### image/draw wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/9
=== RUN   TestSqDiff
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo3258198992/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3869 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x3b5e - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x8b04f - (Go interface method)
           3: 0x9d791 - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48              - image/draw.TestSqDiff
                           at /usr/local/go/src/image/draw/draw_test.go:807:28
           4: 0x3f207 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x3eefd - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x3f207 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x39300 - <unknown>!runtime.run$1
           8: 0x2aa02 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1aca - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x2a8b5 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x2a62d - wasi:cli/run@0.2.0#run
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
Failures/Tests: 6/28
=== RUN   TestReader
    basn0g01 open testdata/pngsuite/basn0g01.png: errno 2
    basn0g01-30 open testdata/pngsuite/basn0g01-30.png: errno 2
    basn0g02 open testdata/pngsuite/basn0g02.png: errno 2
    basn0g02-29 open testdata/pngsuite/basn0g02-29.png: errno 2
    basn0g04 open testdata/pngsuite/basn0g04.png: errno 2
    basn0g04-31 open testdata/pngsuite/basn0g04-31.png: errno 2
    basn0g08 open testdata/pngsuite/basn0g08.png: errno 2
    basn0g16 open testdata/pngsuite/basn0g16.png: errno 2
    basn2c08 open testdata/pngsuite/basn2c08.png: errno 2
    basn2c16 open testdata/pngsuite/basn2c16.png: errno 2
    basn3p01 open testdata/pngsuite/basn3p01.png: errno 2
    basn3p02 open testdata/pngsuite/basn3p02.png: errno 2
    basn3p04 open testdata/pngsuite/basn3p04.png: errno 2
    basn3p04-31i open testdata/pngsuite/basn3p04-31i.png: errno 2
    basn3p08 open testdata/pngsuite/basn3p08.png: errno 2
    basn3p08-trns open testdata/pngsuite/basn3p08-trns.png: errno 2
    basn4a08 open testdata/pngsuite/basn4a08.png: errno 2
    basn4a16 open testdata/pngsuite/basn4a16.png: errno 2
    basn6a08 open testdata/pngsuite/basn6a08.png: errno 2
    basn6a16 open testdata/pngsuite/basn6a16.png: errno 2
    ftbbn0g01 open testdata/pngsuite/ftbbn0g01.png: errno 2
    ftbbn0g02 open testdata/pngsuite/ftbbn0g02.png: errno 2
    ftbbn0g04 open testdata/pngsuite/ftbbn0g04.png: errno 2
    ftbbn2c16 open testdata/pngsuite/ftbbn2c16.png: errno 2
    ftbbn3p08 open testdata/pngsuite/ftbbn3p08.png: errno 2
    ftbgn2c16 open testdata/pngsuite/ftbgn2c16.png: errno 2
    ftbgn3p08 open testdata/pngsuite/ftbgn3p08.png: errno 2
    ftbrn2c08 open testdata/pngsuite/ftbrn2c08.png: errno 2
    ftbwn0g16 open testdata/pngsuite/ftbwn0g16.png: errno 2
    ftbwn3p08 open testdata/pngsuite/ftbwn3p08.png: errno 2
    ftbyn3p08 open testdata/pngsuite/ftbyn3p08.png: errno 2
    ftp0n0g08 open testdata/pngsuite/ftp0n0g08.png: errno 2
    ftp0n2c08 open testdata/pngsuite/ftp0n2c08.png: errno 2
    ftp0n3p08 open testdata/pngsuite/ftp0n3p08.png: errno 2
    ftp1n3p08 open testdata/pngsuite/ftp1n3p08.png: errno 2
--- FAIL: TestReader (0.00s)
=== RUN   TestReaderError
    decoding invalid-zlib.png: open testdata/invalid-zlib.png: errno 2, want zlib: invalid checksum
    decoding invalid-crc32.png: open testdata/invalid-crc32.png: errno 2, want invalid checksum
    decoding invalid-noend.png: open testdata/invalid-noend.png: errno 2, want unexpected EOF
    decoding invalid-trunc.png: open testdata/invalid-trunc.png: errno 2, want unexpected EOF
--- FAIL: TestReaderError (0.00s)
=== RUN   TestPalettedDecodeConfig
    basn3p01: open failed: open testdata/pngsuite/basn3p01.png: errno 2
    basn3p02: open failed: open testdata/pngsuite/basn3p02.png: errno 2
    basn3p04: open failed: open testdata/pngsuite/basn3p04.png: errno 2
    basn3p08: open failed: open testdata/pngsuite/basn3p08.png: errno 2
    basn3p08-trns: open failed: open testdata/pngsuite/basn3p08-trns.png: errno 2
--- FAIL: TestPalettedDecodeConfig (0.00s)
=== RUN   TestInterlaced
    open testdata/gray-gradient.png: errno 2
    FailNow is incomplete, requires runtime.Goexit()
    open testdata/gray-gradient.interlaced.png: errno 2
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestInterlaced (0.00s)
=== RUN   TestPaletted8OutOfRangePixel
    decoding invalid-palette.png: unexpected error open testdata/invalid-palette.png: errno 2
--- FAIL: TestPaletted8OutOfRangePixel (0.00s)
=== RUN   TestWriter
    basn0g01 open testdata/pngsuite/basn0g01.png: errno 2
    basn0g01-30 open testdata/pngsuite/basn0g01-30.png: errno 2
    basn0g02 open testdata/pngsuite/basn0g02.png: errno 2
    basn0g02-29 open testdata/pngsuite/basn0g02-29.png: errno 2
    basn0g04 open testdata/pngsuite/basn0g04.png: errno 2
    basn0g04-31 open testdata/pngsuite/basn0g04-31.png: errno 2
    basn0g08 open testdata/pngsuite/basn0g08.png: errno 2
    basn0g16 open testdata/pngsuite/basn0g16.png: errno 2
    basn2c08 open testdata/pngsuite/basn2c08.png: errno 2
    basn2c16 open testdata/pngsuite/basn2c16.png: errno 2
    basn3p01 open testdata/pngsuite/basn3p01.png: errno 2
    basn3p02 open testdata/pngsuite/basn3p02.png: errno 2
    basn3p04 open testdata/pngsuite/basn3p04.png: errno 2
    basn3p04-31i open testdata/pngsuite/basn3p04-31i.png: errno 2
    basn3p08 open testdata/pngsuite/basn3p08.png: errno 2
    basn3p08-trns open testdata/pngsuite/basn3p08-trns.png: errno 2
    basn4a08 open testdata/pngsuite/basn4a08.png: errno 2
    basn4a16 open testdata/pngsuite/basn4a16.png: errno 2
    basn6a08 open testdata/pngsuite/basn6a08.png: errno 2
    basn6a16 open testdata/pngsuite/basn6a16.png: errno 2
    ftbbn0g01 open testdata/pngsuite/ftbbn0g01.png: errno 2
    ftbbn0g02 open testdata/pngsuite/ftbbn0g02.png: errno 2
    ftbbn0g04 open testdata/pngsuite/ftbbn0g04.png: errno 2
    ftbbn2c16 open testdata/pngsuite/ftbbn2c16.png: errno 2
    ftbbn3p08 open testdata/pngsuite/ftbbn3p08.png: errno 2
    ftbgn2c16 open testdata/pngsuite/ftbgn2c16.png: errno 2
    ftbgn3p08 open testdata/pngsuite/ftbgn3p08.png: errno 2
    ftbrn2c08 open testdata/pngsuite/ftbrn2c08.png: errno 2
    ftbwn0g16 open testdata/pngsuite/ftbwn0g16.png: errno 2
    ftbwn3p08 open testdata/pngsuite/ftbwn3p08.png: errno 2
    ftbyn3p08 open testdata/pngsuite/ftbyn3p08.png: errno 2
    ftp0n0g08 open testdata/pngsuite/ftp0n0g08.png: errno 2
    ftp0n2c08 open testdata/pngsuite/ftp0n2c08.png: errno 2
    ftp0n3p08 open testdata/pngsuite/ftp0n3p08.png: errno 2
    ftp1n3p08 open testdata/pngsuite/ftp1n3p08.png: errno 2
--- FAIL: TestWriter (0.00s)

```


### index/suffixarray wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 4/11
=== RUN   TestNew64/ababab...
    --- PASS: TestNew64/ababab... (9.55s)
=== RUN   TestNew64/forcealloc
    --- PASS: TestNew64/forcealloc (1.19s)
=== RUN   TestNew64/exhaustive2
=== RUN   TestNew64
=== RUN   TestNew64/ababab...
    --- PASS: TestNew64/ababab... (9.55s)
=== RUN   TestNew64/forcealloc
    --- PASS: TestNew64/forcealloc (1.19s)
=== RUN   TestNew64/exhaustive2

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
--- FAIL: TestMultiReaderFreesExhaustedReaders (5.02s)

```


### io/fs wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/6
=== RUN   TestGlob
    Glob(`glob.go`) = []string(nil) want glob.go
    Glob(`gl?b.go`) = []string(nil) want glob.go
    Glob(`*/glob.go`) = []string(nil) want fs/glob.go
--- FAIL: TestGlob (0.01s)
=== RUN   TestCVE202230630
Error: failed to run main module `/tmp/tinygo2986869702/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x114e7 - path.Match
                           at /usr/local/go/src/path/match.go:37:6
           1: 0x4438b - (Go interface assert)
                           at /usr/local/go/src/io/fs/glob.go:49:25              - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:44:22
           2: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           3: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           4: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           5: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           6: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           7: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           8: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           9: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          10: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          11: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          12: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          13: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          14: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          15: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          16: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          17: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          18: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          19: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          20: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          21: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          22: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          23: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          24: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          25: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          26: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          27: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          28: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          29: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          30: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          31: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          32: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          33: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          34: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          35: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          36: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          37: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          38: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          39: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          40: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          41: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          42: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          43: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          44: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          45: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          46: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          47: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          48: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          49: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          50: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          51: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          52: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          53: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          54: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          55: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          56: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          57: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          58: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          59: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          60: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          61: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          62: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          63: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          64: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          65: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          66: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          67: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          68: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          69: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          70: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          71: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          72: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          73: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          74: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          75: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          76: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          77: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          78: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          79: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          80: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          81: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          82: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          83: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          84: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          85: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          86: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          87: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          88: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          89: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          90: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          91: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          92: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          93: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          94: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          95: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          96: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          97: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          98: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          99: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         100: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         101: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         102: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         103: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         104: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         105: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         106: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         107: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         108: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         109: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         110: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         111: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         112: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         113: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         114: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         115: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         116: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         117: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         118: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         119: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         120: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         121: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         122: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         123: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         124: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         125: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         126: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         127: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         128: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         129: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         130: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         131: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         132: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         133: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         134: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         135: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         136: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         137: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         138: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         139: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         140: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         141: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         142: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         143: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         144: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         145: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         146: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         147: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         148: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         149: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         150: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         151: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         152: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         153: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         154: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         155: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         156: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         157: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         158: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         159: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         160: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         161: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         162: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         163: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         164: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         165: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         166: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         167: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         168: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         169: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         170: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         171: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         172: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         173: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         174: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         175: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         176: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         177: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         178: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         179: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         180: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         181: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         182: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         183: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         184: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         185: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         186: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         187: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         188: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         189: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         190: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         191: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         192: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         193: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         194: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         195: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         196: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         197: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         198: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         199: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         200: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         201: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         202: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         203: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         204: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         205: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         206: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         207: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         208: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         209: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         210: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         211: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         212: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         213: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         214: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         215: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         216: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         217: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         218: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         219: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         220: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         221: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         222: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         223: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         224: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         225: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         226: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         227: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         228: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         229: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         230: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         231: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         232: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         233: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         234: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         235: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         236: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         237: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         238: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         239: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         240: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         241: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         242: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         243: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         244: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         245: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         246: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         247: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         248: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         249: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         250: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         251: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         252: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         253: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         254: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         255: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         256: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         257: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         258: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         259: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         260: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         261: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         262: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         263: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         264: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         265: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         266: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         267: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         268: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         269: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         270: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         271: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         272: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         273: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         274: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         275: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         276: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         277: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         278: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         279: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         280: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         281: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         282: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         283: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         284: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         285: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         286: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         287: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         288: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         289: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         290: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         291: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         292: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         293: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         294: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         295: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         296: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         297: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         298: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         299: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         300: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         301: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         302: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         303: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         304: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         305: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         306: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         307: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         308: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         309: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         310: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         311: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         312: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         313: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         314: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         315: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         316: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         317: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         318: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         319: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         320: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         321: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         322: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         323: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         324: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         325: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         326: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         327: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         328: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         329: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         330: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         331: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         332: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         333: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         334: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         335: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         336: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         337: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         338: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         339: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         340: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         341: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         342: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         343: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         344: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         345: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         346: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         347: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         348: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         349: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         350: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         351: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         352: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         353: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         354: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         355: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         356: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         357: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         358: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         359: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         360: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         361: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         362: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         363: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         364: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         365: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         366: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         367: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         368: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         369: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         370: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         371: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         372: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         373: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         374: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         375: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         376: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         377: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         378: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         379: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         380: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         381: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         382: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         383: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         384: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         385: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         386: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         387: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         388: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         389: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         390: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         391: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         392: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         393: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         394: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         395: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         396: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         397: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         398: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         399: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         400: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         401: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         402: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         403: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         404: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         405: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         406: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         407: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         408: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         409: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         410: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         411: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         412: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         413: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         414: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         415: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         416: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         417: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         418: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         419: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         420: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         421: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         422: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         423: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         424: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         425: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         426: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         427: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         428: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         429: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         430: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         431: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         432: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         433: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         434: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         435: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         436: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         437: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         438: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         439: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         440: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         441: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         442: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         443: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         444: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         445: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         446: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         447: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         448: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         449: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         450: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         451: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         452: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         453: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         454: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         455: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         456: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         457: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         458: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         459: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         460: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         461: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         462: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         463: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         464: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         465: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         466: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         467: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         468: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         469: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         470: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         471: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         472: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         473: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         474: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         475: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         476: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         477: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         478: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         479: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         480: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         481: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         482: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         483: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         484: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         485: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         486: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         487: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         488: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         489: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         490: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         491: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         492: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         493: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         494: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         495: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         496: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         497: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         498: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         499: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         500: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         501: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         502: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         503: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         504: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         505: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         506: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         507: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         508: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         509: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         510: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         511: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         512: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         513: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         514: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         515: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         516: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         517: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         518: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         519: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         520: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         521: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         522: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         523: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         524: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         525: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         526: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         527: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         528: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         529: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         530: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         531: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         532: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         533: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         534: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         535: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         536: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         537: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         538: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         539: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         540: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         541: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         542: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         543: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         544: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         545: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         546: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         547: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         548: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         549: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         550: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         551: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         552: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         553: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         554: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         555: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         556: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         557: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         558: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         559: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         560: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         561: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         562: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         563: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         564: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         565: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         566: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         567: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         568: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         569: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         570: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         571: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         572: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         573: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         574: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         575: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         576: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         577: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         578: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         579: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         580: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         581: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         582: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         583: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         584: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         585: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         586: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         587: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         588: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         589: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         590: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         591: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         592: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         593: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         594: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         595: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         596: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         597: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         598: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         599: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         600: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         601: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         602: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         603: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         604: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         605: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         606: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         607: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         608: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         609: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         610: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         611: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         612: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         613: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         614: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         615: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         616: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         617: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         618: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         619: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         620: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         621: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         622: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         623: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         624: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         625: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         626: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         627: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         628: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         629: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         630: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         631: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         632: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         633: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         634: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         635: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         636: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         637: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         638: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         639: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         640: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         641: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         642: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         643: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         644: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         645: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         646: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         647: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         648: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         649: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         650: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         651: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         652: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         653: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         654: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         655: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         656: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         657: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         658: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         659: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         660: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         661: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         662: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         663: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         664: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         665: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         666: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         667: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         668: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         669: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         670: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         671: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         672: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         673: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         674: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         675: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         676: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         677: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         678: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         679: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         680: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         681: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         682: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         683: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         684: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         685: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         686: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         687: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         688: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         689: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         690: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         691: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         692: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         693: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         694: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         695: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         696: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         697: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         698: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         699: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         700: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         701: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         702: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         703: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         704: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         705: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         706: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         707: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         708: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         709: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         710: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         711: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         712: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         713: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         714: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         715: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         716: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         717: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         718: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         719: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         720: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         721: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         722: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         723: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         724: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         725: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         726: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         727: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         728: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         729: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         730: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         731: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         732: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         733: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         734: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         735: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         736: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         737: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         738: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         739: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         740: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         741: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         742: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         743: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         744: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         745: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         746: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         747: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         748: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         749: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         750: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         751: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         752: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         753: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         754: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         755: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         756: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         757: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         758: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         759: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         760: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         761: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         762: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         763: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         764: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         765: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         766: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         767: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         768: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         769: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         770: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         771: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         772: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         773: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         774: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         775: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         776: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         777: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         778: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         779: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         780: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         781: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         782: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         783: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         784: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         785: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         786: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         787: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         788: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         789: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         790: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         791: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         792: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         793: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         794: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         795: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         796: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         797: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         798: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         799: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         800: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         801: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         802: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         803: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         804: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         805: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         806: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         807: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         808: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         809: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         810: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         811: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         812: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         813: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         814: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         815: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         816: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         817: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         818: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         819: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         820: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         821: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         822: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         823: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         824: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         825: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         826: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         827: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         828: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         829: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         830: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         831: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         832: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         833: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         834: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         835: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         836: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         837: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         838: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         839: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         840: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         841: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         842: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         843: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         844: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         845: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         846: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         847: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         848: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         849: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         850: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         851: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         852: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         853: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         854: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         855: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         856: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         857: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         858: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         859: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         860: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         861: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         862: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         863: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         864: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         865: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         866: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         867: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         868: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         869: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         870: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         871: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         872: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         873: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         874: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         875: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         876: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         877: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         878: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         879: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         880: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         881: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         882: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         883: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         884: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         885: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         886: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         887: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         888: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         889: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         890: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         891: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         892: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         893: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         894: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         895: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         896: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         897: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         898: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         899: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         900: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         901: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         902: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         903: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         904: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         905: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         906: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         907: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         908: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         909: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         910: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         911: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         912: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         913: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         914: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         915: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         916: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         917: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         918: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         919: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         920: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         921: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         922: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         923: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         924: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         925: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         926: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         927: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         928: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         929: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         930: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         931: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         932: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         933: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         934: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         935: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         936: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         937: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         938: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         939: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         940: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         941: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         942: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         943: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         944: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         945: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         946: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         947: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         948: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         949: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         950: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         951: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         952: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         953: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         954: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         955: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         956: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         957: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         958: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         959: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         960: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         961: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         962: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         963: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         964: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         965: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         966: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         967: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         968: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         969: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         970: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         971: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         972: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         973: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         974: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         975: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         976: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         977: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         978: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         979: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         980: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         981: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         982: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         983: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         984: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         985: 0x444e4 - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         986: 0x44098 - io/fs.Glob
                           at /usr/local/go/src/io/fs/glob.go:34:22
         987: 0x89e73 - <unknown>!io/fs_test.TestCVE202230630
         988: 0x2a248 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         989: 0x6e14f - (*testing.T).Run
         990: 0x29f50 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
         991: 0x2a248 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         992: 0x25063 - <unknown>!runtime.run$1
         993: 0x19672 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
         994: 0x1a35 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
         995: 0x19525 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
         996: 0x1929d - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: memory fault at wasm address 0x10000002c in linear memory of size 0x60000
    3: wasm trap: out of bounds memory access

```


### io/ioutil wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestReadFile
    ReadFile ioutil_test.go: open ioutil_test.go: errno 2
    FailNow is incomplete, requires runtime.Goexit()
    Stat "ioutil_test.go" (looking for size 0): stat ioutil_test.go: errno 2
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo2116268288/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x13506 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x5e4a - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x398b3 - (Go interface method)
           3: 0x73c58 - io/ioutil_test.checkSize
                           at /usr/local/go/src/io/ioutil/ioutil_test.go:19:11              - io/ioutil_test.TestReadFile
                           at /usr/local/go/src/io/ioutil/ioutil_test.go:39:11
           4: 0x26169 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x58f9b - (*testing.T).Run
           6: 0x25e71 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x26169 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x1ffd3 - <unknown>!runtime.run$1
           9: 0x12e64 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x199e - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x12d17 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x12a8f - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

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
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/09 12:29:52.059290 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/09 12:29:52.060818 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/09 12:29:52.061009 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/04/09 12:29:52.061217 ???:0: hello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/09 12:29:52.061426 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/09 12:29:52.061617 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/09 12:29:52.061811 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/04/09 12:29:52.062020 ???:0: XXXhello 23 world"
--- FAIL: TestAll (0.00s)

```


### log/slog wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2251195420/main /tmp/tinygo2251195420/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo2251195420/main --output /tmp/tinygo2251195420/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo2251195420/main -o /tmp/tinygo2251195420/main
wasm-tools component new /tmp/tinygo2251195420/main -o /tmp/tinygo2251195420/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --wasm component-model --dir=/tmp::/tmp /tmp/tinygo2251195420/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo2251195420/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x4152 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x25f21 - testing/slogtest.withSource
                           at /usr/local/go/src/testing/slogtest/slogtest.go:362:8
           2: 0x22ee4 - <unknown>!runtime.initAll
           3: 0x1f0d1 - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:24:10
           4: 0xebc9 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           5: 0x1af4 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x1efd4 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11
           7: 0x163d6 - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11
           8: 0x16353 - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           9: 0x162df - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	log/slog	5.863s
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
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1968095263/main /tmp/tinygo1968095263/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo1968095263/main.o: undefined symbol: maps.clone
wasm-ld: error: /tmp/tinygo1968095263/main.o: undefined symbol: maps.clone
failed to run tool: wasm-ld
FAIL	maps	0.000s
error: failed to link /tmp/tinygo1968095263/main: exit status 1
```


### math/bits wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/12
=== RUN   TestAdd64OverflowPanic
panic: overflow
Error: failed to run main module `/tmp/tinygo2148973279/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2ac2 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x71493 - math/bits_test.TestAdd64OverflowPanic$1
                           at /usr/local/go/src/math/bits/bits_test.go:816:10
           2: 0x715ad - math/bits_test.TestAdd64OverflowPanic$7
                           at /usr/local/go/src/math/bits/bits_test.go:860:28
           3: 0x716d8 - math/bits_test.TestAdd64OverflowPanic$6
                           at /usr/local/go/src/math/bits/bits_test.go:856:5
           4: 0x70f81 - math/bits_test.TestAdd64OverflowPanic
                           at /usr/local/go/src/math/bits/bits_test.go:860:14
           5: 0x266c9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x263bf - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x266c9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x203c7 - <unknown>!runtime.run$1
           9: 0x1341f - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1aaf - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x132d2 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x1304a - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### math/rand wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1621711257/main /tmp/tinygo1621711257/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo1621711257/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	math/rand	0.000s
error: failed to link /tmp/tinygo1621711257/main: exit status 1
```


### math/rand/v2 wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1997921050/main /tmp/tinygo1997921050/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo1997921050/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: /tmp/tinygo1997921050/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: /tmp/tinygo1997921050/main.o: undefined symbol: internal/chacha8rand.block
failed to run tool: wasm-ld
FAIL	math/rand/v2	0.000s
error: failed to link /tmp/tinygo1997921050/main: exit status 1
```


### mime wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/14
=== RUN   TestTypeByExtension
    TypeByExtension(".T1") = "", want "application/test"
    TypeByExtension(".t2") = "", want "text/test; charset=utf-8"
--- FAIL: TestTypeByExtension (0.01s)
=== RUN   TestTypeByExtension_LocalData
panic: runtime error: deadlocked: no event source
Error: failed to run main module `/tmp/tinygo1794416724/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x272e4 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0xdc5a - runtime.runtimePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:72:16
           2: 0x26cc1 - runtime.waitForEvents
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/wait_other.go:6:14
           3: 0x26b21 - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:199:18              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           4: 0x2686d - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### mime/multipart wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/7
=== RUN   TestReadForm_NonFileMaxMemory

```


### mime/quotedprintable wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3350130507/main /tmp/tinygo3350130507/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo3350130507/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	mime/quotedprintable	0.000s
error: failed to link /tmp/tinygo3350130507/main: exit status 1
```


### net/netip wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2445320316/main /tmp/tinygo2445320316/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo2445320316/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	net/netip	0.000s
error: failed to link /tmp/tinygo2445320316/main: exit status 1
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
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2121098864/main /tmp/tinygo2121098864/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo2121098864/main --output /tmp/tinygo2121098864/main
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $internal/wasi/cli/v0.2.0/environment.wasmimport_GetArguments
 (i64.const 0)
)
(on argument 0)
Fatal: error validating input
FAIL	net/url	0.000s
error: wasm-opt failed: exit status 1
```


### os wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 2/37
=== RUN   TestChdir
    Mkdir(_os_test_TestChDir, 0755) returned mkdir _os_test_TestChDir: errno 2
    Chdir _os_test_TestChDir: chdir _os_test_TestChDir: errno 2
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestChdir (0.00s)
=== RUN   TestWriteAtInAppendMode
    chtmpdir: chdir /home/vscode/.cache/tinygo/goroot-7771ff56e2b2aca7670dfb860832ee7c69eec9c2a77042409156214d6a23c8db/src/os: errno 2
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestWriteAtInAppendMode (0.00s)

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
    Glob(`match.go`) = []string(nil) want match.go
    Glob(`mat?h.go`) = []string(nil) want match.go
    Glob(`../*/match.go`) = []string(nil) want ../filepath/match.go
--- FAIL: TestGlob (0.13s)
=== RUN   TestCVE202230632
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo701660058/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1a5a8 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x6312 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0xa659 - runtime.hashmapNext
           3: 0x3464a - syscall.findPreopenForPath
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/libc_wasip2.go:876:6
           4: 0x36632 - lstat
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/libc_wasip2.go:709:36
           5: 0x398e1 - syscall.Lstat
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/syscall_libc_wasi.go:383:17
           6: 0x44ac6 - os.lstatNolog$1
                           at /workspaces/dc-wasm-go/tinygo/src/os/stat_unix.go:44:42
           7: 0x44c8f - os.ignoringEINTR
                           at /workspaces/dc-wasm-go/tinygo/src/os/file_anyos.go:157:6
           8: 0x4482f - os.lstatNolog
                           at /workspaces/dc-wasm-go/tinygo/src/os/stat_unix.go:43:22              - os.Lstat
                           at /workspaces/dc-wasm-go/tinygo/src/os/stat.go:18:19
           9: 0x7e281 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:258:23
          10: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          11: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          12: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          13: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          14: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          15: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          16: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          17: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          18: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          19: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          20: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          21: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          22: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          23: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          24: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          25: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          26: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          27: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          28: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          29: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          30: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          31: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          32: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          33: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          34: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          35: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          36: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          37: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          38: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          39: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          40: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          41: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          42: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          43: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          44: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          45: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          46: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          47: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          48: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          49: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          50: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          51: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          52: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          53: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          54: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          55: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          56: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          57: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          58: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          59: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          60: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          61: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          62: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          63: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          64: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          65: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          66: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          67: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          68: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          69: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          70: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          71: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          72: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          73: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          74: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          75: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          76: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          77: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          78: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          79: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          80: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          81: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          82: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          83: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          84: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          85: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          86: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          87: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          88: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          89: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          90: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          91: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          92: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          93: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          94: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          95: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          96: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          97: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          98: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          99: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         100: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         101: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         102: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         103: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         104: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         105: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         106: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         107: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         108: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         109: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         110: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         111: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         112: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         113: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         114: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         115: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         116: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         117: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         118: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         119: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         120: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         121: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         122: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         123: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         124: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         125: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         126: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         127: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         128: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         129: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         130: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         131: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         132: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         133: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         134: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         135: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         136: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         137: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         138: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         139: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         140: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         141: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         142: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         143: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         144: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         145: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         146: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         147: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         148: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         149: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         150: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         151: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         152: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         153: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         154: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         155: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         156: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         157: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         158: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         159: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         160: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         161: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         162: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         163: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         164: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         165: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         166: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         167: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         168: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         169: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         170: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         171: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         172: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         173: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         174: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         175: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         176: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         177: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         178: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         179: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         180: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         181: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         182: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         183: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         184: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         185: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         186: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         187: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         188: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         189: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         190: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         191: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         192: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         193: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         194: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         195: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         196: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         197: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         198: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         199: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         200: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         201: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         202: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         203: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         204: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         205: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         206: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         207: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         208: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         209: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         210: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         211: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         212: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         213: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         214: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         215: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         216: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         217: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         218: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         219: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         220: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         221: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         222: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         223: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         224: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         225: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         226: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         227: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         228: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         229: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         230: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         231: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         232: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         233: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         234: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         235: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         236: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         237: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         238: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         239: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         240: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         241: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         242: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         243: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         244: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         245: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         246: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         247: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         248: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         249: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         250: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         251: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         252: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         253: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         254: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         255: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         256: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         257: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         258: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         259: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         260: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         261: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         262: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         263: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         264: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         265: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         266: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         267: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         268: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         269: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         270: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         271: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         272: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         273: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         274: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         275: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         276: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         277: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         278: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         279: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         280: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         281: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         282: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         283: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         284: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         285: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         286: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         287: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         288: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         289: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         290: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         291: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         292: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         293: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         294: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         295: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         296: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         297: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         298: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         299: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         300: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         301: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         302: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         303: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         304: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         305: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         306: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         307: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         308: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         309: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         310: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         311: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         312: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         313: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         314: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         315: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         316: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         317: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         318: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         319: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         320: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         321: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         322: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         323: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         324: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         325: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         326: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         327: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         328: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         329: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         330: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         331: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         332: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         333: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         334: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         335: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         336: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         337: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         338: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         339: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         340: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         341: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         342: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         343: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         344: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         345: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         346: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         347: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         348: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         349: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         350: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         351: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         352: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         353: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         354: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         355: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         356: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         357: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         358: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         359: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         360: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         361: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         362: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         363: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         364: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         365: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         366: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         367: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         368: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         369: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         370: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         371: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         372: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         373: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         374: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         375: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         376: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         377: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         378: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         379: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         380: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         381: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         382: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         383: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         384: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         385: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         386: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         387: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         388: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         389: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         390: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         391: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         392: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         393: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         394: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         395: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         396: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         397: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         398: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         399: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         400: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         401: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         402: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         403: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         404: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         405: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         406: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         407: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         408: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         409: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         410: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         411: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         412: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         413: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         414: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         415: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         416: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         417: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         418: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         419: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         420: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         421: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         422: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         423: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         424: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         425: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         426: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         427: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         428: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         429: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         430: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         431: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         432: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         433: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         434: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         435: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         436: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         437: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         438: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         439: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         440: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         441: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         442: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         443: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         444: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         445: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         446: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         447: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         448: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         449: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         450: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         451: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         452: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         453: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         454: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         455: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         456: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         457: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         458: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         459: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         460: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         461: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         462: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         463: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         464: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         465: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         466: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         467: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         468: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         469: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         470: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         471: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         472: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         473: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         474: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         475: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         476: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         477: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         478: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         479: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         480: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         481: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         482: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         483: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         484: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         485: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         486: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         487: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         488: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         489: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         490: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         491: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         492: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         493: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         494: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         495: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         496: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         497: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         498: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         499: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         500: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         501: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         502: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         503: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         504: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         505: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         506: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         507: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         508: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         509: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         510: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         511: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         512: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         513: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         514: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         515: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         516: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         517: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         518: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         519: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         520: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         521: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         522: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         523: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         524: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         525: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         526: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         527: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         528: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         529: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         530: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         531: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         532: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         533: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         534: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         535: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         536: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         537: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         538: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         539: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         540: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         541: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         542: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         543: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         544: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         545: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         546: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         547: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         548: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         549: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         550: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         551: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         552: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         553: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         554: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         555: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         556: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         557: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         558: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         559: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         560: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         561: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         562: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         563: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         564: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         565: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         566: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         567: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         568: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         569: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         570: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         571: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         572: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         573: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         574: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         575: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         576: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         577: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         578: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         579: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         580: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         581: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         582: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         583: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         584: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         585: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         586: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         587: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         588: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         589: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         590: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         591: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         592: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         593: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         594: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         595: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         596: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         597: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         598: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         599: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         600: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         601: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         602: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         603: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         604: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         605: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         606: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         607: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         608: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         609: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         610: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         611: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         612: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         613: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         614: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         615: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         616: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         617: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         618: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         619: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         620: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         621: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         622: 0x7e0d4 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         623: 0x7dd5f - path/filepath.Glob
                           at /usr/local/go/src/path/filepath/match.go:243:22
         624: 0x84303 - path/filepath_test.TestCVE202230632
                           at /usr/local/go/src/path/filepath/match_test.go:162:16
         625: 0x2d609 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         626: 0x63c66 - (*testing.T).Run
         627: 0x2d311 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
         628: 0x2d609 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         629: 0x28659 - <unknown>!runtime.run$1
         630: 0x19f06 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
         631: 0x1aa8 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
         632: 0x19db9 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
         633: 0x19b31 - wasi:cli/run@0.2.0#run
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
Error: failed to run main module `/tmp/tinygo1226919917/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3aec - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x2b718 - (*regexp/syntax.parser).checkLimits
                           at /usr/local/go/src/regexp/syntax/parse.go:163:8
           2: 0x2af40 - (*regexp/syntax.parser).push
           3: 0x3483b - regexp/syntax.parse
                           at /usr/local/go/src/regexp/syntax/parse.go:1063:9              - regexp/syntax.Parse
                           at /usr/local/go/src/regexp/syntax/parse.go:889:14
           4: 0x49ca3 - regexp.compile
                           at /usr/local/go/src/regexp/regexp.go:172:25
           5: 0x82d6f - regexp.Compile
                           at /usr/local/go/src/regexp/regexp.go:135:16
           6: 0x8992c - regexp.compileTest
                           at /usr/local/go/src/regexp/all_test.go:56:20
           7: 0x8a115 - regexp.TestBadCompile
                           at /usr/local/go/src/regexp/all_test.go:76:14
           8: 0x4d8de - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x74ac7 - (*testing.T).Run
          10: 0x4d5e6 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          11: 0x4d8de - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x4870e - <unknown>!runtime.run$1
          13: 0x3b55a - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          14: 0x1b0a - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          15: 0x3b40d - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          16: 0x3b185 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### regexp/syntax wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/8
=== RUN   TestParseInvalidRegexps
panic: expression nests too deeply
Error: failed to run main module `/tmp/tinygo2001974192/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3485 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x5df22 - (*regexp/syntax.parser).checkHeight
                           at /usr/local/go/src/regexp/syntax/parse.go:270:8
           2: 0x5c86d - (*regexp/syntax.parser).checkLimits
                           at /usr/local/go/src/regexp/syntax/parse.go:166:15
           3: 0x5c053 - (*regexp/syntax.parser).push
           4: 0x65011 - regexp/syntax.parse
                           at /usr/local/go/src/regexp/syntax/parse.go:1441:7              - regexp/syntax.Parse
                           at /usr/local/go/src/regexp/syntax/parse.go:889:14
           5: 0x6c573 - regexp/syntax.TestParseInvalidRegexps
                           at /usr/local/go/src/regexp/syntax/parse_test.go:527:22
           6: 0x2d1a3 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x2ce99 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x2d1a3 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x276e4 - <unknown>!runtime.run$1
          10: 0x1a83f - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11: 0x196e - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x1a6f1 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          13: 0x1a468 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### slices wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3569110429/main /tmp/tinygo3569110429/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo3569110429/main --output /tmp/tinygo3569110429/main
FAIL	slices	0.000s
error: wasm-opt failed: signal: killed
```


### strconv wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/29
=== RUN   TestFormatComplexInvalidBitSize
panic: invalid bitSize
Error: failed to run main module `/tmp/tinygo3383893242/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3ec0 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x55b1d - strconv.FormatComplex
                           at /usr/local/go/src/strconv/ctoa.go:16:8
           2: 0x9f96f - strconv_test.TestFormatComplexInvalidBitSize
                           at /usr/local/go/src/strconv/ctoa_test.go:52:19
           3: 0x376d6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x704ce - (*testing.T).Run
           5: 0x373de - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x376d6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x23771 - <unknown>!runtime.run$1
           8: 0x16d57 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1bcd - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x16c0a - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x16982 - wasi:cli/run@0.2.0#run
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
Error: failed to run main module `/tmp/tinygo3746110948/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3f97 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x42554 - (*strings.Builder).Grow
                           at /usr/local/go/src/strings/builder.go:80:8
           2: 0x88ef2 - strings_test.TestBuilderGrow
                           at /usr/local/go/src/strings/builder_test.go:120:8
           3: 0x2f5f6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x6df78 - (*testing.T).Run
           5: 0x2f2fe - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x2f5f6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x28ed5 - <unknown>!runtime.run$1
           8: 0x1aad1 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1cca - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1a98c - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x1a798 - wasi:cli/run@0.2.0#run
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
--- FAIL: TestStoreLoadSeqCst32 (0.01s)
=== RUN   TestStoreLoadSeqCst64
    Skipping test on 1 processor machine
    SkipNow is incomplete, requires runtime.Goexit()
--- FAIL: TestStoreLoadSeqCst64 (0.01s)
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
--- FAIL: TestUnaligned64 (1.50s)
=== RUN   TestNilDeref
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo4145075269/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x150b5 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x1d10 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:150:16
           2: 0x84b31 - (*sync/atomic.Int32).CompareAndSwap
                           at /usr/local/go/src/sync/atomic/type.go:84:32              - sync/atomic_test.TestNilDeref$2
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2461:40
           3: 0x83f8e - sync/atomic_test.TestNilDeref$59
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2525:5              - sync/atomic_test.TestNilDeref
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2526:4
           4: 0x28375 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x56df1 - (*testing.T).Run
           6: 0x2807d - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x28375 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x21e1e - <unknown>!runtime.run$1
           9: 0x14a13 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1c5f - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          11: 0x148c7 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x146da - wasi:cli/run@0.2.0#run
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
Error: failed to run main module `/tmp/tinygo2777802267/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1bd58 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:87:7
           1: 0x240f - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:160:16
           2: 0x6a801 - syscall.Munmap
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/syscall_libc.go:238:42              - syscall_test.TestMmap
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/mmap_unix_test.go:19:26
           3: 0x2e1b2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x2dea8 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           5: 0x2e1b2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x284de - <unknown>!runtime.run$1
           7: 0x1b6b5 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           8: 0x1916 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           9: 0x1b567 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          10: 0x1b2de - wasi:cli/run@0.2.0#run
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
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestSymlink52912456: errno 52

```


### testing/quick wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/1
=== RUN   TestCheckEqual
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo3967173552/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x353c - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x3831 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x6b9fa - (Go interface method)
           3: 0x6bbf6 - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48
           4: 0x6c201 - testing/quick.TestCheckEqual
                           at /usr/local/go/src/testing/quick/quick_test.go:163:34
           5: 0x27bf5 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x278eb - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x27bf5 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x219c4 - <unknown>!runtime.run$1
           9: 0x14950 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1a25 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x14802 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x14579 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### testing/slogtest wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo883375825/main /tmp/tinygo883375825/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo883375825/main --output /tmp/tinygo883375825/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo883375825/main -o /tmp/tinygo883375825/main
wasm-tools component new /tmp/tinygo883375825/main -o /tmp/tinygo883375825/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --wasm component-model --dir=/tmp::/tmp /tmp/tinygo883375825/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo883375825/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x331b - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x19478 - testing/slogtest.withSource
                           at /usr/local/go/src/testing/slogtest/slogtest.go:362:8
           2: 0x1772e - <unknown>!runtime.initAll
           3: 0x16d61 - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:24:10
           4: 0xb74f - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           5: 0x1841 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x16c64 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11
           7: 0xcad0 - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11
           8: 0xca4e - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           9: 0xc9db - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	testing/slogtest	5.244s
```


### text/tabwriter wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/2
=== RUN   TestPanicDuringFlush
panic: cannot write
Error: failed to run main module `/tmp/tinygo471576333/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x36bf - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0xd594 - (text/tabwriter_test.panicWriter).Write
                           at /usr/local/go/src/text/tabwriter/tabwriter_test.go:622:7
           2: 0xbdfd - <unknown>!interface:{Write:func:{slice:basic:uint8}{basic:int,named:error}}.Write$invoke
           3: 0xef13 - (*text/tabwriter.Writer).write0
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:251:26
           4: 0xeaf0 - (*text/tabwriter.Writer).writeLines
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:318:14
           5: 0xdf83 - (*text/tabwriter.Writer).format
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:405:21
           6: 0xd8b1 - (*text/tabwriter.Writer).flushNoDefers
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:513:10
           7: 0xd6e0 - (*text/tabwriter.Writer).flush
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:495:17              - (*text/tabwriter.Writer).Flush
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:488:16
           8: 0x6e9f2 - text/tabwriter_test.TestPanicDuringFlush
                           at /usr/local/go/src/text/tabwriter/tabwriter_test.go:643:9
           9: 0x29307 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x28ffd - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          11: 0x29307 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x22e9f - <unknown>!runtime.run$1
          13: 0x15cf3 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          14: 0x1965 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          15: 0x15ba6 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          16: 0x1591e - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### text/template wasip2/wasm

[🔝](#summary) build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo371072220/main /tmp/tinygo371072220/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc /home/vscode/.cache/tinygo/wasmbuiltins-wasm32-unknown-wasi-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo371072220/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	text/template	0.000s
error: failed to link /tmp/tinygo371072220/main: exit status 1
```


### text/template/parse wasip2/wasm

[🔝](#summary) failure

```text
Failures/Tests: 1/6
=== RUN   TestNumberParse
panic: (97652:0x00049b80)
Error: failed to run main module `/tmp/tinygo945136085/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3b0c - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:59:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:65:7
           1: 0x574bd - (*fmt.ss).error
                           at /usr/local/go/src/fmt/scan.go:240:7
           2: 0x58ad6 - (*fmt.ss).accept
                           at /usr/local/go/src/fmt/scan.go:750:10              - (*fmt.ss).complexTokens
                           at /usr/local/go/src/fmt/scan.go:755:14              - (*fmt.ss).scanComplex
                           at /usr/local/go/src/fmt/scan.go:816:33
           3: 0x5a983 - <unknown>!fmt.Sscan
           4: 0x90e54 - text/template/parse.TestNumberParse
                           at /usr/local/go/src/text/template/parse/parse_test.go:99:23
           5: 0x2be1c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x62649 - (*testing.T).Run
           7: 0x2bb24 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x2be1c - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x263e7 - <unknown>!runtime.run$1
          10: 0x15acc - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11: 0x1a6d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x1597f - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          13: 0x156f7 - wasi:cli/run@0.2.0#run
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

