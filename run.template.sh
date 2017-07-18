#!/bin/bash

docker stop php7
docker rm php7
docker run -it \
-v /app_config:/etc/apache2/sites-enabled/ \
-v /app:/var/www/app \
-p 8081:80 \
--name=php7 \
exception/php7 $1

