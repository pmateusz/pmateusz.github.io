#!/usr/bin/env bash

apt-get update
apt-get install --assume-yes gcc g++ make cpuset openssl cgroup-bin \
    libtool tcl8.6-dev tk8.6-dev libxml2-dev libcgroup-dev \
    libhwloc-dev libboost-all-dev libssl-dev

pushd .

mkdir -p ~/Applications && cd ~/Applications
wget --quiet https://www.open-mpi.org/software/hwloc/v1.11/downloads/hwloc-1.11.4.tar.gz
tar -xvzf hwloc-1.11.4.tar.gz
rm hwloc-1.11.4.tar.gz
cd hwloc-1.11.4
./configure && make install

popd
