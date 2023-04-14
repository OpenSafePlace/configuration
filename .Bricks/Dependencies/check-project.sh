#!/bin/bash

# General process
## Check project
[[ $global__project_containers_count_created != $global__project_containers_count_all ]] &&
[[ $project_main_folder != "." ]] && {
##
## Output warning info
warning "Конфигурация не развернута"
warning "Используйте файл 'create.sh'"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Check project
[[ $global__project_containers_count_created != $global__project_containers_count_all ]] &&
[[ $project_main_folder == "." ]] &&
[[ $global__project_script_name != "create.sh" ]] && {
##
## Output warning info
warning "Конфигурация не развернута"
warning "Используйте файл 'create.sh'"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Check project
[[ $global__project_containers_count_created == $global__project_containers_count_all ]] &&
[[ $global__project_containers_count_running != $global__project_containers_count_all ]] &&
([ $project_main_folder != "." ]) && {
##
## Output warning info
warning "Конфигурация не запущена"
warning "Используйте файл 'start.sh'"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Check project
[[ $global__project_containers_count_created == $global__project_containers_count_all ]] &&
[[ $global__project_containers_count_running != $global__project_containers_count_all ]] &&
[[ $project_main_folder == "." ]] &&
[[ $global__project_script_name != "start.sh" ]] &&
[[ $global__project_script_name != "create.sh" ]] && {
##
## Output warning info
warning "Конфигурация не запущена"
warning "Используйте файл 'start.sh'"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Check project
[[ $global__project_containers_count_created == $global__project_containers_count_all ]] &&
[[ $global__project_containers_count_running == $global__project_containers_count_all ]] &&
[[ $global__project_script_name == "start.sh" ]] && {
##
## Output warning info
warning "Конфигурация уже запущена"
warning "Используйте файл 'stop.sh'"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
