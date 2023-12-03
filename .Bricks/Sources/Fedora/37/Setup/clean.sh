#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Clean cache
inside 1 root $local__container_name_lowercase "dnf clean all"
##
info "В контейнере '$local__container_name' очищен кэш менеджера пакетов"
##
## Unset local vars
unset local__container_name_lowercase
