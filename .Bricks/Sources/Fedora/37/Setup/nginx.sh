#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 1 root $local__container_name_lowercase "dnf install -y nginx"
##
## Configure package
inside 1 root $local__container_name_lowercase "touch /var/log/nginx/access.log"
inside 1 root $local__container_name_lowercase "touch /var/log/nginx/error.log"
inside 1 root $local__container_name_lowercase "touch /var/log/nginx/run.log"
inside 1 root $local__container_name_lowercase "touch /var/log/nginx/modsec_audit.log"
inside 1 root $local__container_name_lowercase "mkdir /etc/pki/nginx"
inside 1 root $local__container_name_lowercase "mkdir /etc/pki/nginx/private"
inside 1 root $local__container_name_lowercase "echo -n '$local__nginx_config' > /etc/nginx/nginx.conf"
##
## Security
inside 13 root $local__container_name_lowercase "openssl req -x509 -newkey rsa:4096 -sha512 -nodes -keyout /etc/pki/nginx/private/server.key -x509 -days 36500 -out /etc/pki/nginx/server.crt -subj '/C=XX/ST=Server/L=Server/O=Server/OU=Server/CN=Server'"
inside 13 root $local__container_name_lowercase "htpasswd -cb5 /etc/nginx/.htpasswd layer_1 ${global__project_keys["[c:$local__container_name_lowercase]+[u:private]+[p:htpasswd]"]}"
inside 1 root $local__container_name_lowercase "chown -c -R nginx:nginx /var/log/nginx"
inside 1 root $local__container_name_lowercase "chmod -c -R 774 /var/log/nginx"
##
## Configure launch
##
info "В контейнере '$local__container_name' настроен пакет 'nginx'"
##
## Unset local vars
unset local__container_name_lowercase
