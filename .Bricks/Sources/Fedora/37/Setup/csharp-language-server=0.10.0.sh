#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 2 private $local__container_name_lowercase "/home/private/.dotnet/dotnet tool install --global csharp-ls --version 0.10.0"
inside 2 private $local__container_name_lowercase "echo 'export PATH=\$PATH:/home/private/.dotnet/tools' >> /home/private/.zshrc"
##
## Configure launch
inside 1 private $local__container_name_lowercase "echo 'alias csharp-ls=\"cpulimit --limit=\$global__project_power --lazy --include-children csharp-ls\"' >> /home/private/.zsh_alias"
##
info "В контейнере '$local__container_name' настроен пакет 'csharp-ls'"
##
## Unset local vars
unset local__container_name_lowercase
##
## Information about the yarn source (license, tutorial and other)
## https://github.com/razzmatazz/csharp-language-server
