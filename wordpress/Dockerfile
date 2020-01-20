# using Debian 9.5
FROM halvardssm/lemp:latest
ADD VERSION .
ENV appname=wordpress
RUN apt update &&\
    apt install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
#    echo "CREATE DATABASE ${appname} DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;GRANT ALL ON ${appname}.* TO '${username}'@'localhost' IDENTIFIED BY '${password}';FLUSH PRIVILEGES;EXIT;" | mysql && \
#     systemctl restart php7.2-fpm && \
#     touch /etc/nginx/sites-available/${appname} && echo "server {\
#     listen [::]:80;\
#     root /var/www/${appname}/html;\
#     index index.html index.php index.htm index.nginx-debian.html;\
#     server_name ${appname} www.${appname};\
#     location / {\
#     #try_files $uri $uri/ =404;\
#     try_files $uri $uri/ /index.php$is_args$args;}\
#     location ~ \.php$ {\
#     include snippets/fastcgi-php.conf;\
#     fastcgi_pass unix:/var/run/php/php7.2-fpm.sock;}\
#     location ~ /\.ht {\
#     deny all;}\
#     location = /favicon.ico { log_not_found off; access_log off; }\
#     location = /robots.txt { log_not_found off; access_log off; allow all; }\
#     location ~* \.(css|gif|ico|jpeg|jpg|js|png)$ {\
#     expires max;\
#     log_not_found off;}}" >> /etc/nginx/sites-available/${appname} && \
#     nginx -t && \
#     systemctl reload nginx
# RUN sed -i '0,/listen.*=.*/ s/listen.*=.*/listen=localhost:9000/' /etc/php/7.2/fpm/pool.d/www.conf && \
# 	sed -i 's|;cgi.fix_pathinfo.*=.*|cgi.fix_pathinfo=0|' /etc/php/7.2/fpm/php.ini && \
# 	sed -i 's|;date.timezone.*=.*|date.timezone=Europe/Oslo|' /etc/php/7.2/fpm/php.ini
RUN mkdir -p /var/www/${appname};\
	chown -R www-data:www-data /var/www;\
	chmod 0755 /var/www

RUN echo 'CREATE DATABASE wordpress;GRANT ALL PRIVILEGES ON wordpress.* TO "wordpress"@"localhost" IDENTIFIED BY "wordpress";FLUSH PRIVILEGES;' | mysql

COPY php.ini /etc/php/7.2/fpm/php.ini
COPY nginx-server-file /etc/nginx/sites-available/${appname}
COPY wp-config.php /var/www/${appname}/html/wp-config.php
 
EXPOSE 80
