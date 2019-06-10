FROM alpine:3.9.4

RUN apk add nginx
RUN mkdir -p /run/nginx && touch /run/nginx/nginx.pid

ADD nginx.conf /etc/nginx/nginx.conf

CMD "/usr/sbin/nginx"
