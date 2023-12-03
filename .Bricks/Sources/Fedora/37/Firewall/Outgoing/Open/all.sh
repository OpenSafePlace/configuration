#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Open port
inside 11 root $local__container_name_lowercase 'iptables -F OUTPUT'
inside 11 root $local__container_name_lowercase 'iptables -A OUTPUT -j ACCEPT'
##
info "В контейнере '$local__container_name' все порты на выход открыты"
