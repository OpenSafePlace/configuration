#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Configure launch
inside 1 private $local__container_name_lowercase "echo 'alias cat=\"cpulimit --limit=\$global__project_power --lazy --include-children cat\"' >> /home/private/.zsh_alias"
##
info "В контейнере '$local__container_name' настроен пакет 'cat'"
##
## Unset local vars
unset local__container_name_lowercase