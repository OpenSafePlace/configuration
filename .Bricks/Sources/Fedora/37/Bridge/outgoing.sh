#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Remove unnecessary files
sh -c "rm -rf $global__project_main_folder/Bridge/*"
##
## Send outgoing files
inside 1 root $local__container_name_lowercase "mkdir -p /tmp/bridge/${local__datetime_iso}/${local__container_name}"
inside 1 root $local__container_name_lowercase "cp -rf /bridge/outgoing/* /tmp/bridge/${local__datetime_iso}/${local__container_name}"

podman cp ${global__project_name}-${local__container_name_lowercase}:/tmp/bridge/${local__datetime_iso}/Base $global__project_main_folder/Bridge/${local__datetime_iso}

sh -c "mkdir -p $global__project_main_folder/Bridge/${local__datetime_iso}"
##
## Security
sh -c "chmod 700 -R $global__project_main_folder/Bridge/*"
##
## Remove unnecessary files
inside 1 root $local__container_name_lowercase "rm -rf /tmp/bridge"
##
info "В контейнере '$local__container_name' исходящие файлы приняты"
