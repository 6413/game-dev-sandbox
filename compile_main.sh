#!/bin/bash
mkdir build

set -e

cd build
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 .. -G Ninja -DMAIN=main.cpp "$@"
cmake --build .
mv a.exe ..
