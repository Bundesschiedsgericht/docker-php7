#!/bin/bash

chown -R www-data:www-data /var/www/app
source /etc/apache2/envvars
tail -F /var/log/apache2/* &
exec apache2 -D FOREGROUND
