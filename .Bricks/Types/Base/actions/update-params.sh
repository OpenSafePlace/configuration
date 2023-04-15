#!/bin/bash

# General process
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
## Update params (container: base)
inside 1 public base "echo -n '' > /home/public/.zsh_params"
inside 1 public base "echo -n 'export global__project_power=$local__project_power_percent' >> /home/public/.zsh_params"
