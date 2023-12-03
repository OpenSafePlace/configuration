#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 1 root $local__container_name_lowercase "dnf install -y nginx-mod-modsecurity"
##
## Configure package
inside 1 root $local__container_name_lowercase "mkdir -p /etc/nginx/modsecurity"
inside 1 root $local__container_name_lowercase "echo -n '$local__modsecurity_config' > /etc/nginx/modsecurity/main.conf"
##
## Security
inside 1 root $local__container_name_lowercase "chown -c -R root:root /etc/nginx/modsecurity"
inside 1 root $local__container_name_lowercase "chmod -c -R 755 /etc/nginx/modsecurity"
##
## Configure launch
##
info "В контейнере '$local__container_name' настроен пакет 'nginx-mod-modsecurity'"
##
## Unset local vars
unset local__container_name_lowercase
