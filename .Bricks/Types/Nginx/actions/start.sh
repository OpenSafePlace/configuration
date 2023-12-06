#!/bin/bash

# General process
## Container #1
local__container_name="Nginx"
##
## Start services
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Services/Start/nginx.sh
##
## Configure firewall rules
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Firewall/Outgoing/Open/all.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Firewall/Incoming/Open/10100.sh
