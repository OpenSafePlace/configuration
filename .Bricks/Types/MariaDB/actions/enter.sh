#!/bin/bash

# General process
## Select the container
input "Список контейнеров\n"
input "1. MariaDB\n"
input "2. Выйти\n"
input "=> "
##
read -p '' choice
##
case $choice in
"1")
    space
    ##
    info "Чтобы выйти из контейнера напишите 'exit'"
    ##
    space
    ##
    ## Enter in container
    inside 10 public mariadb >&3
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
