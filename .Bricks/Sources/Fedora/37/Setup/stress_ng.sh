#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 1 root $local__container_name_lowercase "dnf install -y stress-ng"
##
## Configure launch
inside 1 private $local__container_name_lowercase "echo 'alias stress-ng=\"cpulimit --limit=\$global__project_power --lazy --include-children stress-ng\"' >> /home/private/.zsh_alias"
##
info "В контейнере '$local__container_name' настроен пакет 'stress-ng'"
##
## Unset local vars
unset local__container_name_lowercase
