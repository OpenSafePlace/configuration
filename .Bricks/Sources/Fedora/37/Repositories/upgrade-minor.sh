#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Minor upgrade OS
inside 1 root $local__container_name_lowercase "dnf upgrade -y"
##
info "В контейнере '$local__container_name' все пакеты обновлены"
