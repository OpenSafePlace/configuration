#!/bin/bash

# General process
## There should be no '/' at the end
global__project_main_folder="."
##
## Output threads
. $global__project_main_folder/.Bricks/Dependencies/use-log.sh
##
## Messages types set
. $global__project_main_folder/.Bricks/Dependencies/types-set-message.sh
##
## Check installed packages
. $global__project_main_folder/.Bricks/Dependencies/check-packages.sh
##
## Check network
. $global__project_main_folder/.Bricks/Dependencies/check-network.sh
##
## Get project config
. $global__project_main_folder/.Bricks/Dependencies/config-get.sh
##
## Check running project
. $global__project_main_folder/.Bricks/Dependencies/check-project.sh
##
## Execute types set
. $global__project_main_folder/.Bricks/Dependencies/types-set-execute.sh
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
    . $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
    ##
    ## Exit with code
    exit 0
    ;;
esac
##
## Output of entry points
. $global__project_main_folder/.Bricks/Types/$global__project_type/actions/upgrade-major.sh
##
space
##
info "Рекомендуется проверить файл с отчетом в папке ./Logs"
##
## Set project parameters
. $global__project_main_folder/.Bricks/Dependencies/config-set.sh
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 0
