#!/bin/bash

# General process
## Vars
local__datetime_iso=$(date -u +%Y-%m-%dT%H:%M:%S.%3N%:z)
local__archive_key=$(openssl rand -base64 48)
##
## Create backup
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Backups/archive.sh
##
## Info
info "Ключ => '${local__archive_key}'"
##
## Security
sh -c "chmod 770 -R $global__project_main_folder/Backups/*"
sh -c "chown \$(whoami):docker -R $global__project_main_folder/Backups/*"
##
## Unset local vars
unset local__datetime_iso
unset local__archive_key