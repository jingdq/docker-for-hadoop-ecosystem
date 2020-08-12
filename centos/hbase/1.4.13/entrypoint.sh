#!/bin/bash

/usr/sbin/sshd

HADOOP_HOME="/opt/hadoop"
$HADOOP_HOME/bin/hadoop namenode -format
$HADOOP_HOME/bin/hadoop fs -chown -R root:root /tmp
$HADOOP_HOME/sbin/start-dfs.sh
# $HADOOP_HOME/sbin/start-yarn.sh

HBASE_HOME="/opt/hbase"
$HBASE_HOME/bin/start-hbase.sh
# $HBASE_HOME/bin/hbase rest start -p 8080

if [ $# == 0 ];then
    bash
else
    exec $@
fi