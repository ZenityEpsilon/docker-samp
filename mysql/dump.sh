#!/bin/bash

docker-compose exec mysql mysqldump -u mysql --password=mysql db > mysql/initdb.d/00_initdb.dump.sql