FROM alpine:latest

MAINTAINER Pedro Sousa<ppls2106@gmail.com>

RUN apk update && \
    apk add --no-cache apache2 && \
    rm -rf /var/cache/apk/*

RUN echo "<html><body><h1>Alpine Modificado por Dockerfile!</h1></body></html>" > /var/www/localhost/htdocs/index.html

EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]