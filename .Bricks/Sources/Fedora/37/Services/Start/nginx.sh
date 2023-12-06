#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Get power percent
[[ $global__project_power == "highest" ]] && 
local__project_power_percent=$(($global__project_cpu_cores_count * 100))
##
[[ $global__project_power == "high" ]] &&
local__project_power_percent=$(($global__project_cpu_cores_count * (1 * 100 / 3 * 3)))
##
[[ $global__project_power == "medium" ]] &&
local__project_power_percent=$(($global__project_cpu_cores_count * (1 * 100 / 3 * 2)))
##
[[ $global__project_power == "low" ]] &&
local__project_power_percent=$(($global__project_cpu_cores_count * (1 * 100 / 3 * 1)))
##
[[ $global__project_power == "lowest" ]] &&
local__project_power_percent=$(($global__project_cpu_cores_count * 8))
##
## Start process
inside 5 root $local__container_name_lowercase "nginx >> /var/log/nginx/run.log"
inside 5 root $local__container_name_lowercase "cpulimit --limit=$local__project_power_percent --lazy --include-children --exe=nginx >> /var/log/nginx/run.log"
##
info "В контейнере '$local__container_name' сервис 'nginx' запущен"
