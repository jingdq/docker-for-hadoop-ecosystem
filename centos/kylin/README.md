## Build

```bash
docker build 2.6.6 -t leoninew/kylin:2.6.6
docker run --rm -it --hostname master -p 10000:10000 -p 7070:7070 -p 8088:8088 -p 50070:50070 -p 8032:8032 -p 8042:8042 -p 60010:60010 leoninew/kylin:2.6.6
```

## Startup

[用 Docker 运行 Kylin](http://kylin.apache.org/cn/docs/install/kylin_docker.html)

```bash
$KYLIN_HOME/bin/sample.sh
```