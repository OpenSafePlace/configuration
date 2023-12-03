#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 1 root $local__container_name_lowercase "dnf install -y openssl"
##
info "В контейнере '$local__container_name' настроен пакет 'openssl'"
##
## Unset local vars
unset local__container_name_lowercase
