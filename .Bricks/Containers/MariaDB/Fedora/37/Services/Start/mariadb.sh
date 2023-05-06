#!/bin/bash

# General process
## Start process
inside 5 root mariadb 'mysqld_safe >> /var/log/mariadb/run.log'
##
info "В контейнере 'MariaDB' сервис 'mariadb' запущен"
