!#/bin/bash

docker exec -it wordpress_web_1 zip -r -y code.zip /code
docker exec -it wordpress_web_1 mv code.zip /code
docker cp wordpress_web_1:/code/code.zip /Users/jp/git/wordpress/backup

