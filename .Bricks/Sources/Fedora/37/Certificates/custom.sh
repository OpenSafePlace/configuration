#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
local__project_container_id=$(podman ps -aqf "name=${global__project_name}-${local__container_name_lowercase}")
##
## Send files to container
podman cp ${global__project_main_folder}/.Bricks/Certificates/. $local__project_container_id:/etc/pki/ca-trust/source/anchors
##
## Trust new certs
inside 1 root $local__container_name_lowercase "update-ca-trust extract"
##
info "В контейнере '$local__container_name' добавлены новые сертификаты"
##
## Unset local vars
unset local__project_container_id
