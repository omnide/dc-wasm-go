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

	f, err := os.Open("go.mod")
	if err != nil {
		println(err.Error())
		os.Exit(1)
	}

	b, err := io.ReadAll(f)
	if err != nil {
		println(err.Error())
		os.Exit(1)
	}
	println("go.mod length: ", len(b))

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
