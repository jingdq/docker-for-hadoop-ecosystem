## Build

```bash
docker build 1.4.13 -t leoninew/hbase:1.4.13
docker run --rm -it --hostname master -p 8020:8020 -p 9000:9000 -p 50010:50010 -p 50070:50070 -p 50075:50075 -p 16000:16000 -p 60000:60000 -p 2181:2181 leoninew/hbase:1.4.13
```

## Startup

```bash
root@master:/opt# hbase shell
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/opt/hbase-1.4.13/lib/slf4j-log4j12-1.7.25.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/opt/hadoop-2.7.7/share/hadoop/common/lib/slf4j-log4j12-1.7.10.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.Log4jLoggerFactory]
HBase Shell
Use "help" to get list of supported commands.
Use "exit" to quit this interactive shell.
Version 1.4.13, r6ae4a77408ad35d6a7a4e5cebfd401fc4b72b5ec, Sun Nov 24 13:25:41 CST 2019
hbase(main):001:0> whoami
root (auth:SIMPLE)
    groups: root
```