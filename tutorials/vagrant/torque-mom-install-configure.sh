#!/usr/bin/env bash

pushd .

cd /etc
hostnamectl set-hostname server
grep --invert-match --word-regexp "192.168.90.2" hosts > tmp_hosts
echo 192.168.90.2 server.cluster.org server > hosts
cat tmp_hosts >> hosts
rm tmp_hosts

cd /var/www/deb/amd64
./torque-package-devel-linux-x86_64.sh --install
./torque-package-clients-linux-x86_64.sh --install
./torque-package-mom-linux-x86_64.sh --install
ldconfig

cd /root/Applications/torque-6.1.0/contrib/init.d/
cp debian.pbs_mom /etc/init.d/pbs_mom

cd /etc/init.d/
update-rc.d pbs_mom defaults
update-rc.d pbs_mom enable
popd

echo server > /var/spool/torque/server_priv/nodes
echo server.cluster.org >> /var/spool/torque/server_priv/nodes
echo server.cluster.org > /var/spool/torque/mom_priv/config