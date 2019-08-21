FROM debian
MAINTAINER Pedro Sousa<ppls2106@gmail.com>
RUN apt-get update && \
	apt-get install apache2 -y && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
ADD index.html /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]