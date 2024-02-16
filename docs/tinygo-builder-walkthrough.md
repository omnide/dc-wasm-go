# TinyGo Builder Walkthrough

TinyGo's primary 820-line build function lives in `builder/build.go`. It builds and links packages
for various targets from go code.

```go
func Build(pkgName, outpath, tmpdir string, config *compileopts.Config) (BuildResult, error)
```

## Configuration

`compileopts.Config` carries most of the context for the build action for a package

```go
type Config struct {
 Options        *Options
 Target         *TargetSpec
 GoMinorVersion int
 TestConfig     TestConfig
}

type TestConfig struct {
 CompileTestBinary bool
 CompileOnly       bool
 Verbose           bool
 Short             bool
 RunRegexp         string
 SkipRegexp        string
 Count             *int
 BenchRegexp       string
 BenchTime         string
 BenchMem          bool
 Shuffle           string
}

type Options struct {
 GOOS            string // environment variable
 GOARCH          string // environment variable
 GOARM           string // environment variable (only used with GOARCH=arm)
 Directory       string // working dir, leave it unset to use the current working dir
 Target          string
 Opt             string
 GC              string
 PanicStrategy   string
 Scheduler       string
 StackSize       uint64 // goroutine stack size (if none could be automatically determined)
 Serial          string
 Work            bool // -work flag to print temporary build directory
 InterpTimeout   time.Duration
 PrintIR         bool
 DumpSSA         bool
 VerifyIR        bool
 SkipDWARF       bool
 PrintCommands   func(cmd string, args ...string) `json:"-"`
 Semaphore       chan struct{}                    `json:"-"` // -p flag controls cap
 Debug           bool
 PrintSizes      string
 PrintAllocs     *regexp.Regexp // regexp string
 PrintStacks     bool
 Tags            []string
 GlobalValues    map[string]map[string]string // map[pkgpath]map[varname]value
 TestConfig      TestConfig
 Programmer      string
 OpenOCDCommands []string
 LLVMFeatures    string
 PrintJSON       bool
 Monitor         bool
 BaudRate        int
 Timeout         time.Duration
}

// Inspired by Rust
// https://doc.rust-lang.org/nightly/nightly-rustc/rustc_target/spec/struct.TargetOptions.html

type TargetSpec struct {
 Inherits         []string `json:"inherits,omitempty"`
 Triple           string   `json:"llvm-target,omitempty"`
 CPU              string   `json:"cpu,omitempty"`
 ABI              string   `json:"target-abi,omitempty"` // rougly equivalent to -mabi= flag
 Features         string   `json:"features,omitempty"`
 GOOS             string   `json:"goos,omitempty"`
 GOARCH           string   `json:"goarch,omitempty"`
 BuildTags        []string `json:"build-tags,omitempty"`
 GC               string   `json:"gc,omitempty"`
 Scheduler        string   `json:"scheduler,omitempty"`
 Serial           string   `json:"serial,omitempty"` // which serial output to use (uart, usb, none)
 Linker           string   `json:"linker,omitempty"`
 RTLib            string   `json:"rtlib,omitempty"` // compiler runtime library (libgcc, compiler-rt)
 Libc             string   `json:"libc,omitempty"`
 AutoStackSize    *bool    `json:"automatic-stack-size,omitempty"` // Determine stack size automatically at compile time.
 DefaultStackSize uint64   `json:"default-stack-size,omitempty"`   // Default stack size if the size couldn't be determined at compile time.
 CFlags           []string `json:"cflags,omitempty"`
 LDFlags          []string `json:"ldflags,omitempty"`
 LinkerScript     string   `json:"linkerscript,omitempty"`
 ExtraFiles       []string `json:"extra-files,omitempty"`
 RP2040BootPatch  *bool    `json:"rp2040-boot-patch,omitempty"` // Patch RP2040 2nd stage bootloader checksum
 Emulator         string   `json:"emulator,omitempty"`
 FlashCommand     string   `json:"flash-command,omitempty"`
 GDB              []string `json:"gdb,omitempty"`
 PortReset        string   `json:"flash-1200-bps-reset,omitempty"`
 SerialPort       []string `json:"serial-port,omitempty"` // serial port IDs in the form "vid:pid"
 FlashMethod      string   `json:"flash-method,omitempty"`
 FlashVolume      []string `json:"msd-volume-name,omitempty"`
 FlashFilename    string   `json:"msd-firmware-name,omitempty"`
 UF2FamilyID      string   `json:"uf2-family-id,omitempty"`
 BinaryFormat     string   `json:"binary-format,omitempty"`
 OpenOCDInterface string   `json:"openocd-interface,omitempty"`
 OpenOCDTarget    string   `json:"openocd-target,omitempty"`
 OpenOCDTransport string   `json:"openocd-transport,omitempty"`
 OpenOCDCommands  []string `json:"openocd-commands,omitempty"`
 OpenOCDVerify    *bool    `json:"openocd-verify,omitempty"` // enable verify when flashing with openocd
 JLinkDevice      string   `json:"jlink-device,omitempty"`
 CodeModel        string   `json:"code-model,omitempty"`
 RelocationModel  string   `json:"relocation-model,omitempty"`
}
```

## Sections

### L97 - Config setup

- ReadBuildID() for indentifying the compiler version used
- Locate GOCACHE or use tmpdir
- 'globalValues' string map
  - testing.testBinary=1, when testing
  - copies Options.GlobalValues

### L141 - Libc dependency

- `libcDepencies *compileJob`, dummyCompileJob
- For "wasi-libc", add wasm32-wasi/libc.a for linkage later

### L184 - Optimization and Compiler settings

- OS and arch settings
- optim, speed and size levels (O1, O2, Os, Oz like clang)
- StackSize for go routines

### L204 - Target Machine

- Determine alignments, pointer size, address spaces

### L213 - Load AST, then SSA initial

- Load whole package into AST using size defs
  - Int, Ptr and Max Align
- Parse then LoadSSA

### L238 - Parallel compile jobs

- for each pkg
  - create job per embed file to convert
  - create actionID job per import
  - one job to calculate action id (for cache key)
  - build SSA for the package
  - create job to build the whole package (with llvm)

### L495 - Link+optimize job for all packages

- inject runtime.initAll function to call initializers in each package
- adjust visibility and linkage of all functions to internal for better optimization
- adjust visibility and linkage for globals
- optimize
- separate section for stack sizes

### L590 - Maybe just object, no link

- Run the jobs to make llvm module
- Dump to file
- EARLY RETURN result

### L620 - Output job

- Job to output the linked object

### L637 - Link command setup

- start ldflags
- add compiler-rt dep?
- jobs to compile "extra" c/asm files for low level stuff
- add jobs to compile C files (CGo)
- add CGo ldflags if discovered
- strip debug symbols?

### L732 - Link job plus post-link extra steps

- machine flags
- lto flags
- more determination of stack sizes, .tinygo_stacksizes
- RP2040BootPatch maybe
- run wasm-opt if arch=wasm32
- print code size maybe

### L873 - Run all the link jobs now

- just run jobs and check errors

### L882 - Convert from elf if out format not elf

- hex/bin, uf2, esp32\*, nrf-dfu,
