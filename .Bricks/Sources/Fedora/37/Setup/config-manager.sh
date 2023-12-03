#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup packages
inside 1 root $local__container_name_lowercase "dnf install -y 'dnf-command(config-manager)'"
inside 1 root $local__container_name_lowercase "dnf config-manager --set-disable \*"
##
info "В контейнере '$local__container_name' настроен пакет 'config-manager'"
##
## Unset local vars
unset local__container_name_lowercase
