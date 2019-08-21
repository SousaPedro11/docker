FROM debian

MAINTAINER Pedro Sousa<ppls2106@gmail.com>

RUN apt-get update && \
    apt-get install nginx -y && \
    rm -rf /var/lib/apt/lists/*

RUN echo "<html><body><h1>Debian Modificado por Dockerfile!</h1></body></html>" \
    > /var/www/html/index.html

EXPOSE 80

CMD ["nginx","-g","daemon off;"]