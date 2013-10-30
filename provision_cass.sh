#!/usr/bin/env bash
addr=192.168.33.$1
echo $addr
sed -e "s/127.0.0.1/$addr/" -e "s/localhost/$addr/" /etc/cassandra/cassandra.yaml.template > /etc/cassandra/cassandra.yaml 
