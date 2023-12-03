#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Set passwords
inside 1 root $local__container_name_lowercase "mysql -e \"ALTER USER 'private'@'${global__project_mariadb_allow_ips}' IDENTIFIED BY '${global__project_keys_new["[c:$local__container_name_lowercase]+[u:private]+[p:mysql]"]}';\""
##
info "В контейнере '$local__container_name' изменены основные пароли связанные с пакетом 'mariadb'"
