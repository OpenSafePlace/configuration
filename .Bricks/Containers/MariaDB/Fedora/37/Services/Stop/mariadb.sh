#!/bin/bash

# General process
## Stop process
inside 5 root mariadb 'pkill -QUIT mariadbd'
##
info "В контейнере 'MariaDB' сервис 'mariadb' остановлен"
