#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 1 root $local__container_name_lowercase "dnf install -y catimg"
##
## Configure launch
inside 1 private $local__container_name_lowercase "echo 'alias catimg=\"cpulimit --limit=\$global__project_power --lazy --include-children catimg -c -t\"' >> /home/private/.zsh_alias"
##
info "В контейнере '$local__container_name' настроен пакет 'catimg'"
##
## Unset local vars
unset local__container_name_lowercase
##
## Information about the package source (license, tutorial and other)
## https://packages.fedoraproject.org/pkgs/catimg/catimg/
