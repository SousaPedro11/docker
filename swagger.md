# Swagger

[Docker Hub](https://hub.docker.com/u/swaggerapi/)

[Swagger](http://swagger.io/)

## Volume de dados

```sh
Não precisa
```

## Rede

```sh
Não precisa
```

## Primeira execução

### Swagger Editor

Design new APIs, or edit existing ones, in a powerful editor which visually renders your OAS/Swagger definition with concise, real time feedback and error handling.

```sh
sudo docker run \
--name swagger_editor_3.1.19 \
-p 9000:8080 \
--restart=unless-stopped \
-d \
swaggerapi/swagger-editor:v3.1.19
```

### Swagger UI

Visualize your API's resources from its OAS/Swagger definition and generate beautiful, interactive documentation that can be hosted in any environment, allowing your end consumers to easily get started with your API.

```sh
sudo docker run \
--name swagger_ui_3.6.1 \
-p 9001:8080 \
--restart=unless-stopped \
-d \
swaggerapi/swagger-ui:v3.6.1
```

### Swagger Validator

The swagger validator web serviceThe swagger validator web service

```sh
sudo docker run \
--name swagger_validator_1.0.3 \
-p 9002:8080 \
--restart=unless-stopped \
-d \
swaggerapi/swagger-validator:v1.0.3
```

Usage

```
http://localhost:9002?url=http://petstore.swagger.io/v2/swagger.json
```

### Swagger CodeGen

Quickly build APIs by turning your OAS/Swagger definition into code, generating server stubs and client libraries in over 40 different languages, allowing for development and prototyping.

_Be sure to set the GENERATOR_HOST based on the IP address of your server!_

```sh
sudo docker run \
--name swagger_generator_2.2.2 \
-p 9003:8080 \
-e GENERATOR_HOST=ip_of_your_server \
--restart=unless-stopped \
-d \
swaggerapi/swagger-generator:v2.2.2
```
