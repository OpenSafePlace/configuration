#!/bin/bash

# General process
## Select the container
input "Список контейнеров\n"
input "1. Base\n"
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
    info "Популярные команды: sudo, dnf, nano, git, htop, du, catimg"
    ##
    space
    ##
    ## Enter in container
    inside 10 public base >&3
    ;;
*)
    ##
    ## Message exit
    . $project_main_folder/.Bricks/Dependencies/message-exit.sh
    ##
    ## Exit with code
    exit 0
    ;;
esac
