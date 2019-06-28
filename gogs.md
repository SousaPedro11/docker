# Gogs

[Docker Hub](https://hub.docker.com/r/gogs/gogs/)

[Gogs - Go Git Service](https://gogs.io/)

## Volume de dados

```sh
sudo docker volume create --name gogs_data
```

## Rede

```sh
Não precisa
```

## Primeira execução

```sh
sudo docker run \
--name gogs \
-p 7000:22 \
-p 9002:3000 \
-v gogs_data:/data \
--restart=unless-stopped \
-d \
gogs/gogs
```