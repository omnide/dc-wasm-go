
---
title: Packages supported by TinyGo
---

This table shows test status for all Go standard library packages, including the
counts of the tests that were run along with failures/errors. Error messages 
from build errors and test failures are linked below the table.

Note that the fact tests built and passed, does not mean that all functions and types in the program can be used. For example, sometimes using some functions or types of the package will still trigger compiler errors.

Test results are for /.

Icon | Description |
--- | --- |
<span style="color: green">✔</span> | Tests pass |
<span style="color: red">✗</span> | Build error |
<span style="color: yellow">∅</span> | No tests |
<span style="color: orange">⛆</span> | Test failures |

Package | Status | Tests | Failures | Status | Tests | Failures |
--- | --- | --- | --- | --- | --- | --- |
&nbsp; | linux/arm64 ||| wasi/wasm |||
archive/tar |[<span style="color: red">✗</span>](#archive-tar-linux-arm64) | 0 | [1](#archive-tar-linux-arm64) |[<span style="color: red">✗</span>](#archive-tar-wasi-wasm) | 0 | [1](#archive-tar-wasi-wasm) |
archive/zip |<span style="color: yellow">∅</span> | 0 | 0 |&nbsp; | &nbsp; | &nbsp; |
bufio |[<span style="color: orange">⛆</span>](#bufio-linux-arm64) | 81 | [1](#bufio-linux-arm64) |[<span style="color: orange">⛆</span>](#bufio-wasi-wasm) | 42 | [2](#bufio-wasi-wasm) |
bytes |<span style="color: green">✔</span> | 91 | 0 |[<span style="color: orange">⛆</span>](#bytes-wasi-wasm) | 1 | [1](#bytes-wasi-wasm) |
cmp |<span style="color: green">✔</span> | 4 | 0 |<span style="color: green">✔</span> | 4 | 0 |
compress/bzip2 |<span style="color: green">✔</span> | 4 | 0 |<span style="color: green">✔</span> | 4 | 0 |
compress/flate |<span style="color: green">✔</span> | 64 | 0 |[<span style="color: orange">⛆</span>](#compress-flate-wasi-wasm) | 24 | [2](#compress-flate-wasi-wasm) |
compress/gzip |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
compress/lzw |<span style="color: green">✔</span> | 17 | 0 |<span style="color: green">✔</span> | 17 | 0 |
compress/zlib |<span style="color: green">✔</span> | 6 | 0 |<span style="color: green">✔</span> | 6 | 0 |
container/heap |<span style="color: green">✔</span> | 7 | 0 |<span style="color: green">✔</span> | 7 | 0 |
container/list |<span style="color: green">✔</span> | 10 | 0 |<span style="color: green">✔</span> | 10 | 0 |
container/ring |<span style="color: green">✔</span> | 8 | 0 |<span style="color: green">✔</span> | 8 | 0 |
context |[<span style="color: red">✗</span>](#context-linux-arm64) | 0 | [1](#context-linux-arm64) |[<span style="color: red">✗</span>](#context-wasi-wasm) | 0 | [1](#context-wasi-wasm) |
crypto |[<span style="color: red">✗</span>](#crypto-linux-arm64) | 0 | [1](#crypto-linux-arm64) |[<span style="color: orange">⛆</span>](#crypto-wasi-wasm) | 1 | [1](#crypto-wasi-wasm) |
crypto/aes |[<span style="color: red">✗</span>](#crypto-aes-linux-arm64) | 0 | [1](#crypto-aes-linux-arm64) |[<span style="color: orange">⛆</span>](#crypto-aes-wasi-wasm) | 9 | [1](#crypto-aes-wasi-wasm) |
crypto/cipher |[<span style="color: red">✗</span>](#crypto-cipher-linux-arm64) | 0 | [1](#crypto-cipher-linux-arm64) |[<span style="color: orange">⛆</span>](#crypto-cipher-wasi-wasm) | 5 | [1](#crypto-cipher-wasi-wasm) |
crypto/des |<span style="color: green">✔</span> | 18 | 0 |<span style="color: green">✔</span> | 18 | 0 |
crypto/dsa |<span style="color: green">✔</span> | 4 | 0 |[<span style="color: red">✗</span>](#crypto-dsa-wasi-wasm) | 0 | [1](#crypto-dsa-wasi-wasm) |
crypto/ecdh |[<span style="color: red">✗</span>](#crypto-ecdh-linux-arm64) | 0 | [1](#crypto-ecdh-linux-arm64) |[<span style="color: red">✗</span>](#crypto-ecdh-wasi-wasm) | 0 | [1](#crypto-ecdh-wasi-wasm) |
crypto/ecdsa |[<span style="color: red">✗</span>](#crypto-ecdsa-linux-arm64) | 0 | [1](#crypto-ecdsa-linux-arm64) |[<span style="color: red">✗</span>](#crypto-ecdsa-wasi-wasm) | 0 | [1](#crypto-ecdsa-wasi-wasm) |
crypto/ed25519 |[<span style="color: orange">⛆</span>](#crypto-ed25519-linux-arm64) | 9 | [1](#crypto-ed25519-linux-arm64) |[<span style="color: red">✗</span>](#crypto-ed25519-wasi-wasm) | 0 | [1](#crypto-ed25519-wasi-wasm) |
crypto/elliptic |[<span style="color: red">✗</span>](#crypto-elliptic-linux-arm64) | 0 | [1](#crypto-elliptic-linux-arm64) |[<span style="color: red">✗</span>](#crypto-elliptic-wasi-wasm) | 0 | [1](#crypto-elliptic-wasi-wasm) |
crypto/hmac |<span style="color: green">✔</span> | 4 | 0 |[<span style="color: orange">⛆</span>](#crypto-hmac-wasi-wasm) | 2 | [1](#crypto-hmac-wasi-wasm) |
crypto/md5 |<span style="color: green">✔</span> | 6 | 0 |<span style="color: green">✔</span> | 6 | 0 |
crypto/rand |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
crypto/rc4 |<span style="color: green">✔</span> | 2 | 0 |<span style="color: green">✔</span> | 2 | 0 |
crypto/rsa |[<span style="color: red">✗</span>](#crypto-rsa-linux-arm64) | 0 | [1](#crypto-rsa-linux-arm64) |[<span style="color: red">✗</span>](#crypto-rsa-wasi-wasm) | 0 | [1](#crypto-rsa-wasi-wasm) |
crypto/sha1 |<span style="color: green">✔</span> | 7 | 0 |<span style="color: green">✔</span> | 7 | 0 |
crypto/sha256 |<span style="color: green">✔</span> | 11 | 0 |<span style="color: green">✔</span> | 11 | 0 |
crypto/sha512 |<span style="color: green">✔</span> | 12 | 0 |<span style="color: green">✔</span> | 12 | 0 |
crypto/subtle |[<span style="color: orange">⛆</span>](#crypto-subtle-linux-arm64) | 2 | [1](#crypto-subtle-linux-arm64) |[<span style="color: orange">⛆</span>](#crypto-subtle-wasi-wasm) | 2 | [1](#crypto-subtle-wasi-wasm) |
crypto/tls |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
crypto/x509 |[<span style="color: red">✗</span>](#crypto-x509-linux-arm64) | 0 | [1](#crypto-x509-linux-arm64) |[<span style="color: red">✗</span>](#crypto-x509-wasi-wasm) | 0 | [1](#crypto-x509-wasi-wasm) |
crypto/x509/pkix |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
database/sql |[<span style="color: red">✗</span>](#database-sql-linux-arm64) | 0 | [1](#database-sql-linux-arm64) |[<span style="color: red">✗</span>](#database-sql-wasi-wasm) | 0 | [1](#database-sql-wasi-wasm) |
database/sql/driver |<span style="color: green">✔</span> | 1 | 0 |<span style="color: green">✔</span> | 1 | 0 |
debug/buildinfo |[<span style="color: red">✗</span>](#debug-buildinfo-linux-arm64) | 0 | [1](#debug-buildinfo-linux-arm64) |[<span style="color: red">✗</span>](#debug-buildinfo-wasi-wasm) | 0 | [1](#debug-buildinfo-wasi-wasm) |
debug/dwarf |<span style="color: green">✔</span> | 40 | 0 |<span style="color: green">✔</span> | 29 | 0 |
debug/elf |[<span style="color: red">✗</span>](#debug-elf-linux-arm64) | 0 | [1](#debug-elf-linux-arm64) |[<span style="color: red">✗</span>](#debug-elf-wasi-wasm) | 0 | [1](#debug-elf-wasi-wasm) |
debug/gosym |[<span style="color: orange">⛆</span>](#debug-gosym-linux-arm64) | 1 | [1](#debug-gosym-linux-arm64) |[<span style="color: red">✗</span>](#debug-gosym-wasi-wasm) | 0 | [1](#debug-gosym-wasi-wasm) |
debug/macho |<span style="color: green">✔</span> | 7 | 0 |<span style="color: green">✔</span> | 7 | 0 |
debug/pe |[<span style="color: orange">⛆</span>](#debug-pe-linux-arm64) | 1 | [1](#debug-pe-linux-arm64) |[<span style="color: red">✗</span>](#debug-pe-wasi-wasm) | 0 | [1](#debug-pe-wasi-wasm) |
debug/plan9obj |<span style="color: green">✔</span> | 2 | 0 |<span style="color: green">✔</span> | 2 | 0 |
embed |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
encoding |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
encoding/ascii85 |<span style="color: green">✔</span> | 9 | 0 |<span style="color: green">✔</span> | 9 | 0 |
encoding/asn1 |<span style="color: green">✔</span> | 38 | 0 |[<span style="color: red">✗</span>](#encoding-asn1-wasi-wasm) | 0 | [1](#encoding-asn1-wasi-wasm) |
encoding/base32 |<span style="color: green">✔</span> | 24 | 0 |<span style="color: green">✔</span> | 24 | 0 |
encoding/base64 |<span style="color: green">✔</span> | 17 | 0 |<span style="color: green">✔</span> | 17 | 0 |
encoding/binary |[<span style="color: orange">⛆</span>](#encoding-binary-linux-arm64) | 20 | [1](#encoding-binary-linux-arm64) |[<span style="color: orange">⛆</span>](#encoding-binary-wasi-wasm) | 16 | [1](#encoding-binary-wasi-wasm) |
encoding/csv |<span style="color: green">✔</span> | 71 | 0 |<span style="color: green">✔</span> | 71 | 0 |
encoding/gob |[<span style="color: red">✗</span>](#encoding-gob-linux-arm64) | 0 | [1](#encoding-gob-linux-arm64) |[<span style="color: red">✗</span>](#encoding-gob-wasi-wasm) | 0 | [1](#encoding-gob-wasi-wasm) |
encoding/hex |<span style="color: green">✔</span> | 12 | 0 |<span style="color: green">✔</span> | 12 | 0 |
encoding/json |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
encoding/pem |[<span style="color: orange">⛆</span>](#encoding-pem-linux-arm64) | 7 | [1](#encoding-pem-linux-arm64) |[<span style="color: red">✗</span>](#encoding-pem-wasi-wasm) | 0 | [1](#encoding-pem-wasi-wasm) |
encoding/xml |[<span style="color: orange">⛆</span>](#encoding-xml-linux-arm64) | 336 | [1](#encoding-xml-linux-arm64) |[<span style="color: orange">⛆</span>](#encoding-xml-wasi-wasm) | 336 | [1](#encoding-xml-wasi-wasm) |
errors |[<span style="color: orange">⛆</span>](#errors-linux-arm64) | 60 | [19](#errors-linux-arm64) |[<span style="color: orange">⛆</span>](#errors-wasi-wasm) | 56 | [21](#errors-wasi-wasm) |
expvar |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
flag |[<span style="color: orange">⛆</span>](#flag-linux-arm64) | 24 | [2](#flag-linux-arm64) |[<span style="color: red">✗</span>](#flag-wasi-wasm) | 0 | [1](#flag-wasi-wasm) |
fmt |[<span style="color: orange">⛆</span>](#fmt-linux-arm64) | 3 | [1](#fmt-linux-arm64) |[<span style="color: orange">⛆</span>](#fmt-wasi-wasm) | 3 | [1](#fmt-wasi-wasm) |
go/ast |<span style="color: green">✔</span> | 8 | 0 |[<span style="color: red">✗</span>](#go-ast-wasi-wasm) | 0 | [1](#go-ast-wasi-wasm) |
go/build |[<span style="color: orange">⛆</span>](#go-build-linux-arm64) | 56 | [16](#go-build-linux-arm64) |[<span style="color: red">✗</span>](#go-build-wasi-wasm) | 0 | [1](#go-build-wasi-wasm) |
go/build/constraint |<span style="color: green">✔</span> | 81 | 0 |[<span style="color: orange">⛆</span>](#go-build-constraint-wasi-wasm) | 13 | [7](#go-build-constraint-wasi-wasm) |
go/constant |[<span style="color: orange">⛆</span>](#go-constant-linux-arm64) | 2 | [1](#go-constant-linux-arm64) |[<span style="color: red">✗</span>](#go-constant-wasi-wasm) | 0 | [1](#go-constant-wasi-wasm) |
go/doc |[<span style="color: red">✗</span>](#go-doc-linux-arm64) | 0 | [1](#go-doc-linux-arm64) |[<span style="color: red">✗</span>](#go-doc-wasi-wasm) | 0 | [1](#go-doc-wasi-wasm) |
go/doc/comment |[<span style="color: orange">⛆</span>](#go-doc-comment-linux-arm64) | 10059 | [1](#go-doc-comment-linux-arm64) |[<span style="color: red">✗</span>](#go-doc-comment-wasi-wasm) | 0 | [1](#go-doc-comment-wasi-wasm) |
go/format |<span style="color: green">✔</span> | 4 | 0 |[<span style="color: red">✗</span>](#go-format-wasi-wasm) | 0 | [1](#go-format-wasi-wasm) |
go/importer |[<span style="color: orange">⛆</span>](#go-importer-linux-arm64) | 2 | [2](#go-importer-linux-arm64) |[<span style="color: red">✗</span>](#go-importer-wasi-wasm) | 0 | [1](#go-importer-wasi-wasm) |
go/parser |[<span style="color: orange">⛆</span>](#go-parser-linux-arm64) | 43 | [2](#go-parser-linux-arm64) |[<span style="color: orange">⛆</span>](#go-parser-wasi-wasm) | 3 | [1](#go-parser-wasi-wasm) |
go/printer |[<span style="color: orange">⛆</span>](#go-printer-linux-arm64) | 12 | [12](#go-printer-linux-arm64) |[<span style="color: red">✗</span>](#go-printer-wasi-wasm) | 0 | [1](#go-printer-wasi-wasm) |
go/scanner |<span style="color: green">✔</span> | 11 | 0 |<span style="color: green">✔</span> | 11 | 0 |
go/token |[<span style="color: red">✗</span>](#go-token-linux-arm64) | 0 | [1](#go-token-linux-arm64) |[<span style="color: red">✗</span>](#go-token-wasi-wasm) | 0 | [1](#go-token-wasi-wasm) |
go/types |[<span style="color: red">✗</span>](#go-types-linux-arm64) | 0 | [1](#go-types-linux-arm64) |[<span style="color: red">✗</span>](#go-types-wasi-wasm) | 0 | [1](#go-types-wasi-wasm) |
go/version |<span style="color: green">✔</span> | 3 | 0 |<span style="color: green">✔</span> | 3 | 0 |
hash |<span style="color: green">✔</span> | 18 | 0 |<span style="color: green">✔</span> | 18 | 0 |
hash/adler32 |<span style="color: green">✔</span> | 2 | 0 |<span style="color: green">✔</span> | 2 | 0 |
hash/crc32 |[<span style="color: orange">⛆</span>](#hash-crc32-linux-arm64) | 8 | [1](#hash-crc32-linux-arm64) |[<span style="color: orange">⛆</span>](#hash-crc32-wasi-wasm) | 8 | [1](#hash-crc32-wasi-wasm) |
hash/crc64 |<span style="color: green">✔</span> | 5 | 0 |<span style="color: green">✔</span> | 5 | 0 |
hash/fnv |<span style="color: green">✔</span> | 19 | 0 |<span style="color: green">✔</span> | 19 | 0 |
hash/maphash |[<span style="color: orange">⛆</span>](#hash-maphash-linux-arm64) | 15 | [1](#hash-maphash-linux-arm64) |[<span style="color: red">✗</span>](#hash-maphash-wasi-wasm) | 0 | [1](#hash-maphash-wasi-wasm) |
html |<span style="color: green">✔</span> | 3 | 0 |<span style="color: green">✔</span> | 3 | 0 |
html/template |[<span style="color: orange">⛆</span>](#html-template-linux-arm64) | 1 | [1](#html-template-linux-arm64) |[<span style="color: orange">⛆</span>](#html-template-wasi-wasm) | 1 | [1](#html-template-wasi-wasm) |
image |<span style="color: green">✔</span> | 8 | 0 |[<span style="color: orange">⛆</span>](#image-wasi-wasm) | 3 | [1](#image-wasi-wasm) |
image/color |[<span style="color: orange">⛆</span>](#image-color-linux-arm64) | 1 | [1](#image-color-linux-arm64) |[<span style="color: orange">⛆</span>](#image-color-wasi-wasm) | 1 | [1](#image-color-wasi-wasm) |
image/color/palette |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
image/draw |[<span style="color: orange">⛆</span>](#image-draw-linux-arm64) | 9 | [1](#image-draw-linux-arm64) |[<span style="color: orange">⛆</span>](#image-draw-wasi-wasm) | 9 | [1](#image-draw-wasi-wasm) |
image/gif |[<span style="color: red">✗</span>](#image-gif-linux-arm64) | 0 | [1](#image-gif-linux-arm64) |[<span style="color: red">✗</span>](#image-gif-wasi-wasm) | 0 | [1](#image-gif-wasi-wasm) |
image/jpeg |[<span style="color: red">✗</span>](#image-jpeg-linux-arm64) | 0 | [1](#image-jpeg-linux-arm64) |[<span style="color: red">✗</span>](#image-jpeg-wasi-wasm) | 0 | [1](#image-jpeg-wasi-wasm) |
image/png |[<span style="color: orange">⛆</span>](#image-png-linux-arm64) | 13 | [1](#image-png-linux-arm64) |&nbsp; | &nbsp; | &nbsp; |
index/suffixarray |<span style="color: green">✔</span> | 12 | 0 |&nbsp; | &nbsp; | &nbsp; |
io |[<span style="color: orange">⛆</span>](#io-linux-arm64) | 60 | [4](#io-linux-arm64) |[<span style="color: orange">⛆</span>](#io-wasi-wasm) | 60 | [4](#io-wasi-wasm) |
io/fs |[<span style="color: orange">⛆</span>](#io-fs-linux-arm64) | 6 | [1](#io-fs-linux-arm64) |[<span style="color: orange">⛆</span>](#io-fs-wasi-wasm) | 6 | [2](#io-fs-wasi-wasm) |
io/ioutil |<span style="color: green">✔</span> | 28 | 0 |[<span style="color: orange">⛆</span>](#io-ioutil-wasi-wasm) | 28 | [2](#io-ioutil-wasi-wasm) |
log |[<span style="color: orange">⛆</span>](#log-linux-arm64) | 9 | [1](#log-linux-arm64) |[<span style="color: orange">⛆</span>](#log-wasi-wasm) | 9 | [1](#log-wasi-wasm) |
log/slog |[<span style="color: red">✗</span>](#log-slog-linux-arm64) | 0 | [1](#log-slog-linux-arm64) |[<span style="color: red">✗</span>](#log-slog-wasi-wasm) | 0 | [1](#log-slog-wasi-wasm) |
log/syslog |[<span style="color: red">✗</span>](#log-syslog-linux-arm64) | 0 | [1](#log-syslog-linux-arm64) |[<span style="color: red">✗</span>](#log-syslog-wasi-wasm) | 0 | [1](#log-syslog-wasi-wasm) |
maps |[<span style="color: red">✗</span>](#maps-linux-arm64) | 0 | [1](#maps-linux-arm64) |[<span style="color: red">✗</span>](#maps-wasi-wasm) | 0 | [1](#maps-wasi-wasm) |
math |<span style="color: green">✔</span> | 76 | 0 |[<span style="color: red">✗</span>](#math-wasi-wasm) | 0 | [1](#math-wasi-wasm) |
math/big |[<span style="color: red">✗</span>](#math-big-linux-arm64) | 0 | [1](#math-big-linux-arm64) |<span style="color: yellow">∅</span> | 0 | 0 |
math/bits |[<span style="color: orange">⛆</span>](#math-bits-linux-arm64) | 21 | [5](#math-bits-linux-arm64) |[<span style="color: orange">⛆</span>](#math-bits-wasi-wasm) | 12 | [1](#math-bits-wasi-wasm) |
math/cmplx |<span style="color: green">✔</span> | 24 | 0 |[<span style="color: red">✗</span>](#math-cmplx-wasi-wasm) | 0 | [1](#math-cmplx-wasi-wasm) |
math/rand |[<span style="color: orange">⛆</span>](#math-rand-linux-arm64) | 43 | [8](#math-rand-linux-arm64) |[<span style="color: red">✗</span>](#math-rand-wasi-wasm) | 0 | [1](#math-rand-wasi-wasm) |
math/rand/v2 |[<span style="color: red">✗</span>](#math-rand-v2-linux-arm64) | 0 | [1](#math-rand-v2-linux-arm64) |[<span style="color: red">✗</span>](#math-rand-v2-wasi-wasm) | 0 | [1](#math-rand-v2-wasi-wasm) |
mime |[<span style="color: orange">⛆</span>](#mime-linux-arm64) | 14 | [1](#mime-linux-arm64) |&nbsp; | &nbsp; | &nbsp; |
mime/multipart |<span style="color: green">✔</span> | 48 | 0 |&nbsp; | &nbsp; | &nbsp; |
mime/quotedprintable |<span style="color: green">✔</span> | 5 | 0 |[<span style="color: red">✗</span>](#mime-quotedprintable-wasi-wasm) | 0 | [1](#mime-quotedprintable-wasi-wasm) |
net |<span style="color: green">✔</span> | 1 | 0 |<span style="color: green">✔</span> | 1 | 0 |
net/http |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
net/http/cgi |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
net/http/cookiejar |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
net/http/fcgi |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
net/http/httptest |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
net/http/httptrace |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
net/http/httputil |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
net/http/pprof |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
net/mail |<span style="color: green">✔</span> | 11 | 0 |<span style="color: green">✔</span> | 11 | 0 |
net/netip |[<span style="color: orange">⛆</span>](#net-netip-linux-arm64) | 256 | [8](#net-netip-linux-arm64) |[<span style="color: red">✗</span>](#net-netip-wasi-wasm) | 0 | [1](#net-netip-wasi-wasm) |
net/rpc |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
net/rpc/jsonrpc |[<span style="color: red">✗</span>](#net-rpc-jsonrpc-linux-arm64) | 0 | [1](#net-rpc-jsonrpc-linux-arm64) |[<span style="color: red">✗</span>](#net-rpc-jsonrpc-wasi-wasm) | 0 | [1](#net-rpc-jsonrpc-wasi-wasm) |
net/smtp |[<span style="color: red">✗</span>](#net-smtp-linux-arm64) | 0 | [1](#net-smtp-linux-arm64) |[<span style="color: red">✗</span>](#net-smtp-wasi-wasm) | 0 | [1](#net-smtp-wasi-wasm) |
net/textproto |<span style="color: green">✔</span> | 25 | 0 |<span style="color: green">✔</span> | 25 | 0 |
net/url |[<span style="color: red">✗</span>](#net-url-linux-arm64) | 0 | [1](#net-url-linux-arm64) |[<span style="color: red">✗</span>](#net-url-wasi-wasm) | 0 | [1](#net-url-wasi-wasm) |
os |<span style="color: green">✔</span> | 80 | 0 |[<span style="color: orange">⛆</span>](#os-wasi-wasm) | 37 | [3](#os-wasi-wasm) |
os/exec |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
os/signal |[<span style="color: red">✗</span>](#os-signal-linux-arm64) | 0 | [1](#os-signal-linux-arm64) |[<span style="color: red">✗</span>](#os-signal-wasi-wasm) | 0 | [1](#os-signal-wasi-wasm) |
os/user |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
path |<span style="color: green">✔</span> | 9 | 0 |<span style="color: green">✔</span> | 9 | 0 |
path/filepath |[<span style="color: orange">⛆</span>](#path-filepath-linux-arm64) | 3 | [1](#path-filepath-linux-arm64) |[<span style="color: orange">⛆</span>](#path-filepath-wasi-wasm) | 3 | [2](#path-filepath-wasi-wasm) |
plugin |[<span style="color: red">✗</span>](#plugin-linux-arm64) | 0 | [1](#plugin-linux-arm64) |[<span style="color: red">✗</span>](#plugin-wasi-wasm) | 0 | [1](#plugin-wasi-wasm) |
reflect |<span style="color: green">✔</span> | 96 | 0 |<span style="color: green">✔</span> | 96 | 0 |
regexp |[<span style="color: orange">⛆</span>](#regexp-linux-arm64) | 14 | [1](#regexp-linux-arm64) |[<span style="color: orange">⛆</span>](#regexp-wasi-wasm) | 2 | [1](#regexp-wasi-wasm) |
regexp/syntax |<span style="color: green">✔</span> | 12 | 0 |[<span style="color: orange">⛆</span>](#regexp-syntax-wasi-wasm) | 8 | [1](#regexp-syntax-wasi-wasm) |
runtime |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
runtime/cgo |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
runtime/coverage |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
runtime/debug |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
runtime/metrics |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
runtime/pprof |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
runtime/race |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
runtime/trace |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
slices |[<span style="color: orange">⛆</span>](#slices-linux-arm64) | 11 | [1](#slices-linux-arm64) |[<span style="color: red">✗</span>](#slices-wasi-wasm) | 0 | [1](#slices-wasi-wasm) |
sort |<span style="color: green">✔</span> | 63 | 0 |<span style="color: green">✔</span> | 63 | 0 |
strconv |<span style="color: green">✔</span> | 66 | 0 |[<span style="color: red">✗</span>](#strconv-wasi-wasm) | 0 | [1](#strconv-wasi-wasm) |
strings |[<span style="color: orange">⛆</span>](#strings-linux-arm64) | 71 | [2](#strings-linux-arm64) |[<span style="color: orange">⛆</span>](#strings-wasi-wasm) | 4 | [1](#strings-wasi-wasm) |
sync |<span style="color: green">✔</span> | 19 | 0 |<span style="color: green">✔</span> | 19 | 0 |
sync/atomic |[<span style="color: orange">⛆</span>](#sync-atomic-linux-arm64) | 68 | [6](#sync-atomic-linux-arm64) |[<span style="color: orange">⛆</span>](#sync-atomic-wasi-wasm) | 68 | [6](#sync-atomic-wasi-wasm) |
syscall |[<span style="color: red">✗</span>](#syscall-linux-arm64) | 0 | [1](#syscall-linux-arm64) |[<span style="color: orange">⛆</span>](#syscall-wasi-wasm) | 1 | [1](#syscall-wasi-wasm) |
testing |<span style="color: green">✔</span> | 33 | 0 |<span style="color: green">✔</span> | 23 | 0 |
testing/fstest |<span style="color: green">✔</span> | 5 | 0 |[<span style="color: orange">⛆</span>](#testing-fstest-wasi-wasm) | 5 | [1](#testing-fstest-wasi-wasm) |
testing/iotest |<span style="color: green">✔</span> | 18 | 0 |<span style="color: green">✔</span> | 18 | 0 |
testing/quick |[<span style="color: orange">⛆</span>](#testing-quick-linux-arm64) | 1 | [1](#testing-quick-linux-arm64) |[<span style="color: orange">⛆</span>](#testing-quick-wasi-wasm) | 1 | [1](#testing-quick-wasi-wasm) |
testing/slogtest |[<span style="color: red">✗</span>](#testing-slogtest-linux-arm64) | 0 | [1](#testing-slogtest-linux-arm64) |[<span style="color: red">✗</span>](#testing-slogtest-wasi-wasm) | 0 | [1](#testing-slogtest-wasi-wasm) |
text/scanner |<span style="color: green">✔</span> | 18 | 0 |<span style="color: green">✔</span> | 18 | 0 |
text/tabwriter |<span style="color: green">✔</span> | 3 | 0 |[<span style="color: orange">⛆</span>](#text-tabwriter-wasi-wasm) | 2 | [1](#text-tabwriter-wasi-wasm) |
text/template |[<span style="color: orange">⛆</span>](#text-template-linux-arm64) | 1 | [1](#text-template-linux-arm64) |[<span style="color: red">✗</span>](#text-template-wasi-wasm) | 0 | [1](#text-template-wasi-wasm) |
text/template/parse |<span style="color: green">✔</span> | 52 | 0 |[<span style="color: orange">⛆</span>](#text-template-parse-wasi-wasm) | 6 | [1](#text-template-parse-wasi-wasm) |
time |[<span style="color: red">✗</span>](#time-linux-arm64) | 0 | [1](#time-linux-arm64) |[<span style="color: red">✗</span>](#time-wasi-wasm) | 0 | [1](#time-wasi-wasm) |
time/tzdata |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |
unicode |<span style="color: green">✔</span> | 28 | 0 |<span style="color: green">✔</span> | 28 | 0 |
unicode/utf16 |<span style="color: green">✔</span> | 8 | 0 |<span style="color: green">✔</span> | 8 | 0 |
unicode/utf8 |<span style="color: green">✔</span> | 14 | 0 |<span style="color: green">✔</span> | 14 | 0 |
unsafe |<span style="color: yellow">∅</span> | 0 | 0 |<span style="color: yellow">∅</span> | 0 | 0 |## linux/arm64



### archive/tar linux/arm64

build error

```text
FAIL	archive/tar	0.000s
# archive/tar
/usr/local/go/src/archive/tar/stat_unix.go:39:27: undefined: user.LookupId
/usr/local/go/src/archive/tar/stat_unix.go:45:27: undefined: user.LookupGroupId
```


### bufio linux/arm64

failure

```text
=== RUN   TestReadStringAllocs
    Unexpected number of allocations, got 0.000000, want 1
--- FAIL: TestReadStringAllocs (0.00s)

```


### context linux/arm64

build error

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

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2338591754/main /tmp/tinygo2338591754/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-1D16C73CA7A1E10346AAE81D9B45A9E4651F0103:((*crypto/aes.aesCipherAsm).Encrypt)
failed to run tool: ld.lld
FAIL	crypto	0.000s
error: failed to link /tmp/tinygo2338591754/main: exit status 1
```


### crypto/aes linux/arm64

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3493162736/main /tmp/tinygo3493162736/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.decryptBlockAsm
>>> referenced by cipher_asm.go:95 (/usr/local/go/src/crypto/aes/cipher_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C0B38AE06461A58B42C5B34593CC845D19599555:((*crypto/aes.aesCipherAsm).Decrypt)

ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-C0B38AE06461A58B42C5B34593CC845D19599555:((*crypto/aes.aesCipherAsm).Encrypt)
failed to run tool: ld.lld
FAIL	crypto/aes	0.000s
error: failed to link /tmp/tinygo3493162736/main: exit status 1
```


### crypto/cipher linux/arm64

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1155774521/main /tmp/tinygo1155774521/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.gcmAesInit
>>> referenced by aes_gcm.go:49 (/usr/local/go/src/crypto/aes/aes_gcm.go:49)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-57AD32ADEDA80DAEB8A0426E8A174C9A22F0DB0A:(crypto/cipher.newGCMWithNonceAndTagSize)

ld.lld: error: undefined symbol: crypto/aes.decryptBlockAsm
>>> referenced by cipher_asm.go:95 (/usr/local/go/src/crypto/aes/cipher_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-57AD32ADEDA80DAEB8A0426E8A174C9A22F0DB0A:((*crypto/aes.aesCipherAsm).Decrypt)

ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-57AD32ADEDA80DAEB8A0426E8A174C9A22F0DB0A:((*crypto/aes.aesCipherAsm).Encrypt)
>>> referenced by aes_gcm.go:111 (/usr/local/go/src/crypto/aes/aes_gcm.go:111)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-57AD32ADEDA80DAEB8A0426E8A174C9A22F0DB0A:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:164 (/usr/local/go/src/crypto/aes/aes_gcm.go:164)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-57AD32ADEDA80DAEB8A0426E8A174C9A22F0DB0A:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Open$invoke)

ld.lld: error: undefined symbol: crypto/aes.gcmAesData
>>> referenced by aes_gcm.go:107 (/usr/local/go/src/crypto/aes/aes_gcm.go:107)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-57AD32ADEDA80DAEB8A0426E8A174C9A22F0DB0A:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:114 (/usr/local/go/src/crypto/aes/aes_gcm.go:114)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-57AD32ADEDA80DAEB8A0426E8A174C9A22F0DB0A:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:160 (/usr/local/go/src/crypto/aes/aes_gcm.go:160)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-57AD32ADEDA80DAEB8A0426E8A174C9A22F0DB0A:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Open$invoke)
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/aes.gcmAesFinish
>>> referenced by aes_gcm.go:108 (/usr/local/go/src/crypto/aes/aes_gcm.go:108)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-57AD32ADEDA80DAEB8A0426E8A174C9A22F0DB0A:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:123 (/usr/local/go/src/crypto/aes/aes_gcm.go:123)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-57AD32ADEDA80DAEB8A0426E8A174C9A22F0DB0A:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)
>>> referenced by aes_gcm.go:161 (/usr/local/go/src/crypto/aes/aes_gcm.go:161)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-57AD32ADEDA80DAEB8A0426E8A174C9A22F0DB0A:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Open$invoke)
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/aes.gcmAesEnc
>>> referenced by aes_gcm.go:121 (/usr/local/go/src/crypto/aes/aes_gcm.go:121)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-57AD32ADEDA80DAEB8A0426E8A174C9A22F0DB0A:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Seal$invoke)

ld.lld: error: undefined symbol: crypto/aes.gcmAesDec
>>> referenced by aes_gcm.go:174 (/usr/local/go/src/crypto/aes/aes_gcm.go:174)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-57AD32ADEDA80DAEB8A0426E8A174C9A22F0DB0A:(interface:{NonceSize:func:{}{basic:int},Open:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8,named:error},Overhead:func:{}{basic:int},Seal:func:{slice:basic:uint8,slice:basic:uint8,slice:basic:uint8,slice:basic:uint8}{slice:basic:uint8}}.Open$invoke)
failed to run tool: ld.lld
FAIL	crypto/cipher	0.000s
error: failed to link /tmp/tinygo1155774521/main: exit status 1
```


### crypto/ecdh linux/arm64

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1938277622/main /tmp/tinygo1938277622/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo1938277622/embed-a3a5d08c40939adb7c0e9e4f5b689721-60427553.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/internal/nistec.p256Sqr
>>> referenced by p256_asm.go:584 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:584)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:586 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:586)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:588 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:588)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:(crypto/internal/nistec.p256Inverse)
>>> referenced 16 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Mul
>>> referenced by p256_asm.go:603 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:603)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:141 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:141)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:489 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:489)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced 8 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256BigToLittle
>>> referenced by p256_asm.go:95 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:(OUTLINED_FUNCTION_764)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256FromMont
>>> referenced by p256_asm.go:125 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:125)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:516 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:516)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:494 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:494)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256NegCond
>>> referenced by p256_asm.go:127 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:127)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:146 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:146)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:723 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:723)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointDoubleAsm
>>> referenced by p256_asm.go:660 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:660)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:661 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:661)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:662 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:662)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced 7 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAsm
>>> referenced by p256_asm.go:669 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:669)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:681 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:681)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:691 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:691)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Select
>>> referenced by p256_asm.go:703 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:703)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:722 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:722)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:739 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:739)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256MovCond
>>> referenced by p256_asm.go:725 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:725)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:742 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:742)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:648 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:648)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256LittleToBig
>>> referenced by p256_asm.go:517 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:517)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).ECDH)
>>> referenced by p256_asm.go:478 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:478)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced by p256_asm.go:479 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:479)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).PublicKey$1)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256SelectAffine
>>> referenced by p256_asm.go:627 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:627)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).PublicKey$1)
>>> referenced by p256_asm.go:642 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:642)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).PublicKey$1)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAffineAsm
>>> referenced by p256_asm.go:643 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:643)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:((*crypto/ecdh.PrivateKey).PublicKey$1)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdBigToLittle
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-BC525AE53343345D2E48A5D51D93E1EF157700A5:(OUTLINED_FUNCTION_784)
failed to run tool: ld.lld
FAIL	crypto/ecdh	0.000s
error: failed to link /tmp/tinygo1938277622/main: exit status 1
```


### crypto/ecdsa linux/arm64

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2813955403/main /tmp/tinygo2813955403/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo2813955403/embed-a3a5d08c40939adb7c0e9e4f5b689721-3324985886.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/aes.aesCipherAsm).Encrypt)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAsm
>>> referenced by p256_asm.go:387 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:387)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:669 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:669)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:681 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:681)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 3 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointDoubleAsm
>>> referenced by p256_asm.go:388 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:388)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:660 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:660)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:661 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:661)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 8 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256MovCond
>>> referenced by p256_asm.go:389 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:389)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:390 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:390)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:391 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:391)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).Add)
>>> referenced 4 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Mul
>>> referenced by p256_asm.go:489 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:489)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).Bytes)
>>> referenced by p256_asm.go:603 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:603)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(crypto/internal/nistec.p256Inverse)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(OUTLINED_FUNCTION_189)
>>> referenced 5 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256FromMont
>>> referenced by p256_asm.go:495 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:495)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).Bytes)
>>> referenced by p256_asm.go:125 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:125)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(OUTLINED_FUNCTION_1215)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256LittleToBig
>>> referenced by p256_asm.go:478 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:478)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).Bytes)
>>> referenced by p256_asm.go:479 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:479)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).Bytes)
>>> referenced by p256_asm.go:517 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:517)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).BytesX)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Sqr
>>> referenced by p256_asm.go:584 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:584)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:586 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:586)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(crypto/internal/nistec.p256Inverse)
>>> referenced by p256_asm.go:588 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:588)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(crypto/internal/nistec.p256Inverse)
>>> referenced 16 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdBigToLittle
>>> referenced by p256_asm.go:410 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:410)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:425 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:425)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_ordinv.go:27 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:27)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(crypto/internal/nistec.P256OrdInverse)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256SelectAffine
>>> referenced by p256_asm.go:627 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:627)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:642 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:642)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarBaseMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256NegCond
>>> referenced by p256_asm.go:629 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:629)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:723 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:723)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:740 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:740)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAffineAsm
>>> referenced by p256_asm.go:643 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:643)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarBaseMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Select
>>> referenced by p256_asm.go:703 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:703)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:722 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:722)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:739 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:739)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).ScalarMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256BigToLittle
>>> referenced by p256_asm.go:95 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(OUTLINED_FUNCTION_1291)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdMul
>>> referenced by p256_ordinv.go:51 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:51)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(crypto/internal/nistec.P256OrdInverse)
>>> referenced by p256_ordinv.go:53 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:53)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(crypto/internal/nistec.P256OrdInverse)
>>> referenced by p256_ordinv.go:54 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:54)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(crypto/internal/nistec.P256OrdInverse)
>>> referenced 7 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdSqr
>>> referenced by p256_ordinv.go:64 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:64)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(crypto/internal/nistec.P256OrdInverse)
>>> referenced by p256_ordinv.go:66 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:66)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(crypto/internal/nistec.P256OrdInverse)
>>> referenced by p256_ordinv.go:68 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:68)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(crypto/internal/nistec.P256OrdInverse)
>>> referenced 4 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdLittleToBig
>>> referenced by p256_ordinv.go:100 (/usr/local/go/src/crypto/internal/nistec/p256_ordinv.go:100)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-09996352C817E6D43BB10C20F09C23BD1889E35E:(crypto/internal/nistec.P256OrdInverse)
failed to run tool: ld.lld
FAIL	crypto/ecdsa	0.000s
error: failed to link /tmp/tinygo2813955403/main: exit status 1
```


### crypto/ed25519 linux/arm64

failure

```text
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

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1191357189/main /tmp/tinygo1191357189/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo1191357189/embed-a3a5d08c40939adb7c0e9e4f5b689721-3730177171.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAsm
>>> referenced by p256_asm.go:387 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:387)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:669 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:669)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:681 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:681)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 3 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointDoubleAsm
>>> referenced by p256_asm.go:388 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:388)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:660 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:660)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:661 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:661)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 9 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256MovCond
>>> referenced by p256_asm.go:389 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:389)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:390 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:390)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).Add)
>>> referenced by p256_asm.go:391 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:391)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).Add)
>>> referenced 4 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdBigToLittle
>>> referenced by p256_asm.go:410 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:410)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:425 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:425)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256SelectAffine
>>> referenced by p256_asm.go:627 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:627)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:642 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:642)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarBaseMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256NegCond
>>> referenced by p256_asm.go:629 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:629)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarBaseMult)
>>> referenced by p256_asm.go:723 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:723)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:740 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:740)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAffineAsm
>>> referenced by p256_asm.go:643 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:643)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarBaseMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Select
>>> referenced by p256_asm.go:703 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:703)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:722 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:722)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarMult)
>>> referenced by p256_asm.go:739 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:739)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).ScalarMult)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256BigToLittle
>>> referenced by p256_asm.go:95 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:(OUTLINED_FUNCTION_830)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Sqr
>>> referenced by p256_asm.go:162 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:162)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:230 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:230)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:232 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:232)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced 16 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256FromMont
>>> referenced by p256_asm.go:125 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:125)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/internal/nistec.P256Point).SetBytes)
>>> referenced by p256_asm.go:494 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:494)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:495 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:495)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Mul
>>> referenced by p256_asm.go:141 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:141)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:603 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:603)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:492 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:492)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced 7 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256LittleToBig
>>> referenced by p256_asm.go:478 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:478)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:479 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:479)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-2BC0FDD646081BEEEF4F2CAABB009A608FD82696:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
failed to run tool: ld.lld
FAIL	crypto/elliptic	0.000s
error: failed to link /tmp/tinygo1191357189/main: exit status 1
```


### crypto/rsa linux/arm64

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo569871169/main /tmp/tinygo569871169/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo569871169/embed-a3a5d08c40939adb7c0e9e4f5b689721-823147673.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: crypto/aes.encryptBlockAsm
>>> referenced by cipher_asm.go:81 (/usr/local/go/src/crypto/aes/cipher_asm.go:81)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/aes.aesCipherAsm).Encrypt)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Sqr
>>> referenced by p256_asm.go:140 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:140)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:162 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:162)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointFromAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:230 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:230)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointFromAffine[*crypto/internal/nistec.P256Point])
>>> referenced 16 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Mul
>>> referenced by p256_asm.go:141 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:141)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:492 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:492)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:(OUTLINED_FUNCTION_272)
>>> referenced 6 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256NegCond
>>> referenced by p256_asm.go:146 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:146)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:(crypto/internal/nistec.p256Polynomial)
>>> referenced by p256_asm.go:629 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:629)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:723 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:723)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256OrdBigToLittle
>>> referenced by p256_asm.go:410 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:410)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:425 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:425)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256SelectAffine
>>> referenced by p256_asm.go:627 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:627)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:642 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:642)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAffineAsm
>>> referenced by p256_asm.go:643 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:643)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256MovCond
>>> referenced by p256_asm.go:648 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:648)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarBaseMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:725 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:725)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:742 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:742)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced 1 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointDoubleAsm
>>> referenced by p256_asm.go:660 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:660)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:661 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:661)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:662 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:662)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced 7 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256PointAddAsm
>>> referenced by p256_asm.go:669 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:669)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:681 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:681)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:691 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:691)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced 2 more times

ld.lld: error: undefined symbol: crypto/internal/nistec.p256Select
>>> referenced by p256_asm.go:703 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:703)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:722 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:722)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:739 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:739)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).ScalarMult[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256BigToLittle
>>> referenced by p256_asm.go:95 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:95)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointFromAffine[*crypto/internal/nistec.P256Point])
>>> referenced by main
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:(OUTLINED_FUNCTION_1226)

ld.lld: error: undefined symbol: crypto/internal/nistec.p256FromMont
>>> referenced by p256_asm.go:125 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:125)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointFromAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:494 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:494)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:495 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:495)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])

ld.lld: error: undefined symbol: crypto/internal/nistec.p256LittleToBig
>>> referenced by p256_asm.go:478 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:478)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
>>> referenced by p256_asm.go:479 (/usr/local/go/src/crypto/internal/nistec/p256_asm.go:479)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-73CE18BE4B3319E296DA0103298437A2235213F2:((*crypto/elliptic.nistCurve[*crypto/internal/nistec.P256Point]).pointToAffine[*crypto/internal/nistec.P256Point])
failed to run tool: ld.lld
FAIL	crypto/rsa	0.000s
error: failed to link /tmp/tinygo569871169/main: exit status 1
```


### crypto/subtle linux/arm64

failure

```text
=== RUN   TestConstantTimeByteEq
panic: unimplemented: (reflect.Type).NumIn()

```


### crypto/x509 linux/arm64

build error

```text
FAIL	crypto/x509	0.000s
# crypto/x509_test
/usr/local/go/src/crypto/x509/hybrid_pool_test.go:63:17: c.ConnectionState undefined (type *net.TLSConn has no field or method ConnectionState)
```


### database/sql linux/arm64

build error

```text
FAIL	database/sql	0.000s
# database/sql
/usr/local/go/src/database/sql/sql_test.go:4722:4: b.SetParallelism undefined (type *testing.B has no field or method SetParallelism)
```


### debug/buildinfo linux/arm64

build error

```text
FAIL	debug/buildinfo	0.000s
# debug/buildinfo
/usr/local/go/src/debug/buildinfo/buildinfo.go:80:19: undefined: debug.ParseBuildInfo
```


### debug/elf linux/arm64

build error

```text
FAIL	debug/elf	0.000s
# debug/elf
/usr/local/go/src/debug/elf/file_test.go:1159:10: undefined: net.ResolveIPAddr
```


### debug/gosym linux/arm64

failure

```text
=== RUN   TestLineFromAline
    no .gosymtab section
    SkipNow is incomplete, requires runtime.Goexit()
panic: runtime error at 0x000000000025e144: nil pointer dereference

```


### debug/pe linux/arm64

failure

```text
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
    running test executable failed: fork/exec /tmp/TestDefaultLinkerDWARF18742979/000/a.exe: operation not implemented 
    FailNow is incomplete, requires runtime.Goexit()
    Testprog output:
    unexpected program output: 
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error at 0x00000000002740a4: index out of range

```


### encoding/binary linux/arm64

failure

```text
=== RUN   TestEarlyBoundsChecks
panic: runtime error at 0x000000000024e558: index out of range

```


### encoding/gob linux/arm64

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo739321214/main /tmp/tinygo739321214/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo739321214/main /tmp/tinygo739321214/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
FAIL	encoding/gob	0.019s
```


### encoding/pem linux/arm64

failure

```text
=== RUN   TestFuzz
panic: unimplemented: (reflect.Type).NumOut()

```


### encoding/xml linux/arm64

failure

```text
=== RUN   TestCVE202228131

```


### errors linux/arm64

failure

```text
=== RUN   TestAs
--- FAIL: TestAs (0.00s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0xffff702d2930)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0xffff702d2930) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff702d2930)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff702d2930) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0xffff702d2930)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0xffff702d2930) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0xffff702d2930)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0xffff702d2930) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0xffff702d2970)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0xffff702d2970) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0xffff702d2950)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0xffff702d2950) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff702d2950)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff702d2950) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0xffff702d2950)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff702d29b0)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0xffff702d2950) (0.00s)
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
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0xffff702d2950)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff702d29b0)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0xffff702d2950) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0xffff702d2950)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0xffff702d2950) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0xffff702d2950)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff702d29b0)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0xffff702d2950) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0xffff702d2930)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0xffff702d2930) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff702d2950)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff702d2950) (0.00s)
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0xffff702d2950)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0xffff702d29b0)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27b180)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0xffff702d2950) (0.00s)
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0xffff702d2930)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0xffff702d2930) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff702d2930)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0xffff702d2930) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0xffff702d2970)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0xffff702d2970) (0.00s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0xffff702d2930)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0xffff702d2930) (0.00s)

```


### flag linux/arm64

failure

```text
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

failure

```text
=== RUN   TestSprintf
    Sprintf("%#v", 0x267654) = "(func)(0x267654)" want "(func(*testing.T))(0xPTR)"
panic: runtime error at 0x0000000000231cd0: nil pointer dereference

```


### go/build linux/arm64

failure

```text
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
--- FAIL: TestImportCmd (0.00s)
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

failure

```text
=== RUN   TestOps
panic: runtime error at 0x0000000000257f90: divide by zero

```


### go/doc linux/arm64

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1958450244/main /tmp/tinygo1958450244/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo1958450244/main /tmp/tinygo1958450244/main -test.v
panic: unimplemented: (reflect.Type).NumOut()
FAIL	go/doc	0.010s
```


### go/doc/comment linux/arm64

failure

```text
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

failure

```text
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

failure

```text
=== RUN   TestParseDepthLimit/array/small
=== RUN   TestParseDepthLimit
=== RUN   TestParseDepthLimit/array/small

```


### go/printer linux/arm64

failure

```text
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.01s)
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.08s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.05s)
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
    --- PASS: TestFiles/alignment.input (0.03s)
=== RUN   TestFiles/linebreaks.input
    --- PASS: TestFiles/linebreaks.input (0.01s)
=== RUN   TestFiles/expressions.input
    --- PASS: TestFiles/expressions.input (0.08s)
=== RUN   TestFiles/expressions.input#01
    --- PASS: TestFiles/expressions.input#01 (0.05s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.04s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.00s)
=== RUN   TestFiles/slow.input
panic: runtime error at 0x000000000023a58c: goroutine stack overflow
=== RUN   TestFiles/empty.input
    --- PASS: TestFiles/empty.input (0.00s)
=== RUN   TestFiles/comments.input
    --- PASS: TestFiles/comments.input (0.02s)
=== RUN   TestFiles/comments.input#01
    --- PASS: TestFiles/comments.input#01 (0.01s)
=== RUN   TestFiles/comments2.input
    --- PASS: TestFiles/comments2.input (0.00s)
=== RUN   TestFiles/alignment.input
    --- PASS: TestFiles/alignment.input (0.03s)
=== RUN   TestFiles/declarations.input
    --- PASS: TestFiles/declarations.input (0.04s)
=== RUN   TestFiles/statements.input
    --- PASS: TestFiles/statements.input (0.00s)
=== RUN   TestFiles/slow.input
panic: runtime error at 0x000000000023a58c: goroutine stack overflow

```


### go/token linux/arm64

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1214575706/main /tmp/tinygo1214575706/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo1214575706/main /tmp/tinygo1214575706/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
FAIL	go/token	0.016s
```


### go/types linux/arm64

build error

```text
FAIL	go/types	0.000s
# go/types_test
/usr/local/go/src/go/types/self_test.go:103:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
```


### hash/crc32 linux/arm64

failure

```text
=== RUN   TestArchIEEE
    Arch-specific IEEE not available.
    SkipNow is incomplete, requires runtime.Goexit()
panic: arch-specific crc32 instruction for IEEE not available

```


### hash/maphash linux/arm64

failure

```text
=== RUN   TestSmhasherTwoNonzero
panic: runtime error at 0x000000000022ecf8: out of memory

```


### html/template linux/arm64

failure

```text
=== RUN   TestAddParseTreeHTML
panic: unimplemented: (reflect.Type).NumOut()

```


### image/color linux/arm64

failure

```text
=== RUN   TestSqDiff
panic: unimplemented: (reflect.Type).NumIn()

```


### image/draw linux/arm64

failure

```text
=== RUN   TestSqDiff
panic: unimplemented: (reflect.Type).NumIn()

```


### image/gif linux/arm64

build error

```text
FAIL	image/gif	0.000s
# image/gif
/usr/local/go/src/image/gif/reader_test.go:421:26: s1.HeapAlloc undefined (type *runtime.MemStats has no field or method HeapAlloc)
/usr/local/go/src/image/gif/reader_test.go:421:41: s0.HeapAlloc undefined (type *runtime.MemStats has no field or method HeapAlloc)
```


### image/jpeg linux/arm64

build error

```text
FAIL	image/jpeg	0.000s
# image/jpeg
/usr/local/go/src/image/jpeg/reader_test.go:253:9: undefined: debug.SetTraceback
```


### image/png linux/arm64

failure

```text
=== RUN   TestDimensionOverflow
panic: runtime error at 0x000000000025ca64: out of memory

```


### io linux/arm64

failure

```text
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
--- FAIL: TestMultiReaderFreesExhaustedReaders (5.00s)

```


### io/fs linux/arm64

failure

```text
=== RUN   TestCVE202230630

```


### log linux/arm64

failure

```text
=== RUN   TestAll
    log output should match "^.*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^.*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/03/10 17:34:09.975400 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/03/10 17:34:09.975831 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/03/10 17:34:09.976708 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/03/10 17:34:09.976822 ???:0: hello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/03/10 17:34:09.976856 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/03/10 17:34:09.977131 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/03/10 17:34:09.977156 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/03/10 17:34:09.977187 ???:0: XXXhello 23 world"
--- FAIL: TestAll (0.00s)

```


### log/slog linux/arm64

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2811451951/main /tmp/tinygo2811451951/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a /tmp/tinygo2811451951/embed-a3a5d08c40939adb7c0e9e4f5b689721-2888019663.o -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo2811451951/main /tmp/tinygo2811451951/main -test.v
panic: runtime.Caller failed
FAIL	log/slog	0.012s
```


### log/syslog linux/arm64

build error

```text
FAIL	log/syslog	0.000s
# log/syslog
/usr/local/go/src/log/syslog/syslog_test.go:35:21: oe.Temporary undefined (type *net.OpError has no field or method Temporary)
/usr/local/go/src/log/syslog/syslog_test.go:110:15: undefined: net.ListenPacket
```


### maps linux/arm64

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2516676844/main /tmp/tinygo2516676844/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: maps.clone
>>> referenced by maps.go:46 (/usr/local/go/src/maps/maps.go:46)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F9AB708965DA4E13606CA4FB6E1A78FE3C988F07:(maps.Clone[map[int]int int int])
>>> referenced by maps.go:46 (/usr/local/go/src/maps/maps.go:46)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-F9AB708965DA4E13606CA4FB6E1A78FE3C988F07:(maps.TestCloneLarge)
failed to run tool: ld.lld
FAIL	maps	0.000s
error: failed to link /tmp/tinygo2516676844/main: exit status 1
```


### math/big linux/arm64

build error

```text
FAIL	math/big	0.000s
# math/big
/usr/local/go/src/math/bits/bits.go:472:10: interp: running for more than 3m0s, timing out (executed calls: 28987920)
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

failure

```text
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

failure

```text
=== RUN   TestDefaultRace
--- FAIL: TestDefaultRace (0.00s)
=== RUN   TestDefaultRace/0
        fork/exec /tmp/tinygo3608171331/main: operation not implemented
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/1
        fork/exec /tmp/tinygo3608171331/main: operation not implemented
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestDefaultRace/2
        fork/exec /tmp/tinygo3608171331/main: operation not implemented
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestDefaultRace/3
        fork/exec /tmp/tinygo3608171331/main: operation not implemented
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestDefaultRace/4
        fork/exec /tmp/tinygo3608171331/main: operation not implemented
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestDefaultRace/5
        fork/exec /tmp/tinygo3608171331/main: operation not implemented
    --- FAIL: TestDefaultRace/5 (0.00s)
=== RUN   TestDefaultRace/1
        fork/exec /tmp/tinygo3608171331/main: operation not implemented
    --- FAIL: TestDefaultRace/1 (0.00s)
=== RUN   TestDefaultRace/3
        fork/exec /tmp/tinygo3608171331/main: operation not implemented
    --- FAIL: TestDefaultRace/3 (0.00s)
=== RUN   TestDefaultRace/4
        fork/exec /tmp/tinygo3608171331/main: operation not implemented
    --- FAIL: TestDefaultRace/4 (0.00s)
=== RUN   TestDefaultRace/5
        fork/exec /tmp/tinygo3608171331/main: operation not implemented
    --- FAIL: TestDefaultRace/5 (0.00s)
=== RUN   TestDefaultRace/0
        fork/exec /tmp/tinygo3608171331/main: operation not implemented
    --- FAIL: TestDefaultRace/0 (0.00s)
=== RUN   TestDefaultRace/2
        fork/exec /tmp/tinygo3608171331/main: operation not implemented
    --- FAIL: TestDefaultRace/2 (0.00s)
=== RUN   TestRegress
panic: unimplemented: (reflect.Type).Method()

```


### math/rand/v2 linux/arm64

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1160268928/main /tmp/tinygo1160268928/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
ld.lld: error: undefined symbol: internal/chacha8rand.block
>>> referenced by chacha8.go:63 (/usr/local/go/src/internal/chacha8rand/chacha8.go:63)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-E19AB0EF203A0FE1520EE692DAC4A3A67226AA70:((*internal/chacha8rand.State).Init)
>>> referenced by chacha8.go:88 (/usr/local/go/src/internal/chacha8rand/chacha8.go:88)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-E19AB0EF203A0FE1520EE692DAC4A3A67226AA70:((*math/rand/v2.ChaCha8).Uint64)
>>> referenced by chacha8.go:150 (/usr/local/go/src/internal/chacha8rand/chacha8.go:150)
>>>               /home/vscode/.cache/tinygo/thinlto/llvmcache-E19AB0EF203A0FE1520EE692DAC4A3A67226AA70:(math/rand/v2_test.TestChaCha8Marshal)
failed to run tool: ld.lld
FAIL	math/rand/v2	0.000s
error: failed to link /tmp/tinygo1160268928/main: exit status 1
```


### mime linux/arm64

failure

```text
=== RUN   TestTypeByExtension_LocalData
panic: runtime error at 0x0000000000237f38: deadlocked: no event source

```


### net/netip linux/arm64

failure

```text
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
=== RUN   TestAddrStringAllocs/ipv4-in-ipv6+zone
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4-in-ipv6+zone (0.00s)
=== RUN   TestAddrStringAllocs/ipv4
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv4 (0.00s)
=== RUN   TestAddrStringAllocs/ipv6
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv6 (0.01s)
=== RUN   TestAddrStringAllocs/ipv6+zone
        allocs=0, want 1
    --- FAIL: TestAddrStringAllocs/ipv6+zone (0.01s)
=== RUN   TestAddrStringAllocs/zero
    --- PASS: TestAddrStringAllocs/zero (0.00s)

```


### net/rpc/jsonrpc linux/arm64

build error

```text
FAIL	net/rpc/jsonrpc	0.000s
# net/rpc
/usr/local/go/src/net/rpc/server.go:290:14: method.IsExported undefined (type reflect.Method has no field or method IsExported)
```


### net/smtp linux/arm64

build error

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

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo260228854/main /tmp/tinygo260228854/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo260228854/main /tmp/tinygo260228854/main -test.v
checkId: 22 should be 23
panic: bootstrap type wrong id: mapType mapType not <nil>
FAIL	net/url	0.037s
```


### os/signal linux/arm64

build error

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

failure

```text
=== RUN   TestCVE202230632

```


### plugin linux/arm64

build error

```text
FAIL	plugin	0.000s
# plugin
../../../usr/local/go/src/plugin/plugin_dlopen.go:10:6: not implemented: build constraints in #cgo line
lib/musl/include/limits.h:40:10: fatal: 'bits/limits.h' file not found
../../../usr/local/go/src/plugin/plugin_dlopen.go:12:10: note: in file included from plugin_dlopen.go!cgo.c:5:
```


### regexp linux/arm64

failure

```text
=== RUN   TestOnePassCutoff

```


### slices linux/arm64

failure

```text
=== RUN   TestInsertPanics
panic: runtime error at 0x0000000000285364: slice out of range

```


### strings linux/arm64

failure

```text
=== RUN   TestBuilderGrow
    growLen=100: got 0 allocs during Write; want 1
    growLen=1000: got 0 allocs during Write; want 1
    growLen=10000: got 0 allocs during Write; want 1
    growLen=100000: got 0 allocs during Write; want 1
--- FAIL: TestBuilderGrow (0.11s)
=== RUN   TestBuilderAllocs
    Builder allocs = 0; want 1
--- FAIL: TestBuilderAllocs (0.00s)

```


### sync/atomic linux/arm64

failure

```text
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

build error

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

failure

```text
=== RUN   TestCheckEqual
panic: unimplemented: (reflect.Type).NumIn()

```


### testing/slogtest linux/arm64

build error

```text
ld.lld --gc-sections -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1247991703/main /tmp/tinygo1247991703/main.o /home/vscode/.cache/tinygo/compiler-rt-aarch64-unknown-linux-generic/lib.a /home/vscode/.cache/tinygo/obj-3fd9192bbb8c0507447753a8b8972390a979bbb71b28b3ea50e39abe.bc /home/vscode/.cache/tinygo/obj-f79712e5b2f218317551c5961bf12c37f30f9733eb9ffe02c10c0c3a.bc /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/crt1.o /home/vscode/.cache/tinygo/musl-aarch64-unknown-linux-generic/lib.a -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/tmp/tinygo1247991703/main /tmp/tinygo1247991703/main -test.v
panic: runtime.Caller failed
FAIL	testing/slogtest	0.028s
```


### text/template linux/arm64

failure

```text
=== RUN   TestExecute
panic: unimplemented: (reflect.Type).NumOut()

```


### time linux/arm64

build error

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
## wasi/wasm



### archive/tar wasi/wasm

build error

```text
FAIL	archive/tar	0.000s
# archive/tar
/usr/local/go/src/archive/tar/stat_unix.go:39:27: undefined: user.LookupId
/usr/local/go/src/archive/tar/stat_unix.go:45:27: undefined: user.LookupGroupId
```


### bufio wasi/wasm

failure

```text
Failures/Tests: 2/42
=== RUN   TestReadStringAllocs
    Unexpected number of allocations, got 0.000000, want 1
--- FAIL: TestReadStringAllocs (0.00s)
=== RUN   TestNegativeRead
panic: bufio: reader returned negative count from Read
Error: failed to run main module `/tmp/tinygo3406265067/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x38d6 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0xdb80 - (*bufio.Reader).Read
           2: 0x8cae5 - bufio_test.TestNegativeRead
                           at /usr/local/go/src/bufio/bufio_test.go:1303:8
           3: 0x30079 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x5af52 - (*testing.T).Run
           5: 0x2fd7d - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x30079 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x2a004 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/06/069a56f2cf2c2675af173cda287292b2d6132751fa3da9153f4e8a10b1e3d344-d:241:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x257c4 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1b3e - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          10: 0x255d5 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x252c2 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### bytes wasi/wasm

failure

```text
Failures/Tests: 1/1
=== RUN   TestEqualNearPageBoundary
    mmap failed errno 52
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: index out of range
Error: failed to run main module `/tmp/tinygo4011941139/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1b498 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:71:7
           1: 0x269a - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:144:16
           2: 0x825bd - syscall.Mprotect
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/syscall_libc.go:246:44              - bytes_test.dangerousSlice
                           at /usr/local/go/src/bytes/boundary_test.go:32:24
           3: 0x8267c - bytes_test.TestEqualNearPageBoundary
                           at /usr/local/go/src/bytes/boundary_test.go:45:21
           4: 0x30f8a - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x30c7c - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x30f8a - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x2a591 - <unknown>!runtime.run$1
           8: 0x243ec - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1ba1 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x242db - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x240e7 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### compress/flate wasi/wasm

failure

```text
Failures/Tests: 2/24
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
--- FAIL: TestDeflateInflateString (10.03s)
=== RUN   TestWriterPersistentWriteError
    ReadFile: open ../../testdata/Isaac.Newton-Opticks.txt: errno 63
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: slice out of range
Error: failed to run main module `/tmp/tinygo4074293332/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x2533b - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:71:7
           1: 0x5c97 - runtime.slicePanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:149:16
           2: 0x96c66 - compress/flate.TestWriterPersistentWriteError
           3: 0x39096 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x64fe3 - (*testing.T).Run
           5: 0x38d9a - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x39096 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x33c3a - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/53/534bea92e2947f2fea2c2598de627bd8507f2d88ba19fcaa07fdbb6169d448a2-d:135:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x2de7a - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x19c4 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x2dd69 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x2db75 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### context wasi/wasm

build error

```text
FAIL	context	0.000s
# context_test
/usr/local/go/src/context/x_test.go:21:27: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestParentFinishesChild: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:24:26: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestChildFinishesFirst: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:27:21: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestCancelRemoves: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:30:31: cannot use t (variable of type *testing.T) as context.testingT value in argument to XTestCustomContextGoroutines: *testing.T does not implement context.testingT (missing method Deadline)
/usr/local/go/src/context/x_test.go:50:20: t.Deadline undefined (type *testing.T has no field or method Deadline)
```


### crypto wasi/wasm

failure

```text
Failures/Tests: 1/1
=== RUN   TestRC4OutOfBoundsWrite
panic: runtime error: index out of range
Error: failed to run main module `/tmp/tinygo2583176720/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x17752 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:71:7
           1: 0x2312 - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:144:16
           2: 0x6aa5b - <unknown>!(*crypto/rc4.Cipher).XORKeyStream$bound
           3: 0x6adf6 - crypto_test.test
                           at /usr/local/go/src/crypto/issue21104_test.go:60:5
           4: 0x6a81a - crypto_test.TestRC4OutOfBoundsWrite
                           at /usr/local/go/src/crypto/issue21104_test.go:21:6
           5: 0x2a71d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x2a413 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x2a71d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x2518f - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/ae/ae5003e243985acd87c6eaa8aa139ba382fcef53385b020be05280b51425c1a5-d:57:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x20b93 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1819 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x20a7a - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x207f2 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/aes wasi/wasm

failure

```text
Failures/Tests: 1/9
=== RUN   TestShortBlocks
panic: crypto/aes: input not full block
Error: failed to run main module `/tmp/tinygo1596345428/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x334f - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x261d1 - (*crypto/aes.aesCipher).Encrypt
                           at /usr/local/go/src/crypto/aes/cipher.go:60:8              - (Go interface method)
                           at <Go interface method>
           2: 0x720d5 - crypto/aes.TestShortBlocks$2
                           at /usr/local/go/src/crypto/aes/aes_test.go:327:69
           3: 0x7234b - crypto/aes.mustPanic
                           at /usr/local/go/src/crypto/aes/aes_test.go:344:3
           4: 0x71ad8 - crypto/aes.TestShortBlocks
                           at /usr/local/go/src/crypto/aes/aes_test.go:327:11
           5: 0x2113b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x20e31 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x2113b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x1b028 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/fb/fbd7cbbdabeaf1f6755c53f198ce468296a770fe68d3e21898f1ad5b22c4718e-d:77:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x16a27 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1843 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x1690e - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x16686 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/cipher wasi/wasm

failure

```text
Failures/Tests: 1/5
=== RUN   TestCryptBlocks
panic: crypto/cipher: input not full blocks
Error: failed to run main module `/tmp/tinygo1946308229/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x33d8 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x758d8 - (*crypto/cipher.cbcDecrypter).CryptBlocks
                           at /usr/local/go/src/crypto/cipher/cbc.go:145:8              - (Go interface method)
                           at <Go interface method>
           2: 0x77e3b - crypto/cipher_test.TestCryptBlocks$1
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:20:80
           3: 0x780a9 - crypto/cipher_test.mustPanic
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:37:3
           4: 0x77ac7 - crypto/cipher_test.TestCryptBlocks
                           at /usr/local/go/src/crypto/cipher/cipher_test.go:20:11
           5: 0x22d4e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x22a44 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x22d4e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x1cd8e - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/61/6162e4542004ff5d4561a2904bdcadfd96d18761f8e4484f36f3c8725ffde61c-d:107:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x1878f - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x18c1 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x18676 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x183ee - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/dsa wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo410270275/main /tmp/tinygo410270275/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: log
failed to run tool: wasm-ld
FAIL	crypto/dsa	0.000s
error: failed to link /tmp/tinygo410270275/main: exit status 1
```


### crypto/ecdh wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo4028602410/main /tmp/tinygo4028602410/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo4028602410/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	crypto/ecdh	0.000s
error: failed to link /tmp/tinygo4028602410/main: exit status 1
```


### crypto/ecdsa wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2875378867/main /tmp/tinygo2875378867/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: log
failed to run tool: wasm-ld
FAIL	crypto/ecdsa	0.000s
error: failed to link /tmp/tinygo2875378867/main: exit status 1
```


### crypto/ed25519 wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1458967881/main /tmp/tinygo1458967881/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo1458967881/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	crypto/ed25519	0.000s
error: failed to link /tmp/tinygo1458967881/main: exit status 1
```


### crypto/elliptic wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo247286908/main /tmp/tinygo247286908/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: log
failed to run tool: wasm-ld
FAIL	crypto/elliptic	0.000s
error: failed to link /tmp/tinygo247286908/main: exit status 1
```


### crypto/hmac wasi/wasm

failure

```text
Failures/Tests: 1/2
=== RUN   TestNonUniqueHash
panic: crypto/hmac: hash generation function does not produce unique values
Error: failed to run main module `/tmp/tinygo3117400466/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3370 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x73fbb - crypto/hmac.New
           2: 0x74e1f - crypto/hmac.TestNonUniqueHash
                           at /usr/local/go/src/crypto/hmac/hmac_test.go:597:45
           3: 0x26c79 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x2696f - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           5: 0x26c79 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x21841 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/8d/8dd68077524b4f9a102e80f0c613dde97831cb4f7273bcbb1841dcbf81bac77a-d:59:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           7: 0x1d23d - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           8: 0x1859 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           9: 0x1d124 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          10: 0x1ce9c - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/rsa wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo47551474/main /tmp/tinygo47551474/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
failed to run tool: wasm-ld
FAIL	crypto/rsa	0.000s
error: failed to link /tmp/tinygo47551474/main: exit status 1
```


### crypto/subtle wasi/wasm

failure

```text
Failures/Tests: 1/2
=== RUN   TestConstantTimeByteEq
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo1690967935/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x377f - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x3a74 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x6a1ff - (Go interface method)
           3: 0x6a3fc - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48
           4: 0x6acde - crypto/subtle.TestConstantTimeByteEq
                           at /usr/local/go/src/crypto/subtle/constant_time_test.go:59:25
           5: 0x1f3ac - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x1f0a2 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x1f3ac - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x190c5 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/7c/7cc9948b16646f06706c44112c930c26b98cbd01318a65fa88edfa29a37f5dbe-d:69:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x1490d - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1837 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x147f4 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x1456b - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### crypto/x509 wasi/wasm

build error

```text
FAIL	crypto/x509	0.000s
# crypto/x509_test
/usr/local/go/src/crypto/x509/hybrid_pool_test.go:63:17: c.ConnectionState undefined (type *net.TLSConn has no field or method ConnectionState)
```


### database/sql wasi/wasm

build error

```text
FAIL	database/sql	0.000s
# database/sql
/usr/local/go/src/database/sql/sql_test.go:4722:4: b.SetParallelism undefined (type *testing.B has no field or method SetParallelism)
```


### debug/buildinfo wasi/wasm

build error

```text
FAIL	debug/buildinfo	0.000s
# debug/buildinfo
/usr/local/go/src/debug/buildinfo/buildinfo.go:80:19: undefined: debug.ParseBuildInfo
```


### debug/elf wasi/wasm

build error

```text
FAIL	debug/elf	0.000s
# debug/elf
/usr/local/go/src/debug/elf/file_test.go:1159:10: undefined: net.ResolveIPAddr
```


### debug/gosym wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2148283037/main /tmp/tinygo2148283037/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo2148283037/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	debug/gosym	0.000s
error: failed to link /tmp/tinygo2148283037/main: exit status 1
```


### debug/pe wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo4240434362/main /tmp/tinygo4240434362/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo4240434362/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	debug/pe	0.000s
error: failed to link /tmp/tinygo4240434362/main: exit status 1
```


### encoding/asn1 wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3731190783/main /tmp/tinygo3731190783/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: log
failed to run tool: wasm-ld
FAIL	encoding/asn1	0.000s
error: failed to link /tmp/tinygo3731190783/main: exit status 1
```


### encoding/binary wasi/wasm

failure

```text
Failures/Tests: 1/16
=== RUN   TestUnexportedRead
panic: reflect: value is not settable
Error: failed to run main module `/tmp/tinygo215065872/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3df0 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0xbbb2 - (reflect.Value).checkRO
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:56:8
           2: 0xc0e1 - (reflect.Value).SetInt
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:1132:11
           3: 0x728eb - (*encoding/binary.decoder).int32
                           at /usr/local/go/src/encoding/binary/binary.go:656:11              - (*encoding/binary.decoder).value
                           at /usr/local/go/src/encoding/binary/binary.go:656:25
           4: 0x7254c - (*encoding/binary.decoder).value
                           at /usr/local/go/src/encoding/binary/binary.go:636:12
           5: 0x71639 - encoding/binary.Read
           6: 0x7b88b - encoding/binary.TestUnexportedRead
                           at /usr/local/go/src/encoding/binary/binary_test.go:395:6
           7: 0x2af34 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x56355 - (*testing.T).Run
           9: 0x2ac3c - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x2af34 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x2556c - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/fb/fbc5d26cd0caebeb345e8f586b2417fd3156bc04f7d17813959166a5c6f5f5bb-d:179:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          12: 0x20f6c - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x1946 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x20e53 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          15: 0x20bcb - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### encoding/gob wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1595122478/main /tmp/tinygo1595122478/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1595122478/main --output /tmp/tinygo1595122478/main
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $vendor/github.com/ydnar/wasm-tools-go/wasi/cli/environment.wasmimport_GetArguments
 (i64.const 0)
)
(on argument 0)
Fatal: error validating input
FAIL	encoding/gob	0.000s
error: wasm-opt failed: exit status 1
```


### encoding/pem wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2331471754/main /tmp/tinygo2331471754/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: log
failed to run tool: wasm-ld
FAIL	encoding/pem	0.000s
error: failed to link /tmp/tinygo2331471754/main: exit status 1
```


### encoding/xml wasi/wasm

failure

```text
Failures/Tests: 1/336
=== RUN   TestCVE202228131
Error: failed to run main module `/tmp/tinygo760277929/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x9c934 - (*encoding/xml.Decoder).unmarshalPath
                           at /usr/local/go/src/encoding/xml/read.go:711:56
           1: 0x98aa9 - <unknown>!(*encoding/xml.Decoder).unmarshal
           2: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
           3: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
           4: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
           5: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
           6: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
           7: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
           8: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
           9: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          10: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          11: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          12: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          13: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          14: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          15: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          16: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          17: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          18: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          19: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          20: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          21: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          22: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          23: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          24: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          25: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          26: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          27: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          28: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          29: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          30: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          31: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          32: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          33: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          34: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          35: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          36: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          37: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          38: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          39: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          40: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          41: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          42: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          43: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          44: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          45: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          46: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          47: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          48: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          49: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          50: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          51: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          52: 0x98b68 - <unknown>!(*encoding/xml.Decoder).unmarshal
          53: 0x969b8 - (*encoding/xml.Decoder).DecodeElement
          54: 0x9646c - (*encoding/xml.Decoder).Decode
                           at /usr/local/go/src/encoding/xml/read.go:140:24
          55: 0x96152 - encoding/xml.Unmarshal
                           at /usr/local/go/src/encoding/xml/read.go:134:49
          56: 0xb288f - encoding/xml.TestCVE202228131
                           at /usr/local/go/src/encoding/xml/read_test.go:1106:18
          57: 0x38c9b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          58: 0x71b65 - (*testing.T).Run
          59: 0x389a3 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          60: 0x38c9b - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          61: 0x2e941 - <unknown>!runtime.run$1
          62: 0x2ba81 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          63: 0x1a7d - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          64: 0x2b968 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          65: 0x2b77a - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: memory fault at wasm address 0xe400001 in linear memory of size 0xa00000
    3: wasm trap: out of bounds memory access

```


### errors wasi/wasm

failure

```text
Failures/Tests: 21/56
=== RUN   TestAs
--- FAIL: TestAs (0.01s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0x458a0)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0x458a0) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x458a0)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x458a0) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0x458a0)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0x458a0) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0x458a0)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0x458a0) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0x458c0)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0x458c0) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0x458b0)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0x458b0) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x458b0)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x458b0) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0x458b0)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x458f0)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27064)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0x458b0) (0.00s)
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
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0x458b0)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x458f0)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27064)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0x458b0) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/7:As(Errorf(...,_oh_no),_0x458c0)
    --- PASS: TestAs/7:As(Errorf(...,_oh_no),_0x458c0) (0.00s)
=== RUN   TestAs/17:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/17:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAs/13:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/13:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/16:As(Errorf(...,_multiError),_0x458b0)
        got errors_test.multiErr{errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x458f0)}}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27064)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/16:As(Errorf(...,_multiError),_0x458b0) (0.00s)
=== RUN   TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT())
    --- PASS: TestAs/1:As(Errorf(...,_pitied_the_fool),_errorT()) (0.00s)
=== RUN   TestAs/11:As(Errorf(...,_multiError),_errorT(poser))
    --- PASS: TestAs/11:As(Errorf(...,_multiError),_errorT(poser)) (0.00s)
=== RUN   TestAs/0:As(Errorf(...,_<nil>),_0x458a0)
    --- PASS: TestAs/0:As(Errorf(...,_<nil>),_0x458a0) (0.00s)
=== RUN   TestAs/3:As(Errorf(...,_errorT()),_0x458a0)
    --- PASS: TestAs/3:As(Errorf(...,_errorT()),_0x458a0) (0.00s)
=== RUN   TestAs/4:As(Errorf(...,_wrapped),_errorT(T))
    --- PASS: TestAs/4:As(Errorf(...,_wrapped),_errorT(T)) (0.00s)
=== RUN   TestAs/8:As(Errorf(...,_err),_0x458b0)
        match: got true; want false
        FailNow is incomplete, requires runtime.Goexit()
        got &errors.errorString{s:"err"}, want <nil>
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/8:As(Errorf(...,_err),_0x458b0) (0.00s)
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo2328385259/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3182 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x102aa - (Go interface method)
                           at /usr/local/go/src/errors/wrap.go:102:8              - errors.As
                           at /usr/local/go/src/errors/wrap.go:109:24
           2: 0x73fc2 - errors_test.TestAsValidation$1
                           at /usr/local/go/src/errors/wrap_test.go:232:22
           3: 0x2ac9d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x554a9 - (*testing.T).Run
           5: 0x73e07 - errors_test.TestAsValidation
                           at /usr/local/go/src/errors/wrap_test.go:228:8
           6: 0x2ac9d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x554a9 - (*testing.T).Run
           8: 0x2a9a5 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x2ac9d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x25f25 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/29/296ea2046c05354d953725f9ec87bf4599cebf04d3fee3fb5de97bc80e2f53e0-d:83:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          11: 0x21963 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x1845 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x2184a - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x215c2 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x458a0)
    --- PASS: TestAs/2:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x458a0) (0.00s)
=== RUN   TestAs/5:As(Errorf(...,_error),_errorT())
    --- PASS: TestAs/5:As(Errorf(...,_error),_errorT()) (0.00s)
=== RUN   TestAs/6:As(Errorf(...,_path),_0x458a0)
    --- PASS: TestAs/6:As(Errorf(...,_path),_0x458a0) (0.00s)
=== RUN   TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x458b0)
    --- PASS: TestAs/9:As(Errorf(...,_open_non-existing:_file_does_not_exist),_0x458b0) (0.00s)
=== RUN   TestAs/10:As(Errorf(...,_path_error),_0x458b0)
        got errors_test.wrapped{msg:"path error", err:(*fs.PathError)(0x458f0)}, want &fs.PathError{Op:"open", Path:"non-existing", Err:(*errors.errorString)(0x27064)}
        FailNow is incomplete, requires runtime.Goexit()
    --- FAIL: TestAs/10:As(Errorf(...,_path_error),_0x458b0) (0.00s)
=== RUN   TestAs/12:As(Errorf(...,_multiError),_errorT())
    --- PASS: TestAs/12:As(Errorf(...,_multiError),_errorT()) (0.00s)
=== RUN   TestAs/14:As(Errorf(...,_multiError),_errorT(T))
    --- PASS: TestAs/14:As(Errorf(...,_multiError),_errorT(T)) (0.00s)
=== RUN   TestAs/15:As(Errorf(...,_multiError),_errorT(a))
    --- PASS: TestAs/15:As(Errorf(...,_multiError),_errorT(a)) (0.00s)
=== RUN   TestAsValidation
=== RUN   TestAsValidation/<nil>(<nil>)
panic: errors: target cannot be nil
Error: failed to run main module `/tmp/tinygo2328385259/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3182 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x102aa - (Go interface method)
                           at /usr/local/go/src/errors/wrap.go:102:8              - errors.As
                           at /usr/local/go/src/errors/wrap.go:109:24
           2: 0x73fc2 - errors_test.TestAsValidation$1
                           at /usr/local/go/src/errors/wrap_test.go:232:22
           3: 0x2ac9d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x554a9 - (*testing.T).Run
           5: 0x73e07 - errors_test.TestAsValidation
                           at /usr/local/go/src/errors/wrap_test.go:228:8
           6: 0x2ac9d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x554a9 - (*testing.T).Run
           8: 0x2a9a5 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x2ac9d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x25f25 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/29/296ea2046c05354d953725f9ec87bf4599cebf04d3fee3fb5de97bc80e2f53e0-d:83:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          11: 0x21963 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x1845 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x2184a - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x215c2 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### flag wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo783808678/main /tmp/tinygo783808678/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo783808678/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	flag	0.000s
error: failed to link /tmp/tinygo783808678/main: exit status 1
```


### fmt wasi/wasm

failure

```text
Failures/Tests: 1/3
=== RUN   TestSprintf
    Sprintf("%#v", 0x2f) = "(func)(0x2f)" want "(func(*testing.T))(0xPTR)"
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo2692643401/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x194b7 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:71:7
           1: 0x62e8 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:134:16
           2: 0x3d83 - (*reflect.rawType).isNamed
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:491:11
           3: 0x416d - <unknown>!(*reflect.rawType).String
           4: 0xbf5e - (reflect.Value).String
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/value.go:506:33
           5: 0x1be3c - (Go interface method)
                           at /usr/local/go/src/regexp/syntax/prog.go:125:17
           6: 0x77490 - <unknown>!(*fmt.pp).handleMethods
           7: 0x7119e - <unknown>!(*fmt.pp).printArg
           8: 0x73d6b - <unknown>!(*fmt.pp).doPrintf
           9: 0x244c7 - fmt.Sprintf
                           at /usr/local/go/src/fmt/print.go:239:12
          10: 0xa7308 - fmt_test.TestSprintf
                           at /usr/local/go/src/fmt/fmt_test.go:1095:15
          11: 0x4f77f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x8c5ea - (*testing.T).Run
          13: 0x4f487 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          14: 0x4f77f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          15: 0x2a64d - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/66/665da5d4c977fc2a206006294ded03ebd6df63735e00381c714cf30190ea5398-d:233:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          16: 0x25ec6 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          17: 0x1a05 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          18: 0x25dac - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          19: 0x25b23 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/ast wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1990993713/main /tmp/tinygo1990993713/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
failed to run tool: wasm-ld
FAIL	go/ast	0.000s
error: failed to link /tmp/tinygo1990993713/main: exit status 1
```


### go/build wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1008315131/main /tmp/tinygo1008315131/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo1008315131/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	go/build	0.000s
error: failed to link /tmp/tinygo1008315131/main: exit status 1
```


### go/build/constraint wasi/wasm

failure

```text
Failures/Tests: 7/13
=== RUN   TestLex/0
    --- PASS: TestLex/0 (0.00s)
=== RUN   TestLex/2
    --- PASS: TestLex/2 (0.00s)
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
Error: failed to run main module `/tmp/tinygo2674848434/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x38e6 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x71012 - (*go/build/constraint.exprParser).lex
                           at /usr/local/go/src/go/build/constraint/expr.go:339:8
           2: 0x73447 - go/build/constraint.lexHelp
                           at /usr/local/go/src/go/build/constraint/expr_test.go:108:7              - go/build/constraint.TestLex$1
                           at /usr/local/go/src/go/build/constraint/expr_test.go:77:24
           3: 0x3031d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x5524e - (*testing.T).Run
           5: 0x7320b - go/build/constraint.TestLex
                           at /usr/local/go/src/go/build/constraint/expr_test.go:73:8
           6: 0x3031d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x5524e - (*testing.T).Run
           8: 0x30025 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x3031d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x2c48d - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/30/30202da01dd9f128e3d8052cae5abedd5e12e2a69b87c6de9d7decc51b0c3b37-d:63:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          11: 0x27ed9 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x185c - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x27dbf - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x27b36 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
=== RUN   TestLex/1
    --- PASS: TestLex/1 (0.00s)
=== RUN   TestLex/3
    --- PASS: TestLex/3 (0.00s)
=== RUN   TestLex/5
panic: invalid syntax at ²
Error: failed to run main module `/tmp/tinygo2674848434/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x38e6 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x71012 - (*go/build/constraint.exprParser).lex
                           at /usr/local/go/src/go/build/constraint/expr.go:339:8
           2: 0x73447 - go/build/constraint.lexHelp
                           at /usr/local/go/src/go/build/constraint/expr_test.go:108:7              - go/build/constraint.TestLex$1
                           at /usr/local/go/src/go/build/constraint/expr_test.go:77:24
           3: 0x3031d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x5524e - (*testing.T).Run
           5: 0x7320b - go/build/constraint.TestLex
                           at /usr/local/go/src/go/build/constraint/expr_test.go:73:8
           6: 0x3031d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x5524e - (*testing.T).Run
           8: 0x30025 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           9: 0x3031d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x2c48d - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/30/30202da01dd9f128e3d8052cae5abedd5e12e2a69b87c6de9d7decc51b0c3b37-d:63:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          11: 0x27ed9 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          12: 0x185c - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          13: 0x27dbf - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          14: 0x27b36 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/constant wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3550536449/main /tmp/tinygo3550536449/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
failed to run tool: wasm-ld
FAIL	go/constant	0.000s
error: failed to link /tmp/tinygo3550536449/main: exit status 1
```


### go/doc wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo4247959433/main /tmp/tinygo4247959433/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
failed to run tool: wasm-ld
FAIL	go/doc	0.000s
error: failed to link /tmp/tinygo4247959433/main: exit status 1
```


### go/doc/comment wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1970295906/main /tmp/tinygo1970295906/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo1970295906/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	go/doc/comment	0.000s
error: failed to link /tmp/tinygo1970295906/main: exit status 1
```


### go/format wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo888137399/main /tmp/tinygo888137399/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
failed to run tool: wasm-ld
FAIL	go/format	0.000s
error: failed to link /tmp/tinygo888137399/main: exit status 1
```


### go/importer wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1858079759/main /tmp/tinygo1858079759/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: /tmp/tinygo1858079759/main.o: undefined symbol: syscall.Faccessat
wasm-ld: error: lto.tmp: undefined symbol: log
failed to run tool: wasm-ld
FAIL	go/importer	0.000s
error: failed to link /tmp/tinygo1858079759/main: exit status 1
```


### go/parser wasi/wasm

failure

```text
Failures/Tests: 1/3
=== RUN   TestParseFile
panic: (125144:0x00020510)
Error: failed to run main module `/tmp/tinygo3903055257/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x378a - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x8e4e8 - (*go/parser.parser).error
                           at /usr/local/go/src/go/parser/parser.go:277:9
           2: 0x97fde - (*go/parser.parser).parseIndexOrSliceOrInstance
                           at /usr/local/go/src/go/parser/parser.go:1587:12              - (*go/parser.parser).parsePrimaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1732:37
           3: 0xa2d03 - (*go/parser.parser).parseUnaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1835:27
           4: 0x9877b - (*go/parser.parser).parseBinaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1856:23
           5: 0x98a60 - (*go/parser.parser).parseBinaryExpr
                           at /usr/local/go/src/go/parser/parser.go:1870:25
           6: 0xa2465 - (*go/parser.parser).parseExpr
                           at /usr/local/go/src/go/parser/parser.go:1881:26
           7: 0x9606c - (*go/parser.parser).parseExprList
                           at /usr/local/go/src/go/parser/parser.go:502:33              - (*go/parser.parser).parseList
                           at /usr/local/go/src/go/parser/parser.go:514:25
           8: 0x9173a - <unknown>!(*go/parser.parser).parseValueSpec$bound
           9: 0x8f1cc - (*go/parser.parser).parseGenDecl
                           at /usr/local/go/src/go/parser/parser.go:2740:24
          10: 0x8fb15 - (*go/parser.parser).parseDecl
                           at /usr/local/go/src/go/parser/parser.go:2835:9
          11: 0x8cc66 - go/parser.ParseFile
                           at /usr/local/go/src/go/parser/parser.go:2886:38
          12: 0xa996f - go/parser.TestParseFile
                           at /usr/local/go/src/go/parser/parser_test.go:46:21
          13: 0x2faea - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          14: 0x76666 - (*testing.T).Run
          15: 0x2f7f2 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          16: 0x2faea - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          17: 0x25f24 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/df/df1ffbc2f67009cb7164e9eddbd8e4a1427bd474a1a1b5ebd8579dc5d45f2a14-d:107:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          18: 0x20eab - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          19: 0x1988 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          20: 0x20d92 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          21: 0x20b0a - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### go/printer wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1385324314/main /tmp/tinygo1385324314/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
failed to run tool: wasm-ld
FAIL	go/printer	0.000s
error: failed to link /tmp/tinygo1385324314/main: exit status 1
```


### go/token wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3418352107/main /tmp/tinygo3418352107/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo3418352107/main --output /tmp/tinygo3418352107/main
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $vendor/github.com/ydnar/wasm-tools-go/wasi/cli/environment.wasmimport_GetArguments
 (i64.const 0)
)
(on argument 0)
Fatal: error validating input
FAIL	go/token	0.000s
error: wasm-opt failed: exit status 1
```


### go/types wasi/wasm

build error

```text
FAIL	go/types	0.000s
# go/types_test
/usr/local/go/src/go/types/self_test.go:103:4: b.ReportMetric undefined (type *testing.B has no field or method ReportMetric)
```


### hash/crc32 wasi/wasm

failure

```text
Failures/Tests: 1/8
=== RUN   TestArchIEEE
    Arch-specific IEEE not available.
    SkipNow is incomplete, requires runtime.Goexit()
panic: not available
Error: failed to run main module `/tmp/tinygo2973868432/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x33de - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x6ccde - hash/crc32.archInitIEEE
                           at /usr/local/go/src/hash/crc32/crc32_otherarch.go:10:57
           2: 0x70bc5 - hash/crc32.TestArchIEEE
                           at /usr/local/go/src/hash/crc32/crc32_test.go:232:14
           3: 0x25ccb - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x52ceb - (*testing.T).Run
           5: 0x259d3 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x25ccb - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x1fab9 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/42/42abff43a2f6d063760b5c32884a73c3b8a5ebac782b8fcf07ac3452956a7eef-d:67:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x1b604 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x18c8 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1b4f3 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x1b2ff - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### hash/maphash wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2682996694/main /tmp/tinygo2682996694/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
failed to run tool: wasm-ld
FAIL	hash/maphash	0.000s
error: failed to link /tmp/tinygo2682996694/main: exit status 1
```


### html/template wasi/wasm

failure

```text
Failures/Tests: 1/1
=== RUN   TestAddParseTreeHTML
panic: unimplemented: (reflect.Type).NumOut()
Error: failed to run main module `/tmp/tinygo1248341731/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x42e0 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x561c - (*reflect.rawType).NumOut
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1012:7
           2: 0x10429c - (Go interface method)
                           at /usr/local/go/src/text/template/funcs.go:112:6              - text/template.goodFunc
                           at /usr/local/go/src/text/template/funcs.go:115:17              - text/template.addValueFuncs
                           at /usr/local/go/src/text/template/funcs.go:96:15
           3: 0x10e17c - (*text/template.Template).Funcs
                           at /usr/local/go/src/text/template/template.go:181:15
           4: 0x137111 - (*html/template.escaper).commit
                           at /usr/local/go/src/html/template/escape.go:918:25              - html/template.escapeTemplate
                           at /usr/local/go/src/html/template/escape.go:40:17
           5: 0x137daf - (*html/template.Template).lookupAndEscapeTemplate
                           at /usr/local/go/src/html/template/template.go:163:23              - (*html/template.Template).ExecuteTemplate
                           at /usr/local/go/src/html/template/template.go:135:40
           6: 0x14114b - html/template.TestAddParseTreeHTML
                           at /usr/local/go/src/html/template/clone_test.go:25:29
           7: 0x574a6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x114658 - (*testing.T).Run
           9: 0x571ae - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          10: 0x574a6 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          11: 0x47516 - <unknown>!runtime.run$1
          12: 0x44678 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          13: 0x1f7a - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          14: 0x44566 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          15: 0x44371 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### image wasi/wasm

failure

```text
Failures/Tests: 1/3
=== RUN   TestNewXxxBadRectangle
panic: image: NewRGBA Rectangle has huge or negative dimensions
Error: failed to run main module `/tmp/tinygo3068521352/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x349c - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x76ad6 - (image.Rectangle).Dx
                           at /usr/local/go/src/image/image.go:96:8              - image.pixelBufferLength
                           at /usr/local/go/src/image/image.go:94:47
           2: 0x74e2f - image.NewRGBA
                           at /usr/local/go/src/image/image.go:229:42
           3: 0x83595 - image.TestNewXxxBadRectangle$2
                           at /usr/local/go/src/image/image_test.go:108:39
           4: 0x8373b - image.TestNewXxxBadRectangle$1
                           at /usr/local/go/src/image/image_test.go:94:10
           5: 0x82563 - image.TestNewXxxBadRectangle
                           at /usr/local/go/src/image/image_test.go:138:16
           6: 0x35808 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x354fe - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x35808 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x2ec6c - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/03/03696e0658b26ce2ed516312d26adbf88abfcc3eab0abe0b39a79e0462e8f45c-d:101:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          10: 0x2a2dc - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11: 0x1985 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x2a1c3 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          13: 0x29f3b - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### image/color wasi/wasm

failure

```text
Failures/Tests: 1/1
=== RUN   TestSqDiff
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo1690312105/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x336e - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x3663 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x6a391 - (Go interface method)
           3: 0x6b1af - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48              - image/color.TestSqDiff
                           at /usr/local/go/src/image/color/color_test.go:44:28
           4: 0x269a9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x2669f - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x269a9 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x207fa - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/4d/4dadc14d436b349970b7a4071a99fc9f8aefe01c3235a3bddedb0326061282e8-d:73:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x1c148 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1857 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x1c02f - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x1bda7 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### image/draw wasi/wasm

failure

```text
Failures/Tests: 1/9
=== RUN   TestSqDiff
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo395808264/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3731 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x3a26 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x89853 - (Go interface method)
           3: 0x9bf94 - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48              - image/draw.TestSqDiff
                           at /usr/local/go/src/image/draw/draw_test.go:807:28
           4: 0x3ed66 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x3ea5c - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x3ed66 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x39112 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/2a/2a9b332c08e48a6461f4d90bdca395e8895837da22f04105e348adb36252d90f-d:105:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x3284d - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1992 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x32734 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x324ac - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### image/gif wasi/wasm

build error

```text
FAIL	image/gif	0.000s
# image/gif
/usr/local/go/src/image/gif/reader_test.go:421:26: s1.HeapAlloc undefined (type *runtime.MemStats has no field or method HeapAlloc)
/usr/local/go/src/image/gif/reader_test.go:421:41: s0.HeapAlloc undefined (type *runtime.MemStats has no field or method HeapAlloc)
```


### image/jpeg wasi/wasm

build error

```text
FAIL	image/jpeg	0.000s
# image/jpeg
/usr/local/go/src/image/jpeg/reader_test.go:253:9: undefined: debug.SetTraceback
```


### io wasi/wasm

failure

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


### io/fs wasi/wasm

failure

```text
Failures/Tests: 2/6
=== RUN   TestGlob
    Glob(`gl?b.go`) = []string(nil) want glob.go
--- FAIL: TestGlob (0.03s)
=== RUN   TestCVE202230630
Error: failed to run main module `/tmp/tinygo2229007371/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x11c0e - path.matchChunk
                           at /usr/local/go/src/path/match.go:123:6
           1: 0x1158b - path.Match
                           at /usr/local/go/src/path/match.go:48:27
           2: 0x44883 - (Go interface assert)
                           at /usr/local/go/src/io/fs/glob.go:49:25              - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:44:22
           3: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           4: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           5: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           6: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           7: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           8: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
           9: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          10: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          11: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          12: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          13: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          14: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          15: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          16: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          17: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          18: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          19: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          20: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          21: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          22: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          23: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          24: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          25: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          26: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          27: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          28: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          29: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          30: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          31: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          32: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          33: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          34: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          35: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          36: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          37: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          38: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          39: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          40: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          41: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          42: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          43: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          44: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          45: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          46: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          47: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          48: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          49: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          50: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          51: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          52: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          53: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          54: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          55: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          56: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          57: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          58: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          59: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          60: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          61: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          62: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          63: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          64: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          65: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          66: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          67: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          68: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          69: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          70: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          71: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          72: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          73: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          74: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          75: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          76: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          77: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          78: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          79: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          80: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          81: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          82: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          83: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          84: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          85: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          86: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          87: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          88: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          89: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          90: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          91: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          92: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          93: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          94: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          95: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          96: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          97: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          98: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
          99: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         100: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         101: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         102: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         103: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         104: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         105: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         106: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         107: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         108: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         109: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         110: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         111: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         112: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         113: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         114: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         115: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         116: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         117: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         118: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         119: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         120: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         121: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         122: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         123: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         124: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         125: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         126: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         127: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         128: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         129: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         130: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         131: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         132: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         133: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         134: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         135: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         136: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         137: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         138: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         139: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         140: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         141: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         142: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         143: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         144: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         145: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         146: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         147: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         148: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         149: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         150: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         151: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         152: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         153: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         154: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         155: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         156: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         157: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         158: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         159: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         160: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         161: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         162: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         163: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         164: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         165: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         166: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         167: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         168: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         169: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         170: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         171: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         172: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         173: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         174: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         175: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         176: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         177: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         178: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         179: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         180: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         181: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         182: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         183: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         184: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         185: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         186: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         187: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         188: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         189: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         190: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         191: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         192: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         193: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         194: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         195: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         196: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         197: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         198: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         199: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         200: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         201: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         202: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         203: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         204: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         205: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         206: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         207: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         208: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         209: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         210: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         211: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         212: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         213: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         214: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         215: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         216: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         217: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         218: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         219: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         220: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         221: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         222: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         223: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         224: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         225: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         226: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         227: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         228: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         229: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         230: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         231: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         232: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         233: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         234: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         235: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         236: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         237: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         238: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         239: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         240: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         241: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         242: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         243: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         244: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         245: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         246: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         247: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         248: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         249: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         250: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         251: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         252: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         253: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         254: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         255: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         256: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         257: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         258: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         259: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         260: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         261: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         262: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         263: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         264: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         265: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         266: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         267: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         268: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         269: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         270: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         271: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         272: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         273: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         274: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         275: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         276: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         277: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         278: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         279: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         280: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         281: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         282: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         283: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         284: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         285: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         286: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         287: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         288: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         289: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         290: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         291: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         292: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         293: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         294: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         295: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         296: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         297: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         298: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         299: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         300: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         301: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         302: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         303: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         304: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         305: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         306: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         307: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         308: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         309: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         310: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         311: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         312: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         313: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         314: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         315: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         316: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         317: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         318: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         319: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         320: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         321: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         322: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         323: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         324: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         325: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         326: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         327: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         328: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         329: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         330: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         331: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         332: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         333: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         334: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         335: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         336: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         337: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         338: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         339: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         340: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         341: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         342: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         343: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         344: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         345: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         346: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         347: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         348: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         349: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         350: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         351: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         352: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         353: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         354: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         355: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         356: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         357: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         358: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         359: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         360: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         361: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         362: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         363: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         364: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         365: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         366: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         367: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         368: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         369: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         370: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         371: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         372: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         373: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         374: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         375: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         376: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         377: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         378: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         379: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         380: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         381: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         382: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         383: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         384: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         385: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         386: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         387: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         388: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         389: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         390: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         391: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         392: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         393: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         394: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         395: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         396: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         397: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         398: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         399: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         400: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         401: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         402: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         403: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         404: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         405: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         406: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         407: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         408: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         409: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         410: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         411: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         412: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         413: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         414: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         415: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         416: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         417: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         418: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         419: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         420: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         421: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         422: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         423: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         424: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         425: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         426: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         427: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         428: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         429: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         430: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         431: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         432: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         433: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         434: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         435: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         436: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         437: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         438: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         439: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         440: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         441: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         442: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         443: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         444: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         445: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         446: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         447: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         448: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         449: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         450: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         451: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         452: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         453: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         454: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         455: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         456: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         457: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         458: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         459: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         460: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         461: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         462: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         463: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         464: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         465: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         466: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         467: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         468: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         469: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         470: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         471: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         472: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         473: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         474: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         475: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         476: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         477: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         478: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         479: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         480: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         481: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         482: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         483: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         484: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         485: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         486: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         487: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         488: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         489: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         490: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         491: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         492: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         493: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         494: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         495: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         496: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         497: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         498: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         499: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         500: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         501: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         502: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         503: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         504: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         505: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         506: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         507: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         508: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         509: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         510: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         511: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         512: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         513: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         514: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         515: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         516: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         517: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         518: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         519: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         520: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         521: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         522: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         523: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         524: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         525: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         526: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         527: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         528: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         529: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         530: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         531: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         532: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         533: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         534: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         535: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         536: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         537: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         538: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         539: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         540: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         541: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         542: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         543: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         544: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         545: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         546: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         547: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         548: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         549: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         550: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         551: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         552: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         553: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         554: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         555: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         556: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         557: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         558: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         559: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         560: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         561: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         562: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         563: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         564: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         565: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         566: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         567: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         568: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         569: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         570: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         571: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         572: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         573: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         574: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         575: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         576: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         577: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         578: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         579: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         580: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         581: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         582: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         583: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         584: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         585: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         586: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         587: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         588: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         589: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         590: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         591: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         592: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         593: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         594: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         595: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         596: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         597: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         598: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         599: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         600: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         601: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         602: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         603: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         604: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         605: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         606: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         607: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         608: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         609: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         610: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         611: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         612: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         613: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         614: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         615: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         616: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         617: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         618: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         619: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         620: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         621: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         622: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         623: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         624: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         625: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         626: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         627: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         628: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         629: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         630: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         631: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         632: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         633: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         634: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         635: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         636: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         637: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         638: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         639: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         640: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         641: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         642: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         643: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         644: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         645: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         646: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         647: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         648: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         649: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         650: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         651: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         652: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         653: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         654: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         655: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         656: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         657: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         658: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         659: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         660: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         661: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         662: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         663: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         664: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         665: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         666: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         667: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         668: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         669: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         670: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         671: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         672: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         673: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         674: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         675: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         676: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         677: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         678: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         679: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         680: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         681: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         682: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         683: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         684: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         685: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         686: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         687: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         688: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         689: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         690: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         691: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         692: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         693: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         694: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         695: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         696: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         697: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         698: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         699: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         700: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         701: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         702: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         703: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         704: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         705: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         706: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         707: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         708: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         709: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         710: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         711: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         712: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         713: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         714: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         715: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         716: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         717: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         718: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         719: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         720: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         721: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         722: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         723: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         724: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         725: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         726: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         727: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         728: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         729: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         730: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         731: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         732: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         733: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         734: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         735: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         736: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         737: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         738: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         739: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         740: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         741: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         742: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         743: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         744: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         745: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         746: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         747: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         748: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         749: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         750: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         751: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         752: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         753: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         754: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         755: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         756: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         757: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         758: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         759: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         760: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         761: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         762: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         763: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         764: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         765: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         766: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         767: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         768: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         769: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         770: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         771: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         772: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         773: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         774: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         775: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         776: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         777: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         778: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         779: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         780: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         781: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         782: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         783: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         784: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         785: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         786: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         787: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         788: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         789: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         790: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         791: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         792: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         793: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         794: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         795: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         796: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         797: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         798: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         799: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         800: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         801: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         802: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         803: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         804: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         805: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         806: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         807: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         808: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         809: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         810: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         811: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         812: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         813: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         814: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         815: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         816: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         817: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         818: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         819: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         820: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         821: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         822: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         823: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         824: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         825: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         826: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         827: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         828: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         829: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         830: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         831: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         832: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         833: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         834: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         835: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         836: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         837: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         838: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         839: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         840: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         841: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         842: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         843: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         844: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         845: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         846: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         847: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         848: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         849: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         850: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         851: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         852: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         853: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         854: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         855: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         856: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         857: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         858: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         859: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         860: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         861: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         862: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         863: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         864: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         865: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         866: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         867: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         868: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         869: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         870: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         871: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         872: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         873: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         874: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         875: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         876: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         877: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         878: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         879: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         880: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         881: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         882: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         883: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         884: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         885: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         886: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         887: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         888: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         889: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         890: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         891: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         892: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         893: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         894: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         895: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         896: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         897: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         898: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         899: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         900: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         901: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         902: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         903: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         904: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         905: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         906: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         907: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         908: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         909: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         910: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         911: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         912: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         913: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         914: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         915: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         916: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         917: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         918: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         919: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         920: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         921: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         922: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         923: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         924: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         925: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         926: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         927: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         928: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         929: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         930: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         931: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         932: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         933: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         934: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         935: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         936: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         937: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         938: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         939: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         940: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         941: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         942: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         943: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         944: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         945: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         946: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         947: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         948: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         949: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         950: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         951: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         952: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         953: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         954: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         955: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         956: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         957: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         958: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         959: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         960: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         961: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         962: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         963: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         964: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         965: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         966: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         967: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         968: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         969: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         970: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         971: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         972: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         973: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         974: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         975: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         976: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         977: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         978: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         979: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         980: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         981: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         982: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         983: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         984: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         985: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         986: 0x449dc - io/fs.globWithLimit
                           at /usr/local/go/src/io/fs/glob.go:72:24
         987: 0x44590 - io/fs.Glob
                           at /usr/local/go/src/io/fs/glob.go:34:22
         988: 0x88865 - <unknown>!io/fs_test.TestCVE202230630
         989: 0x29dec - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         990: 0x6cb44 - (*testing.T).Run
         991: 0x29af4 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
         992: 0x29dec - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         993: 0x24e9f - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/71/7165db203a5b207e8aad64f4dbbe3d50948c42aa01ac732215ca4ffa57aeb2ab-d:79:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
         994: 0x202d9 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
         995: 0x18fe - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
         996: 0x201c0 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
         997: 0x1ff38 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: memory fault at wasm address 0x10000000c in linear memory of size 0x60000
    3: wasm trap: out of bounds memory access

```


### io/ioutil wasi/wasm

failure

```text
Failures/Tests: 2/28
=== RUN   TestReadOnlyWriteFile
    Expected an error when writing to read-only file /tmp/TestReadOnlyWriteFile134212601/blurp.txt
    FailNow is incomplete, requires runtime.Goexit()
    want shmorp, got florp
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestReadOnlyWriteFile (0.00s)
=== RUN   TestReadDir
    ReadDir ..: io_test.go file not found
    FailNow is incomplete, requires runtime.Goexit()
    ReadDir ..: ioutil directory not found
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestReadDir (0.00s)

```


### log wasi/wasm

failure

```text
Failures/Tests: 1/9
=== RUN   TestAll
    log output should match "^.*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^.*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/03/11 00:28:17.320625 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/03/11 00:28:17.322083 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/03/11 00:28:17.322293 ???:0: hello 23 world"
    log output should match "^XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): hello 23 world$" is "XXX2024/03/11 00:28:17.322509 ???:0: hello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/03/11 00:28:17.322724 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/03/11 00:28:17.323012 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/03/11 00:28:17.323232 ???:0: XXXhello 23 world"
    log output should match "^[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXXhello 23 world$" is "2024/03/11 00:28:17.323481 ???:0: XXXhello 23 world"
--- FAIL: TestAll (0.02s)

```


### log/slog wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3909188197/main /tmp/tinygo3909188197/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo3909188197/main --output /tmp/tinygo3909188197/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo3909188197/main -o /tmp/tinygo3909188197/main
wasm-tools component new /tmp/tinygo3909188197/main -o /tmp/tinygo3909188197/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=. --wasm component-model --dir=/tmp::/tmp /tmp/tinygo3909188197/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo3909188197/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x401b - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x25d6c - testing/slogtest.withSource
                           at /usr/local/go/src/testing/slogtest/slogtest.go:362:8
           2: 0x22e14 - <unknown>!runtime.initAll
           3: 0x1f001 - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:24:10
           4: 0xea92 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           5: 0x19bd - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x1ef04 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11
           7: 0x1ebd6 - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11
           8: 0x1eb53 - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           9: 0x1eadf - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	log/slog	0.665s
```


### log/syslog wasi/wasm

build error

```text
FAIL	log/syslog	0.000s
# log/syslog
/usr/local/go/src/log/syslog/syslog_test.go:35:21: oe.Temporary undefined (type *net.OpError has no field or method Temporary)
/usr/local/go/src/log/syslog/syslog_test.go:110:15: undefined: net.ListenPacket
```


### maps wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo397213976/main /tmp/tinygo397213976/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo397213976/main.o: undefined symbol: maps.clone
wasm-ld: error: /tmp/tinygo397213976/main.o: undefined symbol: maps.clone
failed to run tool: wasm-ld
FAIL	maps	0.000s
error: failed to link /tmp/tinygo397213976/main: exit status 1
```


### math wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2691323807/main /tmp/tinygo2691323807/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp2
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)
failed to run tool: wasm-ld
FAIL	math	0.000s
error: failed to link /tmp/tinygo2691323807/main: exit status 1
```


### math/bits wasi/wasm

failure

```text
Failures/Tests: 1/12
=== RUN   TestAdd64OverflowPanic
panic: overflow
Error: failed to run main module `/tmp/tinygo3851335049/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x298a - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x6fce6 - math/bits_test.TestAdd64OverflowPanic$1
                           at /usr/local/go/src/math/bits/bits_test.go:816:10
           2: 0x6fe00 - math/bits_test.TestAdd64OverflowPanic$7
                           at /usr/local/go/src/math/bits/bits_test.go:860:28
           3: 0x6ff2b - math/bits_test.TestAdd64OverflowPanic$6
                           at /usr/local/go/src/math/bits/bits_test.go:856:5
           4: 0x6f7d4 - math/bits_test.TestAdd64OverflowPanic
                           at /usr/local/go/src/math/bits/bits_test.go:860:14
           5: 0x26367 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x2605d - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x26367 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x2024d - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/19/196c6203a629495b14a7882fc6691602ad410973a090372256d92752f4e1a352-d:257:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x1bc46 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1977 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x1bb2d - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x1b8a5 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### math/cmplx wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3000415111/main /tmp/tinygo3000415111/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
failed to run tool: wasm-ld
FAIL	math/cmplx	0.000s
error: failed to link /tmp/tinygo3000415111/main: exit status 1
```


### math/rand wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2483209331/main /tmp/tinygo2483209331/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: /tmp/tinygo2483209331/main.o: undefined symbol: syscall.Faccessat
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
failed to run tool: wasm-ld
FAIL	math/rand	0.000s
error: failed to link /tmp/tinygo2483209331/main: exit status 1
```


### math/rand/v2 wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2274969892/main /tmp/tinygo2274969892/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo2274969892/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: /tmp/tinygo2274969892/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: /tmp/tinygo2274969892/main.o: undefined symbol: internal/chacha8rand.block
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: exp
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
failed to run tool: wasm-ld
FAIL	math/rand/v2	0.000s
error: failed to link /tmp/tinygo2274969892/main: exit status 1
```


### mime/quotedprintable wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2823067653/main /tmp/tinygo2823067653/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo2823067653/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	mime/quotedprintable	0.000s
error: failed to link /tmp/tinygo2823067653/main: exit status 1
```


### net/netip wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo2789263348/main /tmp/tinygo2789263348/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo2789263348/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	net/netip	0.000s
error: failed to link /tmp/tinygo2789263348/main: exit status 1
```


### net/rpc/jsonrpc wasi/wasm

build error

```text
FAIL	net/rpc/jsonrpc	0.000s
# net/rpc
/usr/local/go/src/net/rpc/server.go:290:14: method.IsExported undefined (type reflect.Method has no field or method IsExported)
```


### net/smtp wasi/wasm

build error

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


### net/url wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3861735140/main /tmp/tinygo3861735140/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo3861735140/main --output /tmp/tinygo3861735140/main
[wasm-validator error in function \28*encoding/gob.Decoder\29.decOpFor$3] call param types must match, on 
(call $vendor/github.com/ydnar/wasm-tools-go/wasi/cli/environment.wasmimport_GetArguments
 (i64.const 0)
)
(on argument 0)
Fatal: error validating input
FAIL	net/url	0.000s
error: wasm-opt failed: exit status 1
```


### os wasi/wasm

failure

```text
Failures/Tests: 3/37
=== RUN   TestChdir
    Getwd() returned errno 28
--- FAIL: TestChdir (0.00s)
=== RUN   TestGetpagesize
    os.Getpagesize() returns strange value 0
--- FAIL: TestGetpagesize (0.00s)
=== RUN   TestWriteAtInAppendMode
    chtmpdir: errno 28
    FailNow is incomplete, requires runtime.Goexit()
    chtmpdir: chdir : errno 44
    FailNow is incomplete, requires runtime.Goexit()
--- FAIL: TestWriteAtInAppendMode (0.00s)

```


### os/signal wasi/wasm

build error

```text
FAIL	os/signal	0.000s
# internal/testpty
../../../usr/local/go/src/internal/testpty/pty_cgo.go:11:10: fatal: 'fcntl.h' file not found
```


### path/filepath wasi/wasm

failure

```text
Failures/Tests: 2/3
=== RUN   TestGlob
    Glob(`mat?h.go`) = []string(nil) want match.go
--- FAIL: TestGlob (0.04s)
=== RUN   TestCVE202230632
Error: failed to run main module `/tmp/tinygo3824647072/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x7b3b1 - path/filepath.matchChunk
                           at /usr/local/go/src/path/filepath/match.go:123:6
           1: 0x7b053 - path/filepath.Match
                           at /usr/local/go/src/path/filepath/match.go:54:27
           2: 0x7be39 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:254:20
           3: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
           4: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
           5: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
           6: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
           7: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
           8: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
           9: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          10: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          11: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          12: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          13: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          14: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          15: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          16: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          17: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          18: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          19: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          20: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          21: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          22: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          23: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          24: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          25: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          26: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          27: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          28: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          29: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          30: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          31: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          32: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          33: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          34: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          35: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          36: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          37: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          38: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          39: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          40: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          41: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          42: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          43: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          44: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          45: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          46: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          47: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          48: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          49: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          50: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          51: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          52: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          53: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          54: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          55: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          56: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          57: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          58: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          59: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          60: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          61: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          62: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          63: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          64: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          65: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          66: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          67: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          68: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          69: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          70: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          71: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          72: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          73: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          74: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          75: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          76: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          77: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          78: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          79: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          80: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          81: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          82: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          83: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          84: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          85: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          86: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          87: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          88: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          89: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          90: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          91: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          92: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          93: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          94: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          95: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          96: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          97: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          98: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
          99: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         100: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         101: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         102: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         103: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         104: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         105: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         106: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         107: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         108: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         109: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         110: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         111: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         112: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         113: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         114: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         115: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         116: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         117: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         118: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         119: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         120: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         121: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         122: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         123: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         124: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         125: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         126: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         127: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         128: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         129: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         130: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         131: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         132: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         133: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         134: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         135: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         136: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         137: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         138: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         139: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         140: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         141: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         142: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         143: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         144: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         145: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         146: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         147: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         148: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         149: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         150: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         151: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         152: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         153: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         154: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         155: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         156: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         157: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         158: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         159: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         160: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         161: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         162: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         163: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         164: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         165: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         166: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         167: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         168: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         169: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         170: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         171: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         172: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         173: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         174: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         175: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         176: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         177: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         178: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         179: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         180: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         181: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         182: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         183: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         184: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         185: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         186: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         187: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         188: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         189: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         190: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         191: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         192: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         193: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         194: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         195: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         196: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         197: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         198: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         199: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         200: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         201: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         202: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         203: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         204: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         205: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         206: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         207: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         208: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         209: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         210: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         211: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         212: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         213: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         214: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         215: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         216: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         217: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         218: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         219: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         220: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         221: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         222: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         223: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         224: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         225: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         226: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         227: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         228: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         229: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         230: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         231: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         232: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         233: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         234: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         235: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         236: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         237: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         238: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         239: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         240: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         241: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         242: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         243: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         244: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         245: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         246: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         247: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         248: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         249: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         250: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         251: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         252: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         253: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         254: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         255: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         256: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         257: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         258: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         259: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         260: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         261: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         262: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         263: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         264: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         265: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         266: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         267: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         268: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         269: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         270: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         271: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         272: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         273: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         274: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         275: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         276: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         277: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         278: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         279: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         280: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         281: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         282: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         283: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         284: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         285: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         286: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         287: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         288: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         289: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         290: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         291: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         292: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         293: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         294: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         295: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         296: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         297: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         298: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         299: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         300: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         301: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         302: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         303: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         304: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         305: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         306: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         307: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         308: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         309: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         310: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         311: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         312: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         313: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         314: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         315: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         316: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         317: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         318: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         319: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         320: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         321: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         322: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         323: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         324: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         325: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         326: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         327: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         328: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         329: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         330: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         331: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         332: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         333: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         334: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         335: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         336: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         337: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         338: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         339: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         340: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         341: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         342: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         343: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         344: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         345: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         346: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         347: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         348: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         349: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         350: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         351: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         352: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         353: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         354: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         355: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         356: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         357: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         358: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         359: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         360: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         361: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         362: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         363: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         364: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         365: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         366: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         367: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         368: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         369: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         370: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         371: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         372: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         373: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         374: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         375: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         376: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         377: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         378: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         379: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         380: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         381: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         382: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         383: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         384: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         385: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         386: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         387: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         388: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         389: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         390: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         391: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         392: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         393: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         394: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         395: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         396: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         397: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         398: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         399: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         400: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         401: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         402: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         403: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         404: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         405: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         406: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         407: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         408: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         409: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         410: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         411: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         412: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         413: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         414: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         415: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         416: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         417: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         418: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         419: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         420: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         421: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         422: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         423: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         424: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         425: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         426: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         427: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         428: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         429: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         430: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         431: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         432: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         433: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         434: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         435: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         436: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         437: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         438: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         439: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         440: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         441: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         442: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         443: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         444: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         445: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         446: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         447: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         448: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         449: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         450: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         451: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         452: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         453: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         454: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         455: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         456: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         457: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         458: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         459: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         460: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         461: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         462: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         463: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         464: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         465: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         466: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         467: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         468: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         469: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         470: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         471: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         472: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         473: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         474: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         475: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         476: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         477: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         478: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         479: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         480: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         481: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         482: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         483: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         484: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         485: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         486: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         487: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         488: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         489: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         490: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         491: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         492: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         493: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         494: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         495: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         496: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         497: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         498: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         499: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         500: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         501: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         502: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         503: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         504: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         505: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         506: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         507: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         508: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         509: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         510: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         511: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         512: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         513: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         514: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         515: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         516: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         517: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         518: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         519: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         520: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         521: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         522: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         523: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         524: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         525: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         526: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         527: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         528: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         529: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         530: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         531: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         532: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         533: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         534: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         535: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         536: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         537: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         538: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         539: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         540: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         541: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         542: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         543: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         544: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         545: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         546: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         547: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         548: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         549: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         550: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         551: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         552: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         553: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         554: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         555: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         556: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         557: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         558: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         559: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         560: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         561: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         562: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         563: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         564: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         565: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         566: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         567: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         568: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         569: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         570: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         571: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         572: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         573: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         574: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         575: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         576: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         577: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         578: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         579: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         580: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         581: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         582: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         583: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         584: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         585: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         586: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         587: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         588: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         589: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         590: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         591: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         592: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         593: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         594: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         595: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         596: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         597: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         598: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         599: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         600: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         601: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         602: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         603: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         604: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         605: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         606: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         607: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         608: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         609: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         610: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         611: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         612: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         613: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         614: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         615: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         616: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         617: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         618: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         619: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         620: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         621: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         622: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         623: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         624: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         625: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         626: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         627: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         628: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         629: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         630: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         631: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         632: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         633: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         634: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         635: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         636: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         637: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         638: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         639: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         640: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         641: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         642: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         643: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         644: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         645: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         646: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         647: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         648: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         649: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         650: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         651: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         652: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         653: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         654: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         655: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         656: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         657: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         658: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         659: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         660: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         661: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         662: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         663: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         664: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         665: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         666: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         667: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         668: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         669: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         670: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         671: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         672: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         673: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         674: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         675: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         676: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         677: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         678: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         679: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         680: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         681: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         682: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         683: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         684: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         685: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         686: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         687: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         688: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         689: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         690: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         691: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         692: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         693: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         694: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         695: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         696: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         697: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         698: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         699: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         700: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         701: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         702: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         703: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         704: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         705: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         706: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         707: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         708: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         709: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         710: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         711: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         712: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         713: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         714: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         715: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         716: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         717: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         718: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         719: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         720: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         721: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         722: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         723: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         724: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         725: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         726: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         727: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         728: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         729: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         730: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         731: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         732: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         733: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         734: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         735: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         736: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         737: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         738: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         739: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         740: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         741: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         742: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         743: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         744: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         745: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         746: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         747: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         748: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         749: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         750: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         751: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         752: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         753: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         754: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         755: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         756: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         757: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         758: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         759: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         760: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         761: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         762: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         763: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         764: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         765: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         766: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         767: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         768: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         769: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         770: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         771: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         772: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         773: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         774: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         775: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         776: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         777: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         778: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         779: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         780: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         781: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         782: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         783: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         784: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         785: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         786: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         787: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         788: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         789: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         790: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         791: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         792: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         793: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         794: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         795: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         796: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         797: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         798: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         799: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         800: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         801: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         802: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         803: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         804: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         805: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         806: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         807: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         808: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         809: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         810: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         811: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         812: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         813: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         814: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         815: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         816: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         817: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         818: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         819: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         820: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         821: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         822: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         823: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         824: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         825: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         826: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         827: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         828: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         829: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         830: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         831: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         832: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         833: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         834: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         835: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         836: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         837: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         838: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         839: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         840: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         841: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         842: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         843: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         844: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         845: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         846: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         847: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         848: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         849: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         850: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         851: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         852: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         853: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         854: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         855: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         856: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         857: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         858: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         859: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         860: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         861: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         862: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         863: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         864: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         865: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         866: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         867: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         868: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         869: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         870: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         871: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         872: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         873: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         874: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         875: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         876: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         877: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         878: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         879: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         880: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         881: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         882: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         883: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         884: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         885: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         886: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         887: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         888: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         889: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         890: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         891: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         892: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         893: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         894: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         895: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         896: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         897: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         898: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         899: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         900: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         901: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         902: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         903: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         904: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         905: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         906: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         907: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         908: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         909: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         910: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         911: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         912: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         913: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         914: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         915: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         916: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         917: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         918: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         919: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         920: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         921: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         922: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         923: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         924: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         925: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         926: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         927: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         928: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         929: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         930: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         931: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         932: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         933: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         934: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         935: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         936: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         937: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         938: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         939: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         940: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         941: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         942: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         943: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         944: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         945: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         946: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         947: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         948: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         949: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         950: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         951: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         952: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         953: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         954: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         955: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         956: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         957: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         958: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         959: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         960: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         961: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         962: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         963: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         964: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         965: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         966: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         967: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         968: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         969: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         970: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         971: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         972: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         973: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         974: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         975: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         976: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         977: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         978: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         979: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         980: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         981: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         982: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         983: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         984: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         985: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         986: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         987: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         988: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         989: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         990: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         991: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         992: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         993: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         994: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         995: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         996: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         997: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         998: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         999: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1000: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1001: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1002: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1003: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1004: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1005: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1006: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1007: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1008: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1009: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1010: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1011: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1012: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1013: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1014: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1015: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1016: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1017: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1018: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1019: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1020: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1021: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1022: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1023: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1024: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1025: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1026: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1027: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1028: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1029: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1030: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1031: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1032: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1033: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1034: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1035: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1036: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1037: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1038: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1039: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1040: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1041: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1042: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1043: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1044: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1045: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1046: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1047: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1048: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1049: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1050: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1051: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1052: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1053: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1054: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1055: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1056: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1057: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1058: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1059: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1060: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1061: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1062: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1063: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1064: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1065: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1066: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1067: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1068: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1069: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1070: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1071: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1072: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1073: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1074: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1075: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1076: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1077: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1078: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1079: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1080: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1081: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1082: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1083: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1084: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1085: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1086: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1087: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1088: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1089: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1090: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1091: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1092: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1093: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1094: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1095: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1096: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1097: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1098: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1099: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1100: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1101: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1102: 0x7bfc5 - path/filepath.globWithLimit
                           at /usr/local/go/src/path/filepath/match.go:282:24
         1103: 0x7bc50 - path/filepath.Glob
                           at /usr/local/go/src/path/filepath/match.go:243:22
         1104: 0x819c3 - path/filepath_test.TestCVE202230632
                           at /usr/local/go/src/path/filepath/match_test.go:162:16
         1105: 0x2c697 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         1106: 0x61b58 - (*testing.T).Run
         1107: 0x2c39f - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
         1108: 0x2c697 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
         1109: 0x27986 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/69/69d7319c84f52f0989962bd60ff86333367c039c083caa727b0a26564f2ccf0f-d:147:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
         1110: 0x21d73 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
         1111: 0x1969 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
         1112: 0x21c5a - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
         1113: 0x219d2 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: memory fault at wasm address 0x10000003c in linear memory of size 0x60000
    3: wasm trap: out of bounds memory access

```


### plugin wasi/wasm

build error

```text
FAIL	plugin	0.000s
# plugin
../../../usr/local/go/src/plugin/plugin_dlopen.go:10:6: not implemented: build constraints in #cgo line
../../../usr/local/go/src/plugin/plugin_dlopen.go:11:10: fatal: 'dlfcn.h' file not found
```


### regexp wasi/wasm

failure

```text
Failures/Tests: 1/2
=== RUN   TestBadCompile
panic: expression too large
Error: failed to run main module `/tmp/tinygo3803646558/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x39b3 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x2b699 - (*regexp/syntax.parser).checkLimits
                           at /usr/local/go/src/regexp/syntax/parse.go:163:8
           2: 0x2aec1 - (*regexp/syntax.parser).push
           3: 0x347bc - regexp/syntax.parse
                           at /usr/local/go/src/regexp/syntax/parse.go:1063:9              - regexp/syntax.Parse
                           at /usr/local/go/src/regexp/syntax/parse.go:889:14
           4: 0x49844 - regexp.compile
                           at /usr/local/go/src/regexp/regexp.go:172:25
           5: 0x81765 - regexp.Compile
                           at /usr/local/go/src/regexp/regexp.go:135:16
           6: 0x88322 - regexp.compileTest
                           at /usr/local/go/src/regexp/all_test.go:56:20
           7: 0x88b0b - regexp.TestBadCompile
                           at /usr/local/go/src/regexp/all_test.go:76:14
           8: 0x4d47f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x734bd - (*testing.T).Run
          10: 0x4d187 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          11: 0x4d47f - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x4854e - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/af/af4559cfe4edf69b71dc29ce1a2355bc32cd22553b56a2f648bb367548ede916-d:251:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          13: 0x43049 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          14: 0x19d1 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          15: 0x42f30 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          16: 0x42ca8 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### regexp/syntax wasi/wasm

failure

```text
Failures/Tests: 1/8
=== RUN   TestParseInvalidRegexps
panic: expression nests too deeply
Error: failed to run main module `/tmp/tinygo3796347969/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x334d - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x5c77e - (*regexp/syntax.parser).checkHeight
                           at /usr/local/go/src/regexp/syntax/parse.go:270:8
           2: 0x5b0c9 - (*regexp/syntax.parser).checkLimits
                           at /usr/local/go/src/regexp/syntax/parse.go:166:15
           3: 0x5a8af - (*regexp/syntax.parser).push
           4: 0x6386d - regexp/syntax.parse
                           at /usr/local/go/src/regexp/syntax/parse.go:1441:7              - regexp/syntax.Parse
                           at /usr/local/go/src/regexp/syntax/parse.go:889:14
           5: 0x6adcf - regexp/syntax.TestParseInvalidRegexps
                           at /usr/local/go/src/regexp/syntax/parse_test.go:527:22
           6: 0x2ce4e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x2cb44 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x2ce4e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x27577 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/c8/c83f19d2969c72a75eafbf9b6f8374b11bb5a0612b7c179397ec896c59a28f7d-d:73:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          10: 0x2236a - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11: 0x1836 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x22250 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          13: 0x21fc7 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### slices wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1019134375/main /tmp/tinygo1019134375/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo1019134375/main --output /tmp/tinygo1019134375/main
FAIL	slices	0.000s
error: wasm-opt failed: signal: killed
```


### strconv wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3904997221/main /tmp/tinygo3904997221/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: log
wasm-ld: error: lto.tmp: undefined symbol: exp
failed to run tool: wasm-ld
FAIL	strconv	0.000s
error: failed to link /tmp/tinygo3904997221/main: exit status 1
```


### strings wasi/wasm

failure

```text
Failures/Tests: 1/4
=== RUN   TestBuilderGrow
    growLen=100: got 0 allocs during Write; want 1
    growLen=1000: got 0 allocs during Write; want 1
    growLen=10000: got 0 allocs during Write; want 1
    growLen=100000: got 0 allocs during Write; want 1
panic: strings.Builder.Grow: negative count
Error: failed to run main module `/tmp/tinygo4150275446/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3e67 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x33563 - (*strings.Builder).Grow
                           at /usr/local/go/src/strings/builder.go:80:8
           2: 0x878c7 - strings_test.TestBuilderGrow
                           at /usr/local/go/src/strings/builder_test.go:120:8
           3: 0x2f19d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x6c94e - (*testing.T).Run
           5: 0x2eea5 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           6: 0x2f19d - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           7: 0x28c5d - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/7e/7e7530b4b41ba554fcd61a15fb56262397c798b6647dbef18c7e075b40e7bebf-d:415:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           8: 0x22c80 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           9: 0x1b9a - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          10: 0x22b6f - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          11: 0x2297b - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### sync/atomic wasi/wasm

failure

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
--- FAIL: TestUnaligned64 (0.90s)
=== RUN   TestNilDeref
panic: runtime error: nil pointer dereference
Error: failed to run main module `/tmp/tinygo244066245/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x13cb4 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:71:7
           1: 0x1bd8 - runtime.nilPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:134:16
           2: 0x83357 - (*sync/atomic.Int32).CompareAndSwap
                           at /usr/local/go/src/sync/atomic/type.go:84:32              - sync/atomic_test.TestNilDeref$2
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2461:40
           3: 0x827b4 - sync/atomic_test.TestNilDeref$59
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2525:5              - sync/atomic_test.TestNilDeref
                           at /usr/local/go/src/sync/atomic/atomic_test.go:2526:4
           4: 0x27ed0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           5: 0x55617 - (*testing.T).Run
           6: 0x27bd8 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x27ed0 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x21b5a - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/f9/f9c374e6b50bb5564ff0d98214950a7423dae89fb0765aa081b4edd02093723a-d:201:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x1cb77 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x1b27 - tinygo_rewind
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:92
          11: 0x1ca5f - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:112:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x1c872 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### syscall wasi/wasm

failure

```text
Failures/Tests: 1/1
=== RUN   TestMmap
    Mmap: errno 52
    FailNow is incomplete, requires runtime.Goexit()
panic: runtime error: index out of range
Error: failed to run main module `/tmp/tinygo1888783324/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x1a8a6 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime.runtimePanicAt
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:71:7
           1: 0x22e8 - runtime.lookupPanic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:144:16
           2: 0x68ffb - syscall.Munmap
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/syscall_libc.go:238:42              - syscall_test.TestMmap
                           at /workspaces/dc-wasm-go/tinygo/src/syscall/mmap_unix_test.go:19:26
           3: 0x2da6e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           4: 0x2d764 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           5: 0x2da6e - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x27d15 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/82/82aa5295879972050e33594bb69e60a3e787b6c38d6194ab315c8c61fe03db98-d:49:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           7: 0x23718 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           8: 0x17ef - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           9: 0x235ff - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          10: 0x23377 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### testing/fstest wasi/wasm

failure

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
--- FAIL: TestSymlink (0.01s)
    TempDir RemoveAll cleanup: RemoveAll /tmp/TestSymlink256640561: errno 52

```


### testing/quick wasi/wasm

failure

```text
Failures/Tests: 1/1
=== RUN   TestCheckEqual
panic: unimplemented: (reflect.Type).NumIn()
Error: failed to run main module `/tmp/tinygo2214071950/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3404 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x36f9 - (*reflect.rawType).NumIn
                           at /workspaces/dc-wasm-go/tinygo/src/reflect/type.go:1008:7
           2: 0x6a268 - (Go interface method)
           3: 0x6a464 - testing/quick.CheckEqual
                           at /usr/local/go/src/testing/quick/quick.go:320:48
           4: 0x6aa6f - testing/quick.TestCheckEqual
                           at /usr/local/go/src/testing/quick/quick_test.go:163:34
           5: 0x278af - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x275a5 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           7: 0x278af - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           8: 0x2185b - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/e3/e3de31e3b828492407d361e3b0cb64cd4f3e89c6ed71ece8ac334ab349c804a0-d:61:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
           9: 0x1d1b1 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          10: 0x18ed - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          11: 0x1d098 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          12: 0x1ce0f - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### testing/slogtest wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo3598896392/main /tmp/tinygo3598896392/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
/workspaces/dc-wasm-go/tinygo/build/wasm-opt --asyncify -Oz -g /tmp/tinygo3598896392/main --output /tmp/tinygo3598896392/main
wasm-tools component embed -w wasi:cli/command /workspaces/dc-wasm-go/tinygo/lib/wasi-cli/wit/ /tmp/tinygo3598896392/main -o /tmp/tinygo3598896392/main
wasm-tools component new /tmp/tinygo3598896392/main -o /tmp/tinygo3598896392/main
/workspaces/dc-wasm-go/bin/wasmtime wasmtime --dir=. --wasm component-model --dir=/tmp::/tmp /tmp/tinygo3598896392/main -test.v
panic: runtime.Caller failed
Error: failed to run main module `/tmp/tinygo3598896392/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x31eb - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x193b6 - testing/slogtest.withSource
                           at /usr/local/go/src/testing/slogtest/slogtest.go:362:8
           2: 0x17750 - <unknown>!runtime.initAll
           3: 0x16d83 - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:24:10
           4: 0xb61f - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
           5: 0x1711 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
           6: 0x16c86 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11
           7: 0x16958 - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11
           8: 0x168d5 - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
           9: 0x16861 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed
FAIL	testing/slogtest	0.526s
```


### text/tabwriter wasi/wasm

failure

```text
Failures/Tests: 1/2
=== RUN   TestPanicDuringFlush
panic: cannot write
Error: failed to run main module `/tmp/tinygo689706083/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x3587 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0xd45c - (text/tabwriter_test.panicWriter).Write
                           at /usr/local/go/src/text/tabwriter/tabwriter_test.go:622:7
           2: 0xbcc5 - <unknown>!interface:{Write:func:{slice:basic:uint8}{basic:int,named:error}}.Write$invoke
           3: 0xeddb - (*text/tabwriter.Writer).write0
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:251:26
           4: 0xe9b8 - (*text/tabwriter.Writer).writeLines
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:318:14
           5: 0xde4b - (*text/tabwriter.Writer).format
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:405:21
           6: 0xd779 - (*text/tabwriter.Writer).flushNoDefers
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:513:10
           7: 0xd5a8 - (*text/tabwriter.Writer).flush
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:495:17              - (*text/tabwriter.Writer).Flush
                           at /usr/local/go/src/text/tabwriter/tabwriter.go:488:16
           8: 0x6d251 - text/tabwriter_test.TestPanicDuringFlush
                           at /usr/local/go/src/text/tabwriter/tabwriter_test.go:643:9
           9: 0x28fb2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          10: 0x28ca8 - (*testing.T).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:462:9              - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
          11: 0x28fb2 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
          12: 0x22d32 - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/82/820448a5a8b28b6568ca535f8febd255e560bfb39fb86b392c543db67f75b4a5-d:67:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          13: 0x1e72b - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          14: 0x182d - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          15: 0x1e612 - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          16: 0x1e38a - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### text/template wasi/wasm

build error

```text
wasm-ld --stack-first --no-demangle -L /workspaces/dc-wasm-go/tinygo -o /tmp/tinygo1881586924/main /tmp/tinygo1881586924/main.o /home/vscode/.cache/tinygo/compiler-rt-wasm32-unknown-wasi-generic/lib.a /home/vscode/.cache/tinygo/obj-9f377d764891b0ee28a07e083c4e0a015091c6d2eba944fa92c6e3df.bc /home/vscode/.cache/tinygo/obj-8e79898f1f39e40617eb4cfe362e633fa2c37f8ed1a76c41b45a24e8.bc -mllvm -mcpu=generic --lto-O2 --thinlto-cache-dir=/home/vscode/.cache/tinygo/thinlto -mllvm --rotation-max-header-size=0
wasm-ld: error: /tmp/tinygo1881586924/main.o: undefined symbol: syscall.Faccessat
failed to run tool: wasm-ld
FAIL	text/template	0.000s
error: failed to link /tmp/tinygo1881586924/main: exit status 1
```


### text/template/parse wasi/wasm

failure

```text
Failures/Tests: 1/6
=== RUN   TestNumberParse
panic: (97676:0x00049460)
Error: failed to run main module `/tmp/tinygo3428132596/main`

Caused by:
    0: failed to invoke `run` function
    1: error while executing at wasm backtrace:
           0: 0x39d4 - runtime.abort
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_tinygowasmp2.go:58:6              - runtime._panic
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/panic.go:52:7
           1: 0x55d37 - (*fmt.ss).error
                           at /usr/local/go/src/fmt/scan.go:240:7
           2: 0x57350 - (*fmt.ss).accept
                           at /usr/local/go/src/fmt/scan.go:750:10              - (*fmt.ss).complexTokens
                           at /usr/local/go/src/fmt/scan.go:755:14              - (*fmt.ss).scanComplex
                           at /usr/local/go/src/fmt/scan.go:816:33
           3: 0x591fd - <unknown>!fmt.Sscan
           4: 0x8f6ce - text/template/parse.TestNumberParse
                           at /usr/local/go/src/text/template/parse/parse_test.go:99:23
           5: 0x2bad8 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           6: 0x60ec3 - (*testing.T).Run
           7: 0x2b7e0 - testing.runTests$1
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:561:10
           8: 0x2bad8 - testing.tRunner
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:427:4
           9: 0x2627d - testing.runTests
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:559:10              - (*testing.M).Run
                           at /workspaces/dc-wasm-go/tinygo/src/testing/testing.go:533:29              - main.main
                           at /home/vscode/.cache/go-build/97/97aff8905c92f3c2c83a3d8f59473c1d67c5a331a12ffae42fb9894564f7a41a-d:83:15              - runtime.run$1
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:25:11
          10: 0x20e88 - <goroutine wrapper>
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:23:2
          11: 0x1935 - tinygo_launch
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify_wasm.S:59
          12: 0x20d6f - (*internal/task.Task).Resume
                           at /workspaces/dc-wasm-go/tinygo/src/internal/task/task_asyncify.go:109:17              - runtime.scheduler
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler.go:236:11              - runtime.run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/scheduler_any.go:28:11              - _start
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:30:5
          13: 0x20ae7 - wasi:cli/run@0.2.0#run
                           at /workspaces/dc-wasm-go/tinygo/src/runtime/runtime_wasm_wasip2.go:21:8
    2: wasm trap: wasm `unreachable` instruction executed

```


### time wasi/wasm

build error

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

