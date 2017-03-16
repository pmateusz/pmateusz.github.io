cd /etc
hostnamectl set-hostname server
grep --invert-match --word-regexp "192.168.90.2" hosts > tmp_hosts
echo 192.168.90.2 server.cluster.org server > hosts
cat tmp_hosts >> hosts
rm tmp_hosts

create alias for a service