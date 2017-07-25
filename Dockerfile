FROM ubuntu:16.04
MAINTAINER Stefan Thoeni <stefan.thoeni@piratenpartei.de>

RUN echo "v1"
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y \
	curl \
	wget \
	less \
	git \
	vim \
	apache2 \
	php \
	php-mysql \
	php-gd \
	php-zip \
	php-curl \
	libapache2-mod-php7.0 \
	locales

RUN rm /etc/apache2/sites-enabled/*
COPY entrypoint.sh /entrypoint.sh
RUN a2enmod rewrite

EXPOSE 80
CMD ["/entrypoint.sh"]

