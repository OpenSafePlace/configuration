#!/bin/bash

# General process
## Show monitor of containers
info "Монитор работы контейнеров"
##
space
##
info "Ctrl+C => Выйти из монитора"
##
space
##
input "Вы прочитали информацию выше? (y/n)\n"
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
    . $project_main_folder/.Bricks/Dependencies/message-exit.sh
    ##
    ## Exit with code
    exit 0
    ;;
esac
##
space_null
##
## Monitor of containers
docker stats --all --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}" >&3
##
space_null
##
space_null
