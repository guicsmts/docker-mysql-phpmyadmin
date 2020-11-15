# Running docker-compose 
docker-compose up --build -d

# Exec php-fpm pos deploy
docker exec srv-web-00 /etc/init.d/php7.4-fpm start
