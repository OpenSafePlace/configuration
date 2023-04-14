#!/bin/bash

# General process
## Check project
[[ ! -f $project_main_folder/.project+settings ]] && {
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
## Include
source $project_main_folder/.project+settings
##
## Vars Docker
export project_name=${project_name}
export project_os_version=${project_os_version}
export DOCKER_HOST=${project_host}
export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120
##
## Vars global
global__project_name=${project_name}
global__project_type=${project_type}
global__project_gui=${project_gui}
global__project_beep=${project_beep}
global__project_power=${project_power}
global__project_cpu=$(docker system info --format '{{.NCPU}}')
global__project_mem=$(docker system info --format '{{.MemTotal}}' | awk '{ print int($1/1024/1024) }')
global__project_os=${project_os}
global__project_os_version=${project_os_version}
global__project_display=${project_display}
global__project_create_time=${project_create_time}
global__project_host_user=$(whoami)
global__project_host_private_ip=${project_host_private_ip}
global__project_host_os_type=${project_host_os_type}
global__project_host_cpu_type=${project_host_cpu_type}
global__project_host_docker_sock=${project_host_docker_sock}
global__project_containers_count_all=$([ "$project_containers_count_all" ] && echo $project_containers_count_all || echo 1)
global__project_containers_count_created=$(docker ps -a -f "name=${global__project_name}-" | sed '1d' | wc -l | xargs)
global__project_containers_count_running=$(docker container ls -f "name=${global__project_name}-" | sed '1d' | wc -l | xargs)
global__project_script_name=${0##*/}
global__project_keys=()
