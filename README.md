### Why this repo exists

This repo is used to build hadoop related ecosystem from bare dockerfile without binary.

All components works in one image, shown full configurate process.

Image already build can be found here [docker hub](https://hub.docker.com/search?q=leoninewang&type=image)

### Attention

for Dockerfile in windows, updating break line to unix style is essential.

```bash
find . -name dockerfile -exec dos2unix -r -v {} \;
find . -name *.sh -exec dos2unix -r -v {} \;
```

### Reference

* [big-data-europe/docker-hadoop](https://github.com/big-data-europe/docker-hadoop)
* [docker-hub](https://hub.docker.com/search?q=bde2020&type=image)

### TODO

* individual version deploy via docker stack using compose file