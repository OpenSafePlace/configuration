#!/bin/bash

# General process
## There should be no '/' at the end
project_main_folder="."
##
## Output threads
. $project_main_folder/.Bricks/Dependencies/use-log.sh
##
## Messages types set
. $project_main_folder/.Bricks/Dependencies/types-set-message.sh
##
## Check installed packages
. $project_main_folder/.Bricks/Dependencies/check-packages.sh
##
## Get project config
. $project_main_folder/.Bricks/Dependencies/config-get.sh
##
## Check running project
. $project_main_folder/.Bricks/Dependencies/check-project.sh
##
## Execute types set
. $project_main_folder/.Bricks/Dependencies/types-set-execute.sh
##
## Show current date & time
info "$(date '+%H:%M:%S (%d/%m/%Y)')"
##
space
##
input "Вы точно хотите удалить проект? (y/n)\n"
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
## Remove containers, networks and volumes of configuration
docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name down -v --rmi all --remove-orphans
##
## Delete config file
sh -c "rm -f $project_main_folder/.project+settings"
##
## Delete keys file
sh -c "rm -f $project_main_folder/.project+keys"
##
input "Вы хотите удалить журналы проекта? (y/n)\n"
input "=> "
##
read -p '' choice
##
case $choice in
"n")
    space
    ##
    info "Процесс удаления проекта завершен"
    ##
    ## Message exit
    . $project_main_folder/.Bricks/Dependencies/message-exit.sh
    ##
    ## Exit with code
    exit 0
    ;;
esac
##
## Delete logs of the configuration
sh -c "rm -rf $project_main_folder/Logs/*"
##
space
##
input "Вы хотите удалить пользовательские данные проекта? (y/n)\n"
input "=> "
##
read -p '' choice
##
case $choice in
"y")
    ## Delete user data
    ##
    sh -c "rm -rf $project_main_folder/Bridge/*"
    ;;
esac
##
space
##
info "Процесс удаления проекта завершен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 0
