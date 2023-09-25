#!/bin/bash

# General process
## Get incoming files
inside 1 root csharp "rm -rf /tmp/bridge/incoming"
inside 1 root csharp "mkdir -p /tmp/bridge/incoming"
docker cp ${global__project_main_folder}/Bridge ${global__project_name}-csharp:/tmp/bridge/incoming
inside 1 root csharp "mkdir -p /bridge/incoming/${local__datetime_iso}"
inside 1 root csharp "mv /tmp/bridge/incoming/Bridge/* /bridge/incoming/${local__datetime_iso}"
##
## Security
inside 1 root csharp "chmod 770 -R /bridge/incoming"
inside 1 root csharp "chown public:public -R /bridge/incoming"
##
## Remove unnecessary files
inside 1 root csharp "rm -rf /tmp/bridge"
sh -c "rm -rf $global__project_main_folder/Bridge/*"
##
info "В контейнере 'CSharp' входящие файлы приняты"
