# Portainer

[Docker Hub](https://hub.docker.com/r/portainer/portainer/)

[Portainer](http://portainer.io/)

## Volume de dados

```sh
sudo docker volume create --name portainer_data
```

## Rede

```sh
Não precisa
```

## Primeira execução

### Linux
```sh
sudo docker run \
--name portainer \
-p 9000:9000 \
-v portainer_data:/data \
-v /var/run/docker.sock:/var/run/docker.sock \
--restart=unless-stopped \
--privileged \
-d portainer/portainer
```

### Windows
```sh
docker run --name portainer -p 9000:9000 -v portainer_data:/data -v //var/run/docker.sock:/var/run/docker.sock --restart=unless-stopped --privileged -d portainer/portainer
```
