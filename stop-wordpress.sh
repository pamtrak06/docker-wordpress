#!/bin/bash

mysql_id="$(docker ps -a | grep mysql-wp | cut -d ' ' -f1)"
wordpress_id="$(docker ps -a | grep wordpress-srv | cut -d ' ' -f1)"

docker stop $mysql_id; docker rm $mysql_id
docker stop $wordpress_id; docker rm $wordpress_id

docker ps -a
