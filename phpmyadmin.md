# phpMyAdmin

[Docker Hub](https://hub.docker.com/r/phpmyadmin/phpmyadmin/)

[phpMyAdmin](https://www.phpmyadmin.net/)

## Volume de dados

```sh
sudo docker volume create --name phpmyadmin_sessions-4.6

sudo docker volume create --name phpmyadmin_sessions-4.7

sudo docker volume create --name phpmyadmin_sessions_4.8.5

sudo docker volume create --name phpmyadmin_sessions
```

## Rede

Caso necessite, crie uma e conecte o PhpMyadmin e o banco nela.
Para criar:
```sh
sudo docker network create -d bridge nome_da_rede
```
Para conectar o container existente (banco ou adminer) em uma rede existente, caso não o faça durante a criação:
```sh
sudo docker network connect nome_da_rede nome_do container
```
E também, caso precise, substitua o "-e PMA_ARBITRARY=1" por "-e PMA_HOST=nome_do_container_banco"

## Primeira execução

### PhpMyadmin_4.6.6-1
```sh
sudo docker run \
--name phpmyadmin_4.6.6-1 \
-p 3600:80 \
-v phpmyadmin_sessions-4.6:/sessions \
-e PMA_ARBITRARY=1 \
--restart=unless-stopped \
-d \
phpmyadmin/phpmyadmin:4.6.6-1
```

### PhpMyadmin_4.7.0-1
```sh
sudo docker run \
--name phpmyadmin_4.7.0-1 \
-p 3700:80 \
-v phpmyadmin_sessions-4.7:/sessions \
-e PMA_ARBITRARY=1 \
--restart=unless-stopped \
-d \
phpmyadmin/phpmyadmin:4.7.0-1
```

### PhpMyadmin_4.8.5
```sh
sudo docker run \
--name phpmyadmin_4.8.5 \
-p 3700:80 \
-v phpmyadmin_sessions_4.8.5:/sessions \
-e PMA_ARBITRARY=1 \
--restart=unless-stopped \
-d \
phpmyadmin/phpmyadmin:4.8.5
```

### PhpMyAdmin integrado com banco_mysql
```sh
sudo docker run \
--name phpmyadmin_latest \
-p 3800:80 \
-p 9008:9000 \
--net nome_da_rede_criada_do_mysql \
-v phpmyadmin_sessions:/sessions \
-e PMA_HOST=nome_container_mysql \
--restart=unless-stopped \
-d \
phpmyadmin/phpmyadmin
```
