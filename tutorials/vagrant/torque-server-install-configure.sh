#!/usr/bin/env bash

# TODO: take IP as a required parameter

killall pbs_server
killall trqauthd

pushd .

cd /var/www/deb/amd64
./torque-package-devel-linux-x86_64.sh --install
./torque-package-clients-linux-x86_64.sh --install
./torque-package-server-linux-x86_64.sh --install
ldconfig
cd /root/Applications/torque-6.1.0/contrib/init.d/
cp debian.trqauthd /etc/init.d/trqauthd
cp debian.pbs_server /etc/init.d/pbs_server
cd /etc/init.d/
update-rc.d trqauthd defaults
update-rc.d trqauthd enable
update-rc.d pbs_server defaults
update-rc.d pbs_server enable

cd /etc
hostnamectl set-hostname server
grep --invert-match --word-regexp "192.168.90.2" hosts > tmp_hosts
echo 192.168.90.2 server.cluster.org server > hosts
cat tmp_hosts >> hosts
rm tmp_hosts

popd

pbs_server -ft create
# Starting in TORQUE 3.1 the server is multi-threaded.
# We need to pause a second to allow the server to finish coming
# up. If we go to qmgr right away it will fail.
sleep 2
pbs_server --about

pbs_server_pid=`pgrep pbs_server`
if [ -z "$pbs_server_pid" ] ; then
  echo "ERROR: pbs_server failed to start, check syslog and server logs for more information"
  exit 1;
fi

# credits to https://jabriffa.wordpress.com/2015/02/11/installing-torquepbs-job-scheduler-on-ubuntu-14-04-lts/
echo server.cluster.org > /var/spool/torque/server_name
echo server.cluster.org > /var/spool/torque/server_priv/acl_svr/acl_hosts
echo root@server.cluster.org > /var/spool/torque/server_priv/acl_svr/operators
echo root@server.cluster.org > /var/spool/torque/server_priv/acl_svr/managers

trqauthd
qmgr -c 'p s'
qmgr -c 'set server managers += vagrant@*.cluster.org'
if [ "$?" -ne "0" ] ; then
  echo "ERROR: cannot set TORQUE admins"
  qterm
  exit 1;
fi

qmgr -c 'set server operators += vagrant@*.cluster.org'
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