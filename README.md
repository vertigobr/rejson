ReJSON
======

Redis 4 with ReJSON module.

## How to use it

```sh
docker run --name redis -d \
    -p 6379:6379 \
    vertigo/rejson
```

## How to test it

```sh
docker exec -ti redis redis-cli
```
