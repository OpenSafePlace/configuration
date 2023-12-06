#!/bin/bash

# General process
## Upgrade major
##
## Container #1
local__container_name="Nginx"
##
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Repositories/upgrade-major.sh
