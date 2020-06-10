# lua-resty-repl learning

## How to running


* build image

```code
docker-compose build
```

* start 

```code
docker-compose up -d 
```


* test 

> inside container

```code

docker-compose exec api sh

openresty  -c /usr/local/openresty/nginx/conf/nginx.conf

```

## links

https://github.com/saks/lua-resty-repl