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
## Execute types set
. $global__project_main_folder/.Bricks/Dependencies/types-set-execute.sh
##
## Check whether project has already been deployed
[[ -f $global__project_main_folder/.project+settings ]] && {
##
## Output warning info
warning "Конфигурация уже развернута"
warning "Используйте файл 'remove.sh'"
warning "Процесс остановлен"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Some vars of project
global__project_name=$(openssl rand -hex 6)
global__project_create_time=$(date '+%H:%M:%S (%d/%m/%Y)')
global__project_list_types=$(cd ./.Bricks/Types && ls -md -- *)
global__project_host_cpu_type=$(uname -m)
global__project_power="highest"
global__project_cpu_cores_count=$(docker system info --format '{{.NCPU}}')
global__project_mem_count=$(docker system info --format '{{.MemTotal}}' | awk '{ print int($1/1024/1024) }')
global__project_keys=()
global__project_host_user=$(whoami)
##
## Determine the OS type
[ "$OSTYPE" == "linux-gnu" ] &&
global__project_host_os_type="linux" ||
global__project_host_os_type="macOS"
##
## Choose Docker sock
[ "$global__project_host_os_type" == "linux" ] &&
global__project_host_docker_sock="unix:///run/docker.sock" ||
global__project_host_docker_sock="unix:///var/run/docker.sock"
##
## Get host ip
[ "$global__project_host_os_type" == "linux" ] &&
global__project_host_private_ip=$(hostname -I | awk '{ print $1 }') ||
global__project_host_private_ip=$(ipconfig getifaddr en0)
##
## Choose display
[ "$global__project_host_os_type" == "linux" ] &&
global__project_display=":0" ||
global__project_display="${global__project_host_private_ip}:0"
##
## Show current date & time
info "$(date '+%H:%M:%S (%d/%m/%Y)')"
##
space
##
info "Список доступных конфигураций: $global__project_list_types"
##
space
##
input "Введите название конфигурации проекта\n"
input "=> "
##
read -p '' choice
##
global__project_type=$choice
##
space
##
## Check the configuration type
(
[[ ! -d $global__project_main_folder/.Bricks/Types/$global__project_type ]] ||
[[ $global__project_type == '' ]]
) && {
##
## Output warning info
warning "Некорректное название конфигурации"
warning "Процесс остановлен"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
##
input "Включить звуковое оповещение проекта? (y/n)\n"
input "=> "
##
read -p '' choice
##
[[ $choice == 'y' ]] &&
global__project_beep=true ||
global__project_beep=false
##
space
##
info "Ожидайте..."
##
space
##
## Stop all containers
docker stop $(docker ps -a -q)
##
## Install and configure packages
. $global__project_main_folder/.Bricks/Types/$global__project_type/actions/create.sh
##
## Setting the number of containers in scheme file
global__project_containers_count_all=$(docker-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml ps --services | wc -l | tr -d ' ')
##
## Restart containers
docker-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name restart
##
## Use GUI mode if needed
. $global__project_main_folder/.Bricks/Dependencies/use-gui.sh
##
## Preparation of the project after the launch of containers
. $global__project_main_folder/.Bricks/Types/$global__project_type/actions/start.sh
##
## Update project params
. $global__project_main_folder/.Bricks/Types/$global__project_type/actions/update-params.sh
##
## Set project config
. $global__project_main_folder/.Bricks/Dependencies/config-set.sh
##
space
##
## Set project keys
. $global__project_main_folder/.Bricks/Dependencies/keys-set.sh
##
space
##
## Output of additional information
info "Для просмотра основной информации используйте файл 'info.sh'"
##
space
##
info "Установка завершена"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 0
