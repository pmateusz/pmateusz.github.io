#!/usr/bin/env bash

service pbs_mom stop

pushd .

cd /var/www/deb/amd64
for package_name in devel clients mom
do
    ./torque-package-$package_name-linux-x86_64.sh --install
done
ldconfig

update-rc.d -f pbs_mom remove
cd /root/Applications/torque-6.1.0/contrib/init.d/
cp -rf debian.pbs_mom /etc/init.d/pbs_mom
update-rc.d pbs_mom defaults
update-rc.d pbs_mom enable

cd /var/spool/torque/mom_priv
host_fdqn=`hostname -f`
echo \$pbsserver $host_fdqn > config
echo \$mom_host $host_fdqn >> config
popd

service pbs_mom start

mom_pid=`pgrep pbs_mom`
if [ -z $mom_pid ]; then
    echo "Failed to start the pbs_mom service";
    exit 1;
fi