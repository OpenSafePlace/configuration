#!/bin/bash

# General process
## Remove all projects
input "Вы точно хотите удалить все проекты? (y/n)\n"
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
info "Ожидайте..."
##
space
##
## Stop all containers
podman stop $(podman ps -a -q)
##
## Delete all containers
podman container prune -f
##
## Delete all images
podman image prune -f
##
## Delete all volumes
podman volume prune -f
##
## Delete all networks
podman network prune -f
##
## Delete config file
sh -c "rm -f $global__project_main_folder/.project+settings"
##
## Delete keys file
sh -c "rm -f $global__project_main_folder/.project+keys"
##
info "Все проекты на вашем ПК удалены"
