#!/bin/bash

# General process
## Start
##
## Container #1
local__container_name="Desktop"
##
## Start services
. $global__project_main_folder/.Bricks/Containers/Desktop/$global__project_os/$global__project_os_version/Services/Start/vncserver.sh
##
## Configure firewall rules
. $global__project_main_folder/.Bricks/Containers/Desktop/$global__project_os/$global__project_os_version/Firewall/Outgoing/Open/all.sh
