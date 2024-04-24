#!/usr/bin/env bash

docker run -d\
    --name mysql-container\
    -e MYSQL_ROOT_PASSWORD=$MYSQL_PASSWORD\
    -p 3306:3306\
    mysql:8.3.0
