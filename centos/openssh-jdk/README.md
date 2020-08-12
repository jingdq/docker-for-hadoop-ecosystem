## reference

* [CentOS 镜像使用帮助](https://mirror.tuna.tsinghua.edu.cn/help/centos/)
* [Hadoop集群配置免密SSH登录方法](https://www.cnblogs.com/shireenlee4testing/p/10366061.html)

## build

```bash
docker build 8 -t leoninewang/openssh-jdk:8
docker run -it --rm leoninewang/openssh-jdk:8
```

## Startup

```bash
[root@bf27bcbb483e /]# echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/jdk8/bin
[root@bf27bcbb483e /]# echo $JAVA_HOME
/usr/lib/jvm/jdk8
[root@bf27bcbb483e /]# ls -al $JAVA_HOME
lrwxrwxrwx 1 root root 31 Feb 15 11:25 /usr/lib/jvm/jdk8 -> /usr/lib/jvm/java-1.8.0-openjdk
[root@bf27bcbb483e /]# ssh localhost
Warning: Permanently added 'localhost' (ECDSA) to the list of known hosts.
```