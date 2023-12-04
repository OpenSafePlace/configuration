#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Set password
inside 13 root $local__container_name_lowercase "echo 'private:${global__project_keys_new["[c:$local__container_name_lowercase]+[u:private]+[p:sudo]"]}' | chpasswd"
##
info "В контейнере '$local__container_name' изменен основной пароль связанный с пакетом 'sudo'"
