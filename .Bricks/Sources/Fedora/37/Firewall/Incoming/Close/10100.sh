#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Close port
inside 11 root $local__container_name_lowercase 'iptables -I INPUT -p tcp -m tcp --dport 10100 -j DROP'
##
info "В контейнере '$local__container_name' порт '10100' закрыт"
