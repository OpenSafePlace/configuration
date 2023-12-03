#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Set local time
inside 1 root $local__container_name_lowercase 'cp /usr/share/zoneinfo/Europe/Minsk /etc/localtime'
##
info "В контейнере '$local__container_name' произведена синхронизация с городом 'Минск'"
