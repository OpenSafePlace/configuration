#!/bin/bash

# General process
## Get incoming files
inside 1 root neovim "rm -rf /tmp/bridge/incoming"
inside 1 root neovim "mkdir -p /tmp/bridge/incoming"
docker cp ${global__project_main_folder}/Bridge ${global__project_name}-neovim:/tmp/bridge/incoming
inside 1 root neovim "mkdir -p /bridge/incoming/${local__datetime_iso}"
inside 1 root neovim "mv /tmp/bridge/incoming/Bridge/* /bridge/incoming/${local__datetime_iso}"
##
## Security
inside 1 root neovim "chmod 770 -R /bridge/incoming"
inside 1 root neovim "chown public:public -R /bridge/incoming"
##
## Remove unnecessary files
inside 1 root neovim "rm -rf /tmp/bridge"
sh -c "rm -rf $global__project_main_folder/Bridge/*"
##
info "В контейнере 'Neovim' входящие файлы приняты"
