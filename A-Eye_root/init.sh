#!/bin/bash
mkfifo IAtoINT
cd A-Eye_Visor/
mkdir -p build
cd build/
cmake ../src/
make
./AI &
cd ../../
cd A-Eye_Communication/
mkdir -p build
cd build/
cmake ../src/
make
./server
exit