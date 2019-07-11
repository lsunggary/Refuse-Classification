docker run -d --name=php   -v /var/www:/var/www php && docker run -d --name=nginx -p80:80 -v /var/www:/var/www --link=php:php nginx 
