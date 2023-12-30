#!/bin/bash

# General process
## Upgrade minor
##
## Container #1
local__container_name="CSharp"
##
. $global__project_main_folder/.Bricks/Containers/CSharp+Neovim/CSharp/$global__project_os/$global__project_os_version/Repositories/upgrade-minor.sh
##
## Container #2
local__container_name="Neovim"
##
. $global__project_main_folder/.Bricks/Containers/CSharp+Neovim/Neovim/$global__project_os/$global__project_os_version/Repositories/upgrade-minor.sh
