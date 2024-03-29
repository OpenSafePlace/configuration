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
## Stop use GUI mode if needed
. $project_main_folder/.Bricks/Dependencies/stop-use-gui.sh
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
docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name stop
##
info "Все контейнеры проекта остановлены"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 0
