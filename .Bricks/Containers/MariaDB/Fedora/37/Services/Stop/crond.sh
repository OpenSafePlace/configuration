#!/bin/bash

# General process
## Stop process
inside 5 root mariadb 'pkill crond'
##
info "В контейнере 'MariaDB' сервис 'crond' остановлен"
