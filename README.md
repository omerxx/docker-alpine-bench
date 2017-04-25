# docker-alpine-bench
A dead simple container to fire apache benchmark requests while serving a simple http-server for health purposes

Can be also taken from docker hub:

```bash
docker pull omerxx/alpine-bench

docker run 8080:8080 omerxx/apline-bench

curl 127.0.0.1:8080
```
