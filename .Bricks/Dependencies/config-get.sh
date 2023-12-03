#!/bin/bash

# General process
## Check project
[[ ! -f $global__project_main_folder/.project+settings ]] && {
##
## Output warning info
warning "Конфигурация не развернута"
warning "Используйте файл 'create.sh'"
warning "Процесс остановлен"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Include
source $global__project_main_folder/.project+settings
##
## Vars global
global__project_name=${project_name}
global__project_type=${project_type}
global__project_beep=${project_beep}
global__project_power=${project_power}
global__project_cpu_cores_count=$(podman info -f json | jq -r '.host["cpus"]')
global__project_mem_count=$(podman info -f json | jq -r '.host["memTotal"]' | awk '{ print int($1/1024/1024) }')
global__project_os=${project_os}
global__project_os_version=${project_os_version}
global__project_display=${project_display}
global__project_create_time=${project_create_time}
global__project_host_user=$(whoami)
global__project_host_private_ip=${project_host_private_ip}
global__project_host_os_type=${project_host_os_type}
global__project_host_cpu_type=${project_host_cpu_type}
global__project_host_cmt_sock=${project_host_cmt_sock}
global__project_containers_count_all=$([ "$project_containers_count_all" ] && echo $project_containers_count_all || echo 1)
global__project_containers_count_created=$(podman ps -a -f "name=${global__project_name}-" | sed '1d' | wc -l | xargs)
global__project_containers_count_running=$(podman container ls -f "name=${global__project_name}-" | sed '1d' | wc -l | xargs)
global__project_script_name=${0##*/}
##
## Configure CMT
export project_name=${global__project_name}
