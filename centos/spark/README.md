## Reference

* [从0开始使用Docker搭建Spark集群](https://www.jianshu.com/p/ee210190224f)
* [马踏飞燕——奔跑在Docker上的Spark - jasonfreak - 博客园](https://www.cnblogs.com/jasonfreak/p/5391190.html)


## Build

```bash
docker build 2.4.6 -t leoninewang/spark:2.4.6
docker run --rm -it --hostname master -p 8020:8020 -p 9000:9000 -p 50010:50010 -p 50070:50070 -p 50075:50075 -p 7077:7077 -p 8080:8080 -p 8081:8081 -p 10000:10000 leoninewang/spark:2.4.6
```

## Startup

### pyspark

```bash
[root@master opt]# pyspark
Python 2.7.5 (default, Nov 20 2015, 02:00:19)
[GCC 4.8.5 20150623 (Red Hat 4.8.5-4)] on linux2
Type "help", "copyright", "credits" or "license" for more information.
20/02/16 12:55:42 WARN NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
Setting default log level to "WARN".
To adjust logging level use sc.setLogLevel(newLevel). For SparkR, use setLogLevel(newLevel).
Welcome to
      ____              __
     / __/__  ___ _____/ /__
    _\ \/ _ \/ _ `/ __/  '_/
   /__ / .__/\_,_/_/ /_/\_\   version 2.4.6
      /_/

Using Python version 2.7.5 (default, Nov 20 2015 02:00:19)
SparkSession available as 'spark'.
>>> text = sc.textFile("shakespeare.txt")
>>> print text
shakespeare.txt MapPartitionsRDD[1] at textFile at NativeMethodAccessorImpl.java:0
>>> from operator import add
>>> def tokenize(text):
...     return text.split()
...
>>> words = text.flatMap(tokenize)
>>> print words
PythonRDD[2] at RDD at PythonRDD.scala:52
```

### thriftserver and beeline

```bash
[root@master opt]# ./spark/sbin/start-thriftserver.sh
starting org.apache.spark.sql.hive.thriftserver.HiveThriftServer2, logging to /opt/spark/logs/spark--org.apache.spark.sql.hive.thriftserver.HiveThriftServer2-1-master.out
[root@master opt]# beeline -u jdbc:hive2://master:10000/default
Connecting to jdbc:hive2://master:10000/default
20/02/16 13:28:39 INFO Utils: Supplied authorities: master:10000
20/02/16 13:28:39 INFO Utils: Resolved authority: master:10000
20/02/16 13:28:40 INFO HiveConnection: Will try to open client transport with JDBC Uri: jdbc:hive2://master:10000/default
Connected to: Spark SQL (version 2.4.6)
Driver: Hive JDBC (version 1.2.1.spark2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
Beeline version 1.2.1.spark2 by Apache Hive
0: jdbc:hive2://master:10000/default> show databases;
+---------------+--+
| databaseName  |
+---------------+--+
| default       |
+---------------+--+
1 row selected (1.345 seconds)
0: jdbc:hive2://master:10000/default>
```