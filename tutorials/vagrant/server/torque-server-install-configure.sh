#!/usr/bin/env bash

if [ -z $(pgrep pbs_server) ]; then
  service pbs_server stop
fi

if [ -z $(pgrep trqauthd) ]; then
  service trqauthd stop
fi

pushd .

for package_name in devel clients server
do
/var/www/deb/amd64/torque-package-$package_name-linux-x86_64.sh --install
done
ldconfig

for service_name in trqauthd pbs_server
do
cp /root/Applications/torque-6.1.0/contrib/init.d/debian.$service_name /etc/init.d/$service_name
update-rc.d $service_name defaults
update-rc.d $service_name enable
done

service trqauthd restart

server_fdqn=`hostname -f`
cd /var/spool/torque
echo $server_fdqn > server_name

cd ./server_priv/acl_svr
echo $server_fdqn > acl_hosts
echo root@$server_fdqn | tee operators managers

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

read -d '' server_config << EOF
set server managers += vagrant@*.cluster.org;
set server operators += vagrant@*.cluster.org;
set server scheduling = true;
set server keep_completed = 300;
set server mom_job_sync = true;
EOF

echo "$server_config" | qmgr -e
if [ "$?" -ne "0" ] ; then
  echo "ERROR: cannot configure server";
  qterm;
  exit 1;
fi

read -d '' default_queue << EOF 
create queue batch;
set queue batch queue_type = execution;
set queue batch started = true;
set queue batch enabled = true;
set queue batch resources_default.walltime = 1:00:00;
set queue batch resources_default.nodes = 1;
set server default_queue = batch;
EOF

echo "$default_queue" | qmgr -e
if [ "$?" -ne "0" ] ; then
  echo "ERROR: cannot configure default queue";
  qterm;
  exit 1;
fi