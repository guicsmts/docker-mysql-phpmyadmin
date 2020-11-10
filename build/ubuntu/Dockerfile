FROM ubuntu:20.04
MAINTAINER Guilherme Matos
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    vim \
    nginx \
    php7.4 \
    php7.4-fpm \
    phpmyadmin \
    php-mbstring \
    php-zip \
    php-gd \
    php-json \
    php-curl


#

RUN ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
#
RUN mv /var/www/html/phpmyadmin /var/www/html/convenia
#
RUN service nginx start
RUN service php7.4-fpm start
#
EXPOSE 80
EXPOSE 443
EXPOSE 9000