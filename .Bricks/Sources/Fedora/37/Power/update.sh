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
## Update params
inside 1 private $local__container_name_lowercase "sed -i 's/global__project_power=[0-9]\{1,\}/global__project_power=$local__project_power_percent/g' /home/private/.zsh_params"
##
## Unset local vars
unset local__project_power_percent
