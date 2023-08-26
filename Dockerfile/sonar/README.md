# Sonarqube with database

## :rocket: How to launch

### 1. Windows

```sh
docker-compose up
```

or

```sh
docker-compose up -d
```

### 2. Linux

#### 2.1. With make

- Up: Execute the script and up containers

```sh
make up
```

Similar to `sh ./sonar_pre.sh && docker-compose build && docker-compose up -d`

- Down: Down and remove containers

```sh
make down
```

- Start: Start pre-generated containers

```sh
make start
```

- Stop: Only stop containers without remove

```sh
make stop
```

- Restart: Restart all containers

```sh
make restart
```

- Logs: Show logs of all containers

```sh
make logs
```
