#!/bin/bash
export GOPATH=$PWD/go
go get $1
go build $1
go test $1/...
