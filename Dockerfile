FROM ghcr.io/linuxserver/nginx
WORKDIR /config/www
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing gnu-libiconv \
    && echo "max_execution_time = 120" >> /usr/local/etc/php/conf.d/docker-vars.ini
ENV LD_PRELOAD=/usr/lib/preloadable_libiconv.so php
COPY . .
