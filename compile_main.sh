#!/bin/bash
mkdir build

set -e

cd build
cmake .. -G Ninja -DMAIN=main.cpp "$@"
cmake --build .
mv a.exe ..