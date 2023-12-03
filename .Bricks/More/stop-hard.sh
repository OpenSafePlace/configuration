#!/bin/bash

# General process
## Stop all containers
input "Вы точно хотите остановить все контейнеры? (y/n)\n"
input "=> "
##
read -p '' choice
##
space
##
case $choice in
"y")
    continue
    ;;
*)
    info "Процесс остановлен"
    ##
    ## Message exit
    . $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
    ##
    ## Exit with code
    exit 0
    ;;
esac
##
podman stop $(podman ps -a -q)
##
info "Все контейнеры остановлены"
