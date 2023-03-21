#!/bin/bash

# General process
## Remove special project
input "Вы точно хотите удалить определенный другой проект? (y/n)\n"
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
input "Введите название проекта\n"
input "=> "
##
read -p '' choice
##
project_other_name=$choice
##
space
##
## Check project name
[[ "${project_other_name}" == "" ]] && {
##
## Output warning info
warning "Введено пустое значение"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
input "Вы точно хотите удалить проект '${project_other_name}'? (y/n)\n"
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
info "Ожидайте..."
##
space
##
## Stop containers
docker stop $(docker ps -a -q -f "name=${project_other_name}")
##
## Delete all containers
docker rm $(docker ps -a -q -f "name=${project_other_name}")
##
## Delete all dangling volumes
docker volume rm $(docker volume ls -qf dangling=true)
##
info "Определенный проект удален"
