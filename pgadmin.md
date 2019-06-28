# pgAdmin4

[Docker Hub](https://hub.docker.com/r/dpage/pgadmin4)

[pgAdmin4](https://www.pgadmin.org/)

## Volume de dados

```sh
sudo docker volume create --name pgadmin4_home
sudo docker volume create --name pgadmin4_data
sudo docker volume create --name pgadmin4_lib
```

## Rede

Caso necessite, crie uma e conecte o pgadmin e o banco nela.
Para criar:
```sh
sudo docker network create -d bridge nome_da_rede
```
Para conectar o container existente (banco ou adminer) em uma rede existente, caso não o faça durante a criação:
```sh
sudo docker network connect nome_da_rede nome_do container
```

## Primeira execução

### Linux

```sh
docker run \
--name pgadmin_dpage \
-p 3500:80 \
-v pgadmin4_home:/root \
-v pgadmin4_data:/var/lib/pgadmin4 \
-v pgadmin4_lib:/var/lib/pgadmin \
-e "PGADMIN_DEFAULT_EMAIL=email@email.com" \
-e "PGADMIN_DEFAULT_PASSWORD=senhaqualquer" \
--restart=unless-stopped \
-d \
dpage/pgadmin4
```

### Windows
```sh
docker run \
--name pg_admin4 \
-p 3500:80 \
-v pgadmin4_lib://var/lib/pgadmin \
-v pgadmin4_home://root \
-v pgadmin4_data://var/lib/pgadmin4 \
-e "PGADMIN_DEFAULT_EMAIL=email@email.com" \
-e "PGADMIN_DEFAULT_PASSWORD=senhaqualquer" \
--restart=unless-stopped \
-d \
dpage/pgadmin4
```