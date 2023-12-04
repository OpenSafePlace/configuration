#!/bin/bash

# General process
## Start
### Container #1
local__container_name="Neovim"
###
### Configure firewall rules
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Firewall/Outgoing/Open/all.sh
