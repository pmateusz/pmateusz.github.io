#!/usr/bin/env bash

server_addr="192.168.90.2"
server_host="server.cluster.org"

apt-get install --assume-yes cpuset openssl cgroup-bin \
    libtool tcl8.6-dev tk8.6-dev libxml2-dev libcgroup-dev \
    libhwloc-dev libboost-all-dev libssl-dev

pushd .
cd ~

lib_hwloc_installed=`ldconfig -l libhwloc | grep libhwloc.so`
if [[ -z $lib_hwloc_installed ]] ; then
    mkdir -p ~/Applications && cd ~/Applications
    wget --quiet https://www.open-mpi.org/software/hwloc/v1.11/downloads/hwloc-1.11.4.tar.gz
    tar -xvzf hwloc-1.11.4.tar.gz
    rm hwloc-1.11.4.tar.gz
    cd hwloc-1.11.4
    ./configure && make install
    ldconfig
fi

known_server=`grep $server_addr /etc/hosts`
if [[ -z $known_server ]] ; then
    echo $server_addr $server_host server >> /etc/hosts ;
fi

root="http://$server_host/deb/amd64"
for package_name in devel clients mom
do
    filename="torque-package-$package_name-linux-x86_64.sh"
    wget --quiet $root/$filename
    chmod +x $filename
    ./$filename --install
    rm $filename
done
ldconfig

for service in trqauthd pbs_mom
do
    wget --quiet $root/$service -O /etc/init.d/$service
    chmod +x /etc/init.d/$service
    update-rc.d $service defaults
    update-rc.d $service enable
done

popd

echo \$pbsserver $server_host > /var/spool/torque/mom_priv/config
echo \$mom_host `hostname -f` >> /var/spool/torque/mom_priv/config

service trqauthd restart
service pbs_mom start