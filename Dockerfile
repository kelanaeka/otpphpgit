FROM php:7-apache
COPY www/ /var/www/html/
RUN apt-get update -y && apt-get install -y libpng-dev curl libcurl4-openssl-dev
RUN docker-php-ext-install pdo pdo_mysql gd curl
RUN service apache2 restart