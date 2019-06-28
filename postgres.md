# PostgreSQL

[Docker Hub](https://hub.docker.com/_/postgres/)

[PostgreSQL](https://www.postgresql.org/)

## Volume de dados

```sh
sudo docker volume create --name postgresql_9.0.19_data
sudo docker volume create --name postgresql_9.1_data
sudo docker volume create --name postgresql_9.2_data
sudo docker volume create --name postgresql_9.3_data
sudo docker volume create --name postgresql_9.4_data
sudo docker volume create --name postgresql_9.5_data
sudo docker volume create --name postgresql_9.6.6_data

```

## Rede

```sh
Não precisa
```

## Primeira execução

### PostgreSQL 9.0.19

```sh
docker run \
--name pg_9.0.19 \
-p 3000:5432 \
-v postgresql_9.0.19_data:/var/lib/postgresql/data \
-e POSTGRES_USER=defina_usuario \
-e POSTGRES_PASSWORD=defina_senha \
-e POSTGRES_DB=my-database \
--restart=unless-stopped \
-d \
postgres:9.0.19
```

### PostgreSQL 9.1

```sh
docker run \
--name pg_9.1 \
-p 3000:5432 \
-v postgresql_9.1_data:/var/lib/postgresql/data \
-e POSTGRES_USER=defina_usuario \
-e POSTGRES_PASSWORD=defina_senha \
-e POSTGRES_DB=my-database \
--restart=unless-stopped \
-d \
postgres:9.1
```

### PostgreSQL 9.2

```sh
docker run \
--name pg_9.2 \
-p 3001:5432 \
-v postgresql_9.2_data:/var/lib/postgresql/data \
-e POSTGRES_USER=defina_usuario \
-e POSTGRES_PASSWORD=defina_senha \
-e POSTGRES_DB=my-database \
--restart=unless-stopped \
-d \
postgres:9.2
```

### PostgreSQL 9.3

```sh
docker run \
--name pg_9.3 \
-p 3002:5432 \
-v postgresql_9.3_data:/var/lib/postgresql/data \
-e POSTGRES_USER=defina_usuario \
-e POSTGRES_PASSWORD=defina_senha \
-e POSTGRES_DB=my-database \
--restart=unless-stopped \
-d \
postgres:9.3
```

### PostgreSQL 9.4

```sh
docker run \
--name pg_9.4 \
-p 3003:5432 \
-v postgresql_9.4_data:/var/lib/postgresql/data \
-e POSTGRES_USER=defina_usuario \
-e POSTGRES_PASSWORD=defina_senha \
-e POSTGRES_DB=my-database \
--restart=unless-stopped \
-d \postgres:9.4
```

### PostgreSQL 9.5

```sh
docker run \
--name pg_9.5 \
-p 3004:5432 \
-v postgresql_9.5_data:/var/lib/postgresql/data \
-e POSTGRES_USER=defina_usuario \
-e POSTGRES_PASSWORD=defina_senha \
-e POSTGRES_DB=my-database \
--restart=unless-stopped \
-d \
postgres:9.5
```

### PostgreSQL 9.6.6

```sh
docker run \
--name pg_9.6.6-alpine \
-p 5432:5432 \
-v postgresql_9.6.6_data:/var/lib/postgresql/data \
-e POSTGRES_USER=defina_usuario \
-e POSTGRES_PASSWORD=defina_senha \
-e POSTGRES_DB=postgres \
--restart=unless-stopped \
-d \
postgres:9.6.6-alpine
```

### PostgreSQL latest

```sh
docker run \
--name pg_banco \
-p 5432:5432 \
-v postgresql_9.6.6_data:/var/lib/postgresql/data \
-e POSTGRES_USER=defina_usuario \
-e POSTGRES_PASSWORD=defina_senha \
-e POSTGRES_DB=postgres \
--restart=unless-stopped \
-d \
postgres:alpine
```
