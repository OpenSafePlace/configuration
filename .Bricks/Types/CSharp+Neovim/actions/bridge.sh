#!/bin/bash

# General process
## Vars
local__datetime_iso=$(date -u +%Y-%m-%dT%H:%M:%S.%3N%:z)
##
## Select the firewall related option
input "Варианты взаимодействия:\n"
input "1. Получить файлы из контейнеров\n"
input "2. Перенести файлы в контейнер 'CSharp'\n"
input "3. Перенести файлы в контейнер 'Neovim'\n"
input "4. Выйти\n"
input "=> "
##
read -p '' choice
##
case $choice in
"1")
    space
    ##
    ## Container #1
    local__container_name="CSharp"
    ##
    . $global__project_main_folder/.Bricks/Containers/CSharp+Neovim/CSharp/$global__project_os/$global__project_os_version/Bridge/outgoing.sh
    ##
    ## Container #2
    local__container_name="Neovim"
    ##
    . $global__project_main_folder/.Bricks/Containers/CSharp+Neovim/Neovim/$global__project_os/$global__project_os_version/Bridge/outgoing.sh
    ;;
"2")
    space
    ##
    ## Container #1
    local__container_name="CSharp"
    ##
    . $global__project_main_folder/.Bricks/Containers/CSharp+Neovim/CSharp/$global__project_os/$global__project_os_version/Bridge/incoming.sh
    ;;
"3")
    space
    ##
    ## Container #2
    local__container_name="Neovim"
    ##
    . $global__project_main_folder/.Bricks/Containers/CSharp+Neovim/Neovim/$global__project_os/$global__project_os_version/Bridge/incoming.sh
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
