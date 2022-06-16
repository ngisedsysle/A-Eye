#!/bin/bash
mkfifo IAtoINT
cd A-Eye_Visor/build
cmake ../src/
make
./AI &
cd ../../
cd A-Eye_Communication/build
cmake ../src/
make
./server
exit