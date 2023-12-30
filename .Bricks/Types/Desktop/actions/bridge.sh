#!/bin/bash

# General process
## Vars
local__datetime_iso=$(date -u +%Y-%m-%dT%H:%M:%S.%3N%:z)
##
## Select the firewall related option
input "Варианты взаимодействия:\n"
input "1. Получить файлы из контейнеров\n"
input "2. Перенести файлы в контейнер 'Desktop'\n"
input "3. Выйти\n"
input "=> "
##
read -p '' choice
##
case $choice in
"1")
    space
    ##
    ## Container #1
    local__container_name="Desktop"
    ##
    . $global__project_main_folder/.Bricks/Containers/Desktop/$global__project_os/$global__project_os_version/Bridge/outgoing.sh
    ;;
"2")
    space
    ##
    ## Container #1
    local__container_name="Desktop"
    ##
    . $global__project_main_folder/.Bricks/Containers/Desktop/$global__project_os/$global__project_os_version/Bridge/incoming.sh
    ;;
*)
    ##
    ## Message exit
    . $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
    ##
    ## Exit with code
    exit 0
    ;;
esac
