#!/bin/bash

# General process
## Configure firewall rules
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Firewall/Open/10100.sh
##
## Update access
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Protect/xauthority.sh
