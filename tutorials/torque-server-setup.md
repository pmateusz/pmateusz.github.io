# Torque Server Setup

## Introduction
This article explains how to install and configure Torque server on *Ubuntu Trusty Tahr 14.04 LTS*. The instructions should be portable to newer versions of Ubuntu. Instructions are available also as the Vagrant script.

## Tutorial

### Prerequisites
Ubuntu 14.04 operating system.
Environment which satisfy all runtime requirements to run Torque.
Access to Torque 6.0.3 packages.

For more information how to configure system for running Torque and build its packages refer to post about [Torque compilation](./torque-compilation.md).

The instructions presented in the article should be portable to newer versions of Ubuntu. Instructions are available also as the Vagrant script.

### Install the Torque server
```shell
sudo /var/www/deb/amd64/torque-package-devel-linux-x86_64.sh --install
sudo /var/www/deb/amd64/torque-package-clients-linux-x86_64.sh --install
sudo /var/www/deb/amd64/torque-package-server-linux-x86_64.sh --install
sudo ldconfig

sudo cp /root/Applications/torque-6.1.0/contrib/init.d/debian.trqauthd /etc/init.d/trqauthd
sudo cp /root/Applications/torque-6.1.0/contrib/init.d/debian.pbs_server /etc/init.d/pbs_server
sudo cp /root/Applications/torque-6.1.0/contrib/init.d/debian.pbs_mom /etc/init.d/pbs_mom

sudo hostnamectl set-hostname server.cluster.org

sudo update-rc.d trqauthd defaults
sudo update-rc.d trqauthd enable

sudo update-rc.d pbs_server defaults
sudo update-rc.d pbs_server enable

sudo pbs_server -ft create


pbs_server -ft create
# Starting in TORQUE 3.1 the server is multi-threaded.
# We need to pause a second to allow the server to finish coming
# up. If we go to qmgr right away it will fail.
pbs_server --about

pbs_server_pid=`pgrep pbs_server`
if [ "$pbs_server_pid" -eq "" ] ; then
  echo "ERROR: pbs_server failed to start, check syslog and server logs for more information"
  exit 1;
fi

sudo hostnamectl set-hostname server.cluster.org
sudo chmod 766 /var/spool/torque/server_name
sudo echo server > /var/spool/torque/server_name

# getent hosts unix.stackexchange.com 
# sudo echo server > /var/spool/torque/server_name
# sudo chmod 766 /var/spool/torque/server_name
# sudo ls -l /var/spool/torque/server_name
# sudo echo server > /var/spool/torque/server_name

echo set server operators += vagrant | qmgr

if [ "$?" -ne "0" ] ; then
  echo "ERROR: cannot set TORQUE admins"
  qterm
  exit 1;
fi

echo set server managers += vagrant | qmgr


qmgr -c 'set server scheduling = true'
qmgr -c 'set server keep_completed = 300'
qmgr -c 'set server mom_job_sync = true'

# create default queue

qmgr -c 'create queue batch'
qmgr -c 'set queue batch queue_type = execution'
qmgr -c 'set queue batch started = true'
qmgr -c 'set queue batch enabled = true'
qmgr -c 'set queue batch resources_default.walltime = 1:00:00'
qmgr -c 'set queue batch resources_default.nodes = 1'

qmgr -c 'set server default_queue = batch'
```

Investigation:
vagrant@server:~$ sudo pbs_server -ft create
pbs_server port already bound: Address already in use
vagrant@server:~$ sudo killall pbs_server
vagrant@server:~$ sudo pbs_server -ft create
vagrant@server:~$ qmgr -c 'p s'

vagrant@server:~$ hostname -f
server.cluster.org
vagrant@server:~$ cat /var/spool/torque/server_name
server
vagrant@server:~$
