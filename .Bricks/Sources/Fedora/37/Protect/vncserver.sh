#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Set password
inside 13 private $local__container_name_lowercase "vncpasswd -f > /home/private/.vnc/passwd <<EOF
${global__project_keys_new[[c:$local__container_name_lowercase]+[u:private]+[p:vncserver]]}
${global__project_keys_new[[c:$local__container_name_lowercase]+[u:private]+[p:vncserver]]}
EOF"
##
info "В контейнере '$local__container_name' изменен основной пароль связанный с пакетом 'vncserver'"
