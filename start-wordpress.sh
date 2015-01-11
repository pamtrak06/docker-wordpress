#!/bin/sh
docker run --name mysql-wp -e MYSQL_ROOT_PASSWORD=W0rdpress -d mysql --entrypoint=""
docker run --name wordpress-srv --link mysql-wp:mysql -p 8080:80 -d wordpress --entrypoint=""

mysql_id="$(docker ps -a | grep mysql-wp | cut -d ' ' -f1)"
wordpress_id="$(docker ps -a | grep wordpress-srv | cut -d ' ' -f1)"

docker logs $mysql_id
docker logs $wordpress_id

docker ps -a
