# Trabalho Individual 2020-1

**Aluno**: Max Henrique Barbosa

**Matrícula**: 160047013

![CI](https://github.com/Maxlobo/Trabalho-Individual-2020-1/workflows/CI/badge.svg?branch=master)

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=Maxlobo_Trabalho-Individual-2020-1&metric=alert_status)](https://sonarcloud.io/dashboard?id=Maxlobo_Trabalho-Individual-2020-1)


# Solução

## Docker

Foi utilizado o Docker para a criação dos ambientes de frontend, api e database. Para isso foi criado um arquivo docker-compose.yml na raiz do projeto e arquivos Dockerfile (juntamente com arquivos de entrypoit.sh), dentro da pasta de cada ambiente: **client** e **api** (com exceção da database por já haver uma image do postgres no Docker).

Para facilitar a comunicação entre os conteiners da api e do banco de dados foi criada uma network chamada de **project_network**.


## Integração Contínua

Para a Integração contínua foi usado o Github Actions. Foi criado o workflow **CI** onde todas as configurações de build, testes e da ferramenta sonarcloud para a manutenibilidade e qualidade de cada execução de push ou pull request feitos para as branches estáveis do trabalho.

## Deploy 

 - **Heroku** O deploy do backend foi realizado no Heroku. http://backend-gces-max.herokuapp.com/api/v1/profiles
 - **Vercel** O deploy do frontend foi feito no Vercel. https://trabalho-individual-2020-1-git-master.maxlobo.vercel.app/#/

# Como executar

Para subir e buildar o projeto, basta rodar o comando abaixo:

```sh
docker-compose up --build -d
```

Para rodar os testes do trabalho dockerizado utilize os comandos:

- Frontend

```sh
docker-compose run -e "NODE_ENV=test" --rm frontend
```

- Backend

```sh
docker-compose run -e "RAILS_ENV=test" --rm api
```
