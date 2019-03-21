# Linux
## Banco MySQL
### Mysql 5.5
```sh
docker run \
--name mysql_5.5 \
-p 3306:3306 \
--net net-backend \
-v mysql_config/:/etc/mysql/conf.d \
-v /etc/localtime:/etc/localtime:ro \
-v mysql_data/:/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=pass \
-e MYSQL_USER=iec_desenv \
-e MYSQL_PASSWORD=iec_desenv \
-e MYSQL_ALLOW_EMPTY_PASSWORD=false \
--restart=unless-stopped \
-d \
mysql:5.5
```

### MySql latest (8.0.15)
```sh
docker run \
--name mysql_latest \
-p 3306:3306 \
--net net-backend \
-v mysql_latest_config:/etc/mysql/conf.d \
-v /etc/localtime:/etc/localtime:ro \
-v mysql_latest_data:/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=pass \
-e MYSQL_USER=iec_desenv \
-e MYSQL_PASSWORD=iec_desenv \
-e MYSQL_ALLOW_EMPTY_PASSWORD=false \
--restart=unless-stopped \
-d \
mysql \
--default-authentication-plugin=mysql_native_password
```

## phpMyAdmin
### phpMyAdmin 4.7.0-1 integrado com mysql_5.5
```sh
docker run \
--name phpmyadmin \
-p 3600:80 \
-p 9001:9000 \
--net net-backend \
-v phpmyadmin_sessions_4.7.0_1:/sessions \
-e PMA_HOST=mysql_5.5 \
--restart=unless-stopped \
-d \
phpmyadmin/phpmyadmin:4.7.0-1
```

### phpMyAdmin latest (4.8.5) integrado com mysql_latest
```sh
docker run \
--name phpmyadmin_latest \
-p 3800:80 \
-p 9008:9000 \
--net net-backend \
-v phpmyadmin_sessions_latest:/sessions \
-e PMA_HOST=mysql_latest \
--restart=unless-stopped \
-d \
phpmyadmin/phpmyadmin
```

## Wordpress
### Wordpress 4.7-php5.6
```sh
docker run \
--name wordpress \
--restart=unless-stopped \
--net net-backend \
-p 8011:80 \
-e WORDPRESS_DB_HOST=mysql_5.5 \
-e WORDPRESS_DB_USER=root \
-e WORDPRESS_DB_PASSWORD=pass \
-v wordpress_www/:/var/www/html \
-v wordpress_config/uploads.ini:/usr/local/etc/php/conf.d/uploads.ini \
-v /etc/localtime:/etc/localtime:ro \
-d \
wordpress:4.7-php5.6
```

### Wordpress latest (5.1.1-php7.2-apache) integrado ao mysql_latest
```sh
docker run \
--name wordpress_latest \
--restart=unless-stopped \
--net net-backend \
-p 8010:80 \
-p 9005:9000 \
-e WORDPRESS_DB_HOST=mysql_latest \
-e WORDPRESS_DB_USER=root \
-e WORDPRESS_DB_PASSWORD=pass \
-v wordpress_latest_www:/var/www/html \
-v wordpress_latest_config:/usr/local/etc/php/conf.d \
-v /etc/localtime:/etc/localtime:ro \
-d \
wordpress
```

# Windows
## Banco MySQL
### Mysql 5.5
```sh
docker run --name mysql_5.5 -p 3306:3306 --net net-backend -v /c/Users/pedrosousa/Documents/volumes/mysql/config/://etc/mysql/conf.d -v /etc/localtime://etc/localtime:ro -v /c/Users/pedrosousa/Documents/volumes/mysql/dat a/://var/lib/mysql -e MYSQL_ROOT_PASSWORD=pass -e MYSQL_USER=iec_desenv -e MYSQL_PASSWORD=iec_desenv -e MYSQL_ALLOW_EMPTY_PASSWORD=false --restart=unless-stopped -d mysql:5.5
```

### MySql latest (8.0.15)
```sh
docker run --name mysql_latest -p 3307:3306 --net net-backend -v /c/Users/pedrosousa/Documents/volumes/mysql_latest/config/://etc/mysql/conf.d -v /etc/localtime://etc/localtime:ro -v /c/Users/pedrosousa/Documents/volumes /mysql_latest/data/://var/lib/mysql -e MYSQL_ROOT_PASSWORD=pass -e MYSQL_USER=iec_desenv -e MYSQL_PASSWORD=iec_desenv -e MYSQL_ALLOW_EMPTY_PASSWORD=false --restart=unless-stopped -d mysql --default-authentication-plugin=mysql_native_password
```

## phpMyAdmin
### phpMyAdmin 4.7.0-1 integrado com mysql_5.5
```sh
docker run --name phpmyadmin -p 3600:80 -p 9001:9000 --net net-backend -v phpmyadmin_sessions_4.8.5://sessions -e PMA_HOST=mysql_5.5 --restart=unless-stopped -d phpmyadmin/phpmyadmin:4.7.0-1
```

### phpMyAdmin latest (4.8.5) integrado com mysql_latest
```sh
docker run --name phpmyadmin_latest -p 3800:80 -p 9002:9000 --net net-backend -v phpmyadmin_sessions_latest://sessions -e PMA_HOST=mysql_latest --restart=unless-stopped -d phpmyadmin/phpmyadmin
```

## Wordpress
### Wordpress 4.7-php5.6 integrado com mysql_5.5
```sh
docker run --name wordpress --restart=unless-stopped --net net-backend -p 8011:80 -e WORDPRESS_DB_HOST=mysql_5.5 -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=pass -v /c/Users/pedrosousa/Documents/volumes/wordpress/ www/://var/www/html -v /c/Users/pedrosousa/Documents/volumes/wordpress/config/uploads.ini://usr/local/etc/php/conf.d/uploads.ini -v /etc/localtime://etc/localtime:ro -d wordpress:4.7-php5.6
```

### Wordpress latest (5.1.1-php7.2-apache) integrado ao mysql_latest
```sh
docker run --name wordpress_latest --restart=unless-stopped --net net-backend -p 8010:80 -p 9005:9000 -e WORDPRESS_DB_HOST=mysql_latest -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=pass -v /c/Users/pedrosousa/Documents/volumes/wordpress_latest/www/://var/www/html -v /c/Users/pedrosousa/Documents/volumes/wordpress_latest/config/uploads.ini://usr/local/etc/php/conf.d/uploads.ini -v /etc/localtime://etc/localtime:ro -d wordpress
```
