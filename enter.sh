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
info "Вход в контейнеры проекта"
##
space
##
## Output of entry points
. $global__project_main_folder/.Bricks/Types/$global__project_type/actions/enter.sh
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 0
