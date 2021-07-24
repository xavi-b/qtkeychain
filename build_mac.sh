#!/bin/bash

for d in /usr/local/Cellar/*/*/bin
do
echo $d
export PATH="$PATH:$d"
done

echo $PATH
mkdir -p build
cd build
mkdir -p ../../client-building/install
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../../client-building/install ..
make
make install
cd -
