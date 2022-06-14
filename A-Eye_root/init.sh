#!/bin/bash
mkfifo IAtoINT
cd A-Eye_Visor
cmake src/
make
./AI &
cd ..
cd A-Eye_Communication
cmake src/
make
./server
exit