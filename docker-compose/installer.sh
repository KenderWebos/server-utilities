#!bin/bash

docker compose -f wordpress/docker-compose.yml up -d

docker compose -f mysql/docker-compose.yml up -d
