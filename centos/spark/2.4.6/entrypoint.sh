#!/bin/bash

/usr/sbin/sshd

HADOOP_HOME="/opt/hadoop"
$HADOOP_HOME/bin/hadoop namenode -format
$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/sbin/start-yarn.sh

SPARK_HOME=/opt/spark
$SPARK_HOME/sbin/start-all.sh 
$SPARK_HOME/sbin/start-thriftserver.sh

if [ $# == 0 ];then
    bash
else
    exec $@
fi