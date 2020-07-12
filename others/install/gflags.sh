#!/bin/bash

pushd ~/dev
wget -O gflags-2.1.2.tar.gz https://github.com/gflags/gflags/archive/v2.1.2.tar.gz
tar -xvzf gflags-2.1.2.tar.gz
pushd gflags-2.1.2
mkdir -p build && cd build
cmake ..
make
sudo make install
rm -Rf gflags-2.1.2.tar.gz
popd
