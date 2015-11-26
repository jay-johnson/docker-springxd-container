#!/usr/bin/env bash

log="/tmp/xdcontainer.log"

export HSQL_SERVER_HOST=hsqldb
export HSQL_SERVER_PORT=9101

export ZK_CLIENT_CONNECT=zookeeper1:2181

export SPRING_REDIS_HOST=redis1
export SPRING_REDIS_PORT=6379

echo "" > $log
echo "Container waiting for Zookeeper to Start" >> $log
/bin/date >> $log
sleep 5
echo "" >> $log
/bin/date >> $log
echo "Container done waiting for Zookeeper to Start" >> $log
pwd >> $log

echo "Starting Container" >> $log
pushd /opt/spring-xd/ >> $log
./xd/bin/xd-container 
popd >> $log

