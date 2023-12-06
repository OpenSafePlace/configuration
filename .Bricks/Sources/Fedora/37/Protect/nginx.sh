#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Set password
inside 1 root $local__container_name_lowercase "rm -f /etc/nginx/.htpasswd"
inside 13 root $local__container_name_lowercase "htpasswd -cb5 /etc/nginx/.htpasswd layer_1 ${global__project_keys_new["[c:$local__container_name_lowercase]+[u:private]+[p:htpasswd]"]}"
##
## Generate certificate
inside 1 root $local__container_name_lowercase "rm -f /etc/pki/nginx/private/server.key /etc/pki/nginx/server.crt"
inside 13 root $local__container_name_lowercase "openssl req -x509 -newkey rsa:4096 -sha512 -nodes -keyout /etc/pki/nginx/private/server.key -x509 -days 36500 -out /etc/pki/nginx/server.crt -subj '/C=XX/ST=Server/L=Server/O=Server/OU=Server/CN=Server'"
##
info "В контейнере '$local__container_name' изменен основной пароль связанный с пакетом 'nginx'"
