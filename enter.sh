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
info "Вход в контейнеры проекта"
##
space
##
## Output of entry points
. $project_main_folder/.Bricks/Types/$global__project_type/actions/enter.sh
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 0
