#!/bin/bash

# General process
## There should be no '/' at the end
global__project_main_folder="."
##
## Create regular folders
. $global__project_main_folder/.Bricks/Dependencies/regular-folders.sh
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
info "Ожидайте..."
##
space
##
podman stop $(podman ps -a -q)
##
info "Все контейнеры остановлены"
##
podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name start
##
space
##
info "Все контейнеры проекта запущены"
##
space
##
## Preparation of the project after the launch of containers
. $global__project_main_folder/.Bricks/Types/$global__project_type/actions/start.sh
##
space
##
## Output of additional information
info "Для просмотра основной информации используйте файл 'info.sh'"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 0
