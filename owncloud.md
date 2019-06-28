# OwnCloud

[Docker Hub](https://hub.docker.com/_/owncloud)

[OwnCloud](https://owncloud.org/)

## Volume de dados

```sh
sudo docker volume create --name owncloud_apps
sudo docker volume create --name owncloud_config
sudo docker volume create --name owncloud_data
```

## Rede

```sh
Não precisa
```

## Primeira execução

```sh
sudo docker run \
--name owncloud\
-p 9090:80 \
-v owncloud_apps:/var/www/html/apps \
-v owncloud_config:/var/www/html/config \
-v owncloud_data:/var/www/html/data \
-v /etc/localtime:/etc/localtime:ro
--restart=unless-stopped \
-d \
owncloud