#!/usr/bin/env bash

killall pbs_mom

pushd .

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

echo server.cluster.org > /var/spool/torque/server_priv/nodes
echo \$pbsserver server.cluster.org > /var/spool/torque/mom_priv/config
echo \$mom_host server.cluster.org >> /var/spool/torque/mom_priv/config

service pbs_server reload
service pbs_mom start