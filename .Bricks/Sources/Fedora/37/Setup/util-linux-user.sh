#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup packages
inside 1 root $local__container_name_lowercase "dnf install -y util-linux-user"
##
info "В контейнере '$local__container_name' настроен пакет 'util-linux-user'"
##
## Unset local vars
unset local__container_name_lowercase
