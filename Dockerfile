FROM openresty/openresty:alpine-fat
RUN  /bin/sed -i 's,http://dl-cdn.alpinelinux.org,https://mirrors.aliyun.com,g' /etc/apk/repositories
RUN apk update && apk add git
COPY --from=ochinchina/supervisord:latest /usr/local/bin/supervisord /usr/local/bin/supervisord
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-repl
ENTRYPOINT [ "/usr/local/bin/supervisord" ]