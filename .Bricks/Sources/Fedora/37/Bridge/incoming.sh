#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Get incoming files
inside 1 root $local__container_name_lowercase "rm -rf /tmp/bridge/incoming"
inside 1 root $local__container_name_lowercase "mkdir -p /tmp/bridge/incoming"

podman cp ${global__project_main_folder}/Bridge ${global__project_name}-${local__container_name_lowercase}:/tmp/bridge/incoming

inside 1 root $local__container_name_lowercase "mkdir -p /bridge/incoming/${local__datetime_iso}"
inside 1 root $local__container_name_lowercase "mv /tmp/bridge/incoming/Bridge/* /bridge/incoming/${local__datetime_iso}"
##
## Security
inside 1 root $local__container_name_lowercase "chmod 700 -R /bridge/incoming"
inside 1 root $local__container_name_lowercase "chown private:private -R /bridge/incoming"
##
## Remove unnecessary files
inside 1 root $local__container_name_lowercase "rm -rf /tmp/bridge"
sh -c "rm -rf $global__project_main_folder/Bridge/*"
##
info "В контейнере '$local__container_name' входящие файлы приняты"
##
## Unset local vars
unset local__container_name_lowercase
