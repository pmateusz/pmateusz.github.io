#!/usr/bin/env bash

pushd .

mkdir -p ~/Applications && cd ~/Applications
wget --quiet http://wpfilebase.s3.amazonaws.com/torque/torque-6.1.0.tar.gz
tar -xvzf torque-6.1.0.tar.gz
rm torque-6.1.0.tar.gz
cd torque-6.1.0

# --with-default-server=server-alias.cluster.org 
./configure --enable-gcc-warnings --enable-shared --enable-static \
--enable-gui --enable-fast-install \
--enable-syslog --enable-cgroups --enable-unixsockets --enable-tcl-qstat --with-scp \
--with-server-home=/var/spool/torque \
--with-boost-path=/usr/share/doc/libboost-all-dev \
--with-tcl=/usr/lib/tcl8.6 --with-tclinclude=/usr/include/tcl8.6 \
--with-tk=/usr/lib/tk8.6 --with-tkinclude=/usr/include/tcl8.6/tk-private/generic

make
make packages

mkdir -p /var/www/deb/amd64
mv torque-package-* /var/www/deb/amd64

popd