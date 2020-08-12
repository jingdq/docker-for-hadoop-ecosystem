## Images

* [openssh-jdk](./openssh-jdk)
  * docker build openssh-jdk/8 -t leoninew/openssh-jdk:8
* [hadoop](./hadoop)
  * docker build  hadoop/2.7.7 -t leoninew/hadoop:2.7.7
  * docker run --rm -it --hostname master -p 8020:8020 -p 9000:9000 -p 50010:50010 -p 50070:50070 -p 50075:50075 leoninew/hadoop:2.7.7
* [hbase](./hbase)
  * docker build hbase/1.4.13 -t leoninew/hbase:1.4.13
  * docker run --rm -it --hostname master -p 8020:8020 -p 9000:9000 -p 50010:50010 -p 50070:50070 -p 50075:50075 -p 16000:16000 -p 60000:60000 -p 2181:2181 leoninew/hbase:1.4.13
* [hive](./hive)
  * docker build hive/1.2.2 -t leoninew/hive:1.2.2
  * docker run --rm -it --hostname master -p 8020:8020 -p 9000:9000 -p 50010:50010 -p 50070:50070 -p 50075:50075 -p 9083:9083 -p 9999:9999 -p 10000:10000 leoninew/hive:1.2.2
* [spark](./spark)
  * docker build spark/2.4.6 -t leoninew/spark:2.4.6
  * docker run --rm -it --hostname master -p 8020:8020 -p 9000:9000 -p 50010:50010 -p 50070:50070 -p 50075:50075 -p 7077:7077 -p 8080:8080 -p 8081:8081 -p 10000:10000 leoninew/spark:2.4.6
* [kylin](./kylin)
  * docker build kylin/2.6.6 -t leoninew/kylin:2.6.6
  * docker run --rm -it --hostname master -p 7070:7070 -p 8088:8088 -p 50070:50070 -p 8032:8032 -p 8042:8042 -p 60010:60010 leoninew/kylin:2.6.6