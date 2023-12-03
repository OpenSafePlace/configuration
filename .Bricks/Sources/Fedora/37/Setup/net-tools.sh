#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 1 root $local__container_name_lowercase "dnf install -y net-tools"
##
## Configure launch
inside 1 private $local__container_name_lowercase "echo 'alias netstat=\"cpulimit --limit=\$global__project_power --lazy --include-children netstat\"' >> /home/private/.zsh_alias"
##
info "В контейнере '$local__container_name' настроен пакет 'nano'"
##
## Unset local vars
unset local__container_name_lowercase
