#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Show ports status
info "В контейнере '$local__container_name' информация из брандмауэра"
##
space
##
space_null
##
inside 11 root $local__container_name_lowercase 'iptables -nvL' >&3
##
space_null
