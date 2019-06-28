# Plex Server

[Plex on DockerHub](https://hub.docker.com/r/linuxserver/plex)

[Plex Server](https://www.plex.tv/)

## Criar Volume ou Pasta
* Volume

```sh
sudo docker volume create --name plex_config
sudo docker volume create --name plex_transcode
```
* Pasta

```sh
mkdir ~/.plex
mkdir ~/.plex/config
mkdir ~/.plex/transcode
```

## Rede

```sh
Não precisa
```

## Criar Container

**OBS:** *"/mnt/sdb5/Cursos"*, *"/mnt/sdb5/Downloads/series"* e *"/mnt/sdb5/Downloads/filmes"* são pastas onde se encontram meus arquivos de mídia. Substitua pelo caminho de sua(s) pasta(s) de mídia.

* Usando Volume Criado

```sh
docker create \
--name=plex \
--network=host \
-e VERSION=latest \
-e PUID=1001 \
-e PGID=1001 \
-e TZ=America/Belem \
-v plex_config:/config \
-v plex_transcode:/transcode \
-v /mnt/sdb5/Cursos:/data/cursos \
-v /mnt/sdb5/Downloads/series:/data/tvshows \
-v /mnt/sdb5/Downloads/filmes:/data/movies \
--restart unless-stopped \
linuxserver/plex
```

* Usando Pasta Criada

```sh
docker create \
--name=plex \
--network=host \
-e VERSION=latest \
-e PUID=1001 \
-e PGID=1001 \
-e TZ=America/Belem \
-v /mnt/sdb5/.plex/config:/config \
-v /mnt/sdb5/.plex/transcode:/transcode \
-v /mnt/sdb5/Cursos:/data/cursos \
-v /mnt/sdb5/Downloads/series:/data/tvshows \
-v /mnt/sdb5/Downloads/filmes:/data/movies \
--restart unless-stopped \
linuxserver/plex
```
