#!/bin/bash

cwd=$PWD
cd $cwd/json && go build -mod=vendor -o $cwd/main.json
cd $cwd/jsoniter && go build -mod=vendor -o $cwd/main.jsoniter
cd $cwd
