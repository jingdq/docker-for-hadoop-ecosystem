## Build

for docker run

```bash
docker build 2.7.7 -t leoninewang/hadoop:2.7.7
docker run --rm -it --hostname master -p 8020:8020 -p 9000:9000 -p 50010:50010 -p 50070:50070 -p 50075:50075 leoninewang/hadoop:2.7.7
```

## Startup

```bash
root@master:/opt# jps -lm
160 org.apache.hadoop.hdfs.server.namenode.NameNode
449 org.apache.hadoop.hdfs.server.namenode.SecondaryNameNode
594 org.apache.hadoop.yarn.server.resourcemanager.ResourceManager
694 org.apache.hadoop.yarn.server.nodemanager.NodeManager
987 sun.tools.jps.Jps -lm
254 org.apache.hadoop.hdfs.server.datanode.DataNode
```

`hdfs dfsadmin -report` works well