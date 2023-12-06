#!/bin/bash

# General process
## Start
##
## Container #1
local__container_name="Base"
##
## Configure firewall rules
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Firewall/Outgoing/Open/all.sh
