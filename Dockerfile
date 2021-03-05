FROM ghcr.io/linuxserver/nginx
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing gnu-libiconv
COPY . /config/www/
