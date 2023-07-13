#!/bin/bash

# General process
## Vars xauthority
local__project_container_id=$(docker ps -aqf "name=${global__project_name}-neovim")
local__project_host_xauthority_path=$(xauth info | grep Authority | awk '{ print $3 }')
##
## If it is possible to send xauthority
[[ "$global__project_host_os_type" == "macOS" ]] &&
[[ "$local__project_host_xauthority_path" != "" ]] && {
##
## Send file to container
docker cp $local__project_host_xauthority_path $local__project_container_id:/home/public/.Xauthority
##
## Set correct rules
inside 1 root neovim "chown public:public /home/public/.Xauthority"
##
info "В контейнере 'Neovim' обновлен файл хранения учетных данных 'Xauthority'"
}
##
## Unset local vars
unset local__project_container_id
unset local__project_host_xauthority_path
