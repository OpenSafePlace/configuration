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
info "Общая информация"
##
space
##
info "Название проекта => $global__project_name"
info "Конфигурация проекта => $global__project_type"
info "Выделено ядер процессора проекту => $global__project_cpu_cores_count"
info "Выделено мегабайт ОЗУ проекту => $global__project_mem_count"
info "Архитектура процессора => $global__project_host_cpu_type"
info "Сокет => $global__project_host_cmt_sock"
info "Текущий пользователь ПК => $global__project_host_user"
info "Частный IP-адрес ПК => $global__project_host_private_ip"
info "Тип операционной системы ПК => $global__project_host_os_type"
info "Дата и время разворачивания проекта => $global__project_create_time"
info "Количество контейнеров проекта => $global__project_containers_count_created"
info "Операционная система проекта => $global__project_os ($global__project_os_version)"
##
[[ $global__project_power == "highest" ]] &&
info "Режим производительности проекта => максимальный"
##
[[ $global__project_power == "high" ]] &&
info "Режим производительности проекта => высокий"
##
[[ $global__project_power == "medium" ]] &&
info "Режим производительности проекта => средний"
##
[[ $global__project_power == "low" ]] &&
info "Режим производительности проекта => низкий"
##
[[ $global__project_power == "lowest" ]] &&
info "Режим производительности проекта => минимальный"
##
[[ $global__project_beep == true ]] &&
info "Beep сигнал проекта => включен" ||
info "Beep сигнал проекта => отключен"
##
## Info of containers
. $global__project_main_folder/.Bricks/Types/$global__project_type/actions/info.sh
##
space
##
## Get project keys
. $global__project_main_folder/.Bricks/Dependencies/keys-get.sh
##
space
##
## Check general key
[[ $local__project_key_text == "ОШИБКА" ]] && {
##
## Output warning info
warning "Введен неправильный пароль"
warning "Процесс остановлен"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Keys of containers
. $global__project_main_folder/.Bricks/Types/$global__project_type/actions/keys.sh
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 0
