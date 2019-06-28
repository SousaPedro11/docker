# Mysql

[Docker Hub](https://hub.docker.com/_/mysql/)

[Mysql](https://www.mysql.com/)

## Volume de dados

```sh
sudo docker volume create --name mysql_5.5_data
sudo docker volume create --name mysql_5.5_config

sudo docker volume create --name mysql_5.6_data
sudo docker volume create --name mysql_5.6_config

sudo docker volume create --name mysql_5.7_data
sudo docker volume create --name mysql_5.7_config

sudo docker volume create --name mysql_8.0.3_data
sudo docker volume create --name mysql_8.0.3_config

sudo docker volume create --name mysql_data
sudo docker volume create --name mysql_config
```

## Rede

```sh
Não precisa
```

## Primeira execução

### Mysql 5.5

```sh
docker run \
--name mysql_5.5 \
-p 3306:3306 \
-v mysql_5.5_config:/etc/mysql/conf.d \
-v mysql_5.5_data:/var/lib/mysql \
-v /etc/localtime:/etc/localtime:ro \
-e MYSQL_ROOT_PASSWORD=defina_senha_root \
-e MYSQL_DATABASE=my-database \
-e MYSQL_USER=defina_usuario \
-e MYSQL_PASSWORD=defina_senha \
-e MYSQL_ALLOW_EMPTY_PASSWORD=false \
--restart=unless-stopped \
-d \
mysql:5.5
```

### Mysql 5.6

```sh
docker run \
--name mysql_5.6 \
-p 2001:3306 \
-v mysql_5.6_data:/var/lib/mysql \
-v mysql_5.6_config:/etc/mysql/conf.d \
-v /etc/localtime:/etc/localtime:ro \
-e MYSQL_ROOT_PASSWORD=defina_senha_root \
-e MYSQL_DATABASE=my-database \
-e MYSQL_USER=defina_usuario \
-e MYSQL_PASSWORD=defina_senha \
-e MYSQL_ALLOW_EMPTY_PASSWORD=false \
--restart=unless-stopped \
-d \
mysql:5.6
```
### Mysql 5.7

```sh
docker run \
--name mysql_5.7 \
-p 2002:3306 \
-v mysql_5.7_config:/etc/mysql/conf.d \
-v mysql_5.7_data:/var/lib/mysql \
-v /etc/localtime:/etc/localtime:ro \
-e MYSQL_ROOT_PASSWORD=defina_senha_root \
-e MYSQL_DATABASE=my-database \
-e MYSQL_USER=defina_usuario \
-e MYSQL_PASSWORD=defina_senha \
-e MYSQL_ALLOW_EMPTY_PASSWORD=false \
--restart=unless-stopped \
-d \
mysql:5.7
```

### Mysql 8.0.3

```sh
docker run \
--name mysql_8.0.3 \
-p 3306:3306 \
-v mysql_8.0.3_config:/etc/mysql/conf.d \
-v mysql_8.0.3_data:/var/lib/mysql \
-v /etc/localtime:/etc/localtime:ro \
-e MYSQL_ROOT_PASSWORD=defina_senha_root \
-e MYSQL_DATABASE=my-database \
-e MYSQL_USER=defina_usuario \
-e MYSQL_PASSWORD=defina_senha \
-e MYSQL_ALLOW_EMPTY_PASSWORD=false \
--restart=unless-stopped \
-d \
mysql:8.0.3
```

### MySql latest
```sh
docker run \
--name mysql_latest \
-p 3306:3306 \
-v mysql_config:/etc/mysql/conf.d \
-v mysql_data:/var/lib/mysql \
-v /etc/localtime:/etc/localtime:ro \
-e MYSQL_ROOT_PASSWORD=defina_senha_root \
-e MYSQL_DATABASE=my-database \
-e MYSQL_USER=defina_usuario \
-e MYSQL_PASSWORD=defina_senha \
-e MYSQL_ALLOW_EMPTY_PASSWORD=false \
--restart=unless-stopped \
-d \
mysql \
--default-authentication-plugin=mysql_native_password
```
