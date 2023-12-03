#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 1 root $local__container_name_lowercase "dnf install -y 'dnf-command(system-upgrade)'"
##
info "В контейнере '$local__container_name' настроен пакет 'system-upgrade'"
##
## Unset local vars
unset local__container_name_lowercase
