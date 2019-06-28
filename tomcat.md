# Tomcat

[Docker Hub](https://hub.docker.com/_/tomcat/)

[Tomcat](http://tomcat.apache.org/)

## Volume de dados

```sh
sudo docker volume create --name tomcat_logs
sudo docker volume create --name tomcat_temp
sudo docker volume create --name tomcat_work
sudo docker volume create --name tomcat_webapps
```

## Rede

```sh
Não precisa
```

## Primeira execução

```sh
sudo docker run \
--name tomcat_8.5.12 \
-p 9009:8080 \
-v tomcat_logs:/usr/local/tomcat/logs \
-v tomcat_temp:/usr/local/tomcat/temp \
-v tomcat_webapps:/usr/local/tomcat/webapps \
-v tomcat_work:/usr/local/tomcat/work \
--restart=unless-stopped \
-d \
tomcat:8.5.12-jre8-alpine
```

