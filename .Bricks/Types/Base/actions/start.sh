#!/bin/bash

# General process
## Configure firewall rules
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Firewall/Open/10100.sh
##
## Update access
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Protect/xauthority.sh
