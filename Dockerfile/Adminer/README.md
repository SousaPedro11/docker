# Adminer
[Docker Hub](https://hub.docker.com/_/adminer/)

[Adminer](https://www.adminer.org/)

## Network
Optional
### Create
```sh
sudo docker network create -d bridge <network name>
```
### Connect (after container creation)
```sh
sudo docker network connect <network name> <container name>
```

## Image Build
```sh
sudo docker build \
-f DOCKERFILE
-t adminer:max_upload \
.
```

## Create and run container
### Without specific network
```sh
sudo docker run \
--name adminer \
-p 8081:8080 \
--restart=unless-stopped \
-d \
adminer:max_upload
```

### With specific network
```sh
sudo docker run \
--name adminer \
--net <network name>
-p 8081:8080 \
--restart=unless-stopped \
-d \
adminer:max_upload
```

## Informations:
To login:
* System - Database type (PostgreSQL, MySQL e etc...)
* Server - Container's name or database url
* User - Database's user
* Password - Database's pass
* Database - Optional
