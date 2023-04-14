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
## Check network
. $project_main_folder/.Bricks/Dependencies/check-network.sh
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
info "Большое обновление контейнеров проекта"
##
space
##
info "Данный процесс имеет множество рисков сломать пакеты"
##
space
##
input "Вы точно хотите обновить контейнеры проекта? (y/n)\n"
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
## Output of entry points
. $project_main_folder/.Bricks/Types/$global__project_type/actions/upgrade-major.sh
##
space
##
info "Рекомендуется проверить файл с отчетом в папке ./Logs"
##
## Set project configuration parameters
. $project_main_folder/.Bricks/Dependencies/config-set.sh
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 0
