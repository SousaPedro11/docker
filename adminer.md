# Adminer
[Docker Hub](https://hub.docker.com/_/adminer/)

[Adminer](https://www.adminer.org/)

## Volume de dados
```sh
Não precisa
```

## Rede
Caso necessite, crie uma e conecte o adminer e o banco nela.
Para criar:
```sh
sudo docker network create -d bridge nome_da_rede
```
Para conectar o container existente (banco ou adminer) em uma rede existente, caso não o faça durante a criação:
```sh
sudo docker network connect nome_da_rede nome_do_container
```

## Criação e execução do container
```sh
sudo docker run \
--name adminer \
-p 8080:8080 \
--restart=unless-stopped \
-d \
adminer
```

## OBS:
Na hora do login:
* Sistema - Tipo do Banco (PostgreSQL, MySQL e etc...)
* Servidor - Nome do container ou endereco do banco
* Usuário - Usuário de acesso do banco
* Senha - Senha de acesso do banco
* Base de dados - Opcional, pode ficar em branco
