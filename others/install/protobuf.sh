#!/bin/bash

pushd ~/dev
wget -O protobuf-cpp-3.0.0.tar.gz https://github.com/google/protobuf/releases/download/v3.0.0/protobuf-cpp-3.0.0.tar.gz
tar -xvzf protobuf-cpp-3.0.0.tar.gz

pushd protobuf-3.0.0
./autogen.sh
./configure
make
sudo make install
sudo ldconfig
rm -Rf protobuf-cpp-3.0.0.tar.gz
popd

popd
