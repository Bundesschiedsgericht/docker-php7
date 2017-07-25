#!/bin/bash

export LANGUAGE=de_DE.UTF-8
export LANG=de_DE.UTF-8
export LC_ALL=de_DE.UTF-8
locale-gen de_DE.UTF-8

chown -R www-data:www-data /var/www/app
source /etc/apache2/envvars
tail -F /var/log/apache2/* &
exec apache2 -D FOREGROUND
