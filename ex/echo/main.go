package main

import (
	// 	"unsafe"

	"fmt"

	"github.com/omnide/dc-wasm-go/ex/echo/wasi/http/v0.2.0/types"
	// 	"internal/wasi/cli/v0.2.0/environment"
	// 	"internal/wasi/cli/v0.2.0/stderr"
	// 	"internal/wasi/cli/v0.2.0/stdin"
	// 	"internal/wasi/cli/v0.2.0/stdout"
	// 	wallclock "internal/wasi/clocks/v0.2.0/wall-clock"
	// 	"internal/wasi/filesystem/v0.2.0/preopens"
	// 	"internal/wasi/filesystem/v0.2.0/types"
	// 	ioerror "internal/wasi/io/v0.2.0/error"
	// 	"internal/wasi/io/v0.2.0/streams"
	// 	"internal/wasi/random/v0.2.0/random"
)

// // Run represents function "wasi:cli/run@0.2.0#run".
// //
// // Run the program.
// //
// //	run: func() -> result
// //
// //go:nosplit
// func Run() cm.Result {
// 	return wasmimport_Run()
// }

// //go:wasmimport wasi:cli/run@0.2.0 run
// //go:noescape
// func wasmimport_Run() cm.Result

// //export wasi:cli/run@0.2.0#run
// func __wasi_cli_run_run() uint32 {
// 	_start()
// 	return 0
// }

// IncomingRequest represents the resource "wasi:http/types@0.2.0#outgoing-request".
//
// See [types.IncomingRequest] for more information.
type IncomingRequest = types.IncomingRequest

// ErrorCode represents the variant "wasi:http/types@0.2.0#error-code".
//
// See [types.ErrorCode] for more information.
type ErrorCode = types.ErrorCode

type ResponseOutparam = types.ResponseOutparam

//export wasi:http/incoming-handler@0.2.0#handle
func __wasi_http_incoming_handler_handle(request IncomingRequest, param ResponseOutparam) {

	//func wasmimport_Handle(request IncomingRequest, options cm.Option[RequestOptions], result *cm.ErrResult[FutureIncomingResponse, ErrorCode])
	fmt.Println("Is this on? %+v", request)
}

func main() {}
