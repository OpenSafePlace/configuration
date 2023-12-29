#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Set password
inside 1 root $local__container_name_lowercase "mysql -e \"ALTER USER 'private'@'%' IDENTIFIED BY '${global__project_keys_new[[c:$local__container_name_lowercase]+[u:private]+[p:mysql]]}';\""
##
info "В контейнере '$local__container_name' изменены основные пароли связанные с пакетом 'mariadb'"
