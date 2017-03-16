#!/usr/bin/env bash

server_host=$1
server_addr=$2
repo_url=$3

if [ -z $server_host ] || [ -z $server_addr ] || [ -z $repo_url ] ; then
    echo "Usage $0 <server hostname> <server address> <repository url>"
    exit 1
fi

#apt-get update
apt-get install --assume-yes cpuset openssl cgroup-bin \
    libtool tcl8.6-dev tk8.6-dev libxml2-dev libcgroup-dev \
    libhwloc-dev libboost1.55-dev libssl-dev

pushd .

ldconfig -p | grep libhwloc.so > /dev/null
if [ "$?" -eq "1" ] ; then
    mkdir -p ~/Applications && cd ~/Applications
    wget --quiet https://www.open-mpi.org/software/hwloc/v1.11/downloads/hwloc-1.11.4.tar.gz
    tar -xvzf hwloc-1.11.4.tar.gz
    rm hwloc-1.11.4.tar.gz
    cd hwloc-1.11.4
    ./configure && make install
    ldconfig
fi

known_server=`getent hosts $server_host`
if [ -z "$known_server" ] ; then
    echo $server_addr $server_host >> /etc/hosts
fi

cd ~/Applications
for package_name in devel clients mom
do
    file="torque-package-$package_name-linux-x86_64.sh"
    url="$repo_url/$file"
    wget --quiet $url -O "./$file"
    if [ "$?" -eq "1" ] ; then
        echo "Failed to download $url"
        exit 1;
    fi
    chmod +x $file
    "./$file" --install
    rm $file
done
ldconfig

for service in trqauthd pbs_mom
do
    url="$repo_url/$service"
    file="/etc/init.d/$service"
    wget --quiet $url -O $file

    if [ ! -f $file ] ; then
        echo "Failed to download $url"
        exit 1;
    fi

    chmod +x /etc/init.d/$service
    update-rc.d $service defaults
    update-rc.d $service enable
done

popd

echo \$pbsserver $server_host > /var/spool/torque/mom_priv/config
echo \$mom_host `hostname -f` >> /var/spool/torque/mom_priv/config

service trqauthd restart
service pbs_mom start

if [ -z $(pgrep pbs_mom) ] ; then
    echo "Failed to start pbs_mom"
    exit 1
fi
