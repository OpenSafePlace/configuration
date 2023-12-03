#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Configure source
inside 1 root $local__container_name_lowercase "dnf config-manager --set-disable updates"
##
info "В контейнере '$local__container_name' отключен 'updates' репозиторий"
