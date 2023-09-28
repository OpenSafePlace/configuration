#!/bin/bash

# General process
## Remove unnecessary files
sh -c "rm -rf $global__project_main_folder/Bridge/*"
##
## Send outgoing files
inside 1 root neovim "mkdir -p /tmp/bridge/${local__datetime_iso}/Neovim"
inside 1 root neovim "cp -rf /bridge/outgoing/* /tmp/bridge/${local__datetime_iso}/Neovim"
docker cp ${global__project_name}-neovim:/tmp/bridge/${local__datetime_iso}/Neovim $global__project_main_folder/Bridge/${local__datetime_iso}
sh -c "mkdir -p $global__project_main_folder/Bridge/${local__datetime_iso}"
##
## Security
sh -c "chmod 770 -R $global__project_main_folder/Bridge/*"
sh -c "chown \$(whoami):docker -R $global__project_main_folder/Bridge/*"
##
## Remove unnecessary files
inside 1 root neovim "rm -rf /tmp/bridge"
##
info "В контейнере 'Neovim' исходящие файлы приняты"