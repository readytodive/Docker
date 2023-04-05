#!/bin/bash

docker network create mynet

docker run -d --network mynet --name postgresdb \
--restart=always \
-e POSTGRES_PASSWORD=password \
postgres

docker run -d --network mynet --name adminer \
--restart=always \
-p 8080:8080 \
adminer
