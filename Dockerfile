FROM php:5.6-apache
MAINTAINER Benton Snyder <benton@bensnyde.me>

RUN apt-get update && apt-get install -y  \
    git  \
    zlib1g-dev \
    libjpeg-dev \
    libjpeg62-turbo \
    libpng12-dev \
    libxml2-dev \
    libssl-dev \
    libc-client2007e-dev \
    libkrb5-dev

RUN docker-php-ext-install zip mbstring mysqli soap && \
    docker-php-ext-configure gd --with-jpeg-dir=/usr/lib && \
    docker-php-ext-install gd && \
    docker-php-ext-configure imap --with-imap-ssl --with-kerberos && \
    docker-php-ext-install imap

RUN cd /var/www && \
    rm -rf html/ && \
    git clone https://github.com/sugarcrm/sugarcrm_dev.git /var/www/html/

RUN usermod -u 1000 www-data
RUN chown -R www-data:www-data /var/www/html
RUN a2enmod rewrite
