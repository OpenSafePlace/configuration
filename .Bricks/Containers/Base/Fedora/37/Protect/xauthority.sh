#!/bin/bash

# General process
## Vars xauthority
project_container_id=$(docker ps -aqf "name=${global__project_name}-base")
project_host_xauthority_path=$(xauth info | grep Authority | awk '{ print $3 }')
##
## If it is possible to send xauthority
[[ "$global__project_host_os_type" == "macOS" ]] &&
[[ "$project_host_xauthority_path" != "" ]] && {
##
## Send file to container
docker cp $project_host_xauthority_path $project_container_id:/home/public/.Xauthority
##
## Set correct rules
inside 1 root base "chown public:public /home/public/.Xauthority"
##
info "В контейнере 'Base' обновлен файл хранения учетных данных 'Xauthority'"
}
