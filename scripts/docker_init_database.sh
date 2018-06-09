#!/bin/bash


docker run -it --name mysql_niebiescy -e MYSQL_ROOT_PASSWORD=password -p 3306:3306 -d mysql
docker exec mysql -u root -ppassword < init.sql


