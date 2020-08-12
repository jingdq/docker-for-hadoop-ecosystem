## Build

```bash
docker build 1.2.2 -t leoninewang/hive:1.2.2
docker run --rm -it --hostname master -p 8020:8020 -p 9000:9000 -p 50010:50010 -p 50070:50070 -p 50075:50075 -p 9083:9083 -p 9999:9999 -p 10000:10000 leoninewang/hive:1.2.2
```

## Startup

Connect via beeline 

```bash
[root@master opt]# beeline -u jdbc:hive2://localhost:10000
Connecting to jdbc:hive2://localhost:10000
Connected to: Apache Hive (version 1.2.2)
Driver: Hive JDBC (version 1.2.2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
Beeline version 1.2.2 by Apache Hive
0: jdbc:hive2://localhost:10000> select year(current_timestamp);
+-------+--+
|  _c0  |
+-------+--+
| 2020  |
+-------+--+
1 row selected (3.751 seconds)
0: jdbc:hive2://localhost:10000>
```
