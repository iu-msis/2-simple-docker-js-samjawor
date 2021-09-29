FROM php:7.4-apache

LABEL maintainer="Sam Jaworski"

RUN docker-php-ext-install pdo_mysql

COPY docker/php/php.ini /usr/local/etc/php/php.ini

COPY docker/apache/vhost.conf /etc/apache2/sites-available/000-default.conf

COPY app /srv/app

WORKDIR /srv/app
