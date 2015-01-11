#!/bin/bash

mysql_id="$(docker ps -a | grep mysql-wp | cut -d ' ' -f1)"
wordpress_id="$(docker ps -a | grep wordpress-srv | cut -d ' ' -f1)"

docker commit -m="mysql for wordpress" -a="pamtrak06" $mysql_id pamtrak06/mysql-wordpress
docker commit -m="wordpress" -a="pamtrak06" $wordpress_id pamtrak06/wordpress-srv

