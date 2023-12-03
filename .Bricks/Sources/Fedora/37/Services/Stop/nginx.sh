#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Stop process
inside 5 root $local__container_name_lowercase 'pkill -QUIT nginx'
##
info "В контейнере '$local__container_name' сервис 'mariadb' остановлен"
