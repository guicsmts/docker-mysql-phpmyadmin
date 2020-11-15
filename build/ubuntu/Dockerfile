FROM ubuntu:20.04
MAINTAINER Guilherme Matos
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    vim \
    inetutils-ping \
    nginx \
    php7.4 \
    php7.4-fpm \
    phpmyadmin \
    php-mbstring \
    php-zip \
    php-gd \
    php-json \
    php-curl

# Linkando o diretorio phpmyadmin para diretorio default nginx
RUN ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
# Renomeando diretorio padrão phpmyadmin para convenia
RUN mv /var/www/html/phpmyadmin /var/www/html/convenia
# Renomeando arquivos default (.df) para novos arquivos do volume phpmyadmin
RUN mv /usr/share/phpmyadmin/libraries/config.default.php /usr/share/phpmyadmin/libraries/config.default.php.df
RUN mv /etc/phpmyadmin/config-db.php /etc/phpmyadmin/config-db.php.df
# Configuração de ssl
COPY ./ssl.sh /etc/nginx/ssl/
WORKDIR /etc/nginx/ssl/
RUN chmod +x ssl.sh
RUN ./ssl.sh 
# Iniciando serviços
RUN /etc/init.d/nginx start
RUN /etc/init.d/php7.4-fpm start
# 
EXPOSE 80
EXPOSE 443
EXPOSE 9000