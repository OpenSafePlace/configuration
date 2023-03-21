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
## Use GUI mode if needed
. $project_main_folder/.Bricks/Dependencies/use-gui.sh
##
## Show current date & time
info "$(date '+%H:%M:%S (%d/%m/%Y)')"
##
space
##
info "Ожидайте..."
##
space
##
docker stop $(docker ps -a -q)
##
info "Все контейнеры остановлены"
##
docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name start
##
space
##
info "Все контейнеры проекта запущены"
##
space
##
## Preparation of the project after the launch of containers
. $project_main_folder/.Bricks/Types/$global__project_type/actions/start.sh
##
space
##
## Output of additional information
info "Для просмотра основной информации используйте файл 'info.sh'"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 0
