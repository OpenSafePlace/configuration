#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 1 root $local__container_name_lowercase "dnf install -y nethogs"
##
## Configure launch
inside 1 private $local__container_name_lowercase "echo 'alias nethogs=\"cpulimit --limit=\$global__project_power --lazy --include-children sudo nethogs\"' >> /home/private/.zsh_alias"
##
info "В контейнере '$local__container_name' настроен пакет 'nethogs'"
##
## Unset local vars
unset local__container_name_lowercase
