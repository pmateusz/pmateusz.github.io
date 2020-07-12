#!/usr/bin/env bash

host=$1
ip_address=$2

if [ -z $host ]; then
    echo "Usage: $0 <mom host> [<mom ip address>]";
    exit 1;
fi

host_known=`getent hosts $host`
if [ -z "$host_known" ]; then
    if [ -z $ip_address ] ; then
        echo "Failed to resolve $host. Provide the IP address of the host.";
        exit 1;
    fi

    echo $ip_address $host >> /etc/hosts
fi

nodes_file="/var/spool/torque/server_priv/nodes"
if [ -z "$(grep $host $nodes_file)" ]; then
    echo $host >> $nodes_file;
fi