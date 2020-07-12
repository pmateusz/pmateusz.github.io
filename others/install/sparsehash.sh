#!/bin/bash

pushd ~/dev
wget -O sparsehash-2.0.3.tar.gz https://github.com/sparsehash/sparsehash/archive/sparsehash-2.0.3.tar.gz
tar -xvzf sparsehash-2.0.3.tar.gz
pushd sparsehash-sparsehash-2.0.3
./configure
make
sudo make install
rm -Rf sparsehash-2.0.3.tar.gz
popd
popd
