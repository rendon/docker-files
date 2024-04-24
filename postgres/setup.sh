#!/usr/bin/env bash

docker run -d\
    --name postgres-container\
    -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD\
    -p 5432:5432\
    postgres:15
