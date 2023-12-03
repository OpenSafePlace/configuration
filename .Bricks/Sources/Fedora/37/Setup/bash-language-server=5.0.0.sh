#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 2 private $local__container_name_lowercase "npm install --global bash-language-server@5.0.0"
##
## Configure launch
inside 1 private $local__container_name_lowercase "echo 'alias bash-language-server=\"cpulimit --limit=\$global__project_power --lazy --include-children bash-language-server\"' >> /home/private/.zsh_alias"
##
info "В контейнере '$local__container_name' настроен пакет 'bash-language-server'"
##
## Unset local vars
unset local__container_name_lowercase
##
## Information about the yarn source (license, tutorial and other)
## https://github.com/bash-lsp/bash-language-server
