##Linux
```sh
docker run \
--name portainer \
-p 9000:9000 \
-v portainer_data:/data \
-v /var/run/docker.sock:/var/run/docker.sock \
--restart=unless-stopped \
--privileged \
-d portainer/portainer \
--logo "http://www.iec.gov.br/portal/arquivos/casarao_iec.svg"
```

## Windows
```sh
docker run --name portainer -p 9000:9000 -v portainer_data:/data -v //var/run/docker.sock:/var/run/docker.sock --restart=unless-stopped --privileged -d portainer/portainer --logo "http://www.iec.gov.br/portal/arquivos/casarao_iec.svg"
```
