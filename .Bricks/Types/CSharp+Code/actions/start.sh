#!/bin/bash

# General process
## Configure firewall rules
. $global__project_main_folder/.Bricks/Containers/CSharp/$global__project_os/$global__project_os_version/Firewall/Open/10100.sh
. $global__project_main_folder/.Bricks/Containers/Code/$global__project_os/$global__project_os_version/Firewall/Open/10101.sh
##
## Update access
. $global__project_main_folder/.Bricks/Containers/CSharp/$global__project_os/$global__project_os_version/Protect/xauthority.sh
. $global__project_main_folder/.Bricks/Containers/Code/$global__project_os/$global__project_os_version/Protect/xauthority.sh
##
## Services start
. $global__project_main_folder/.Bricks/Containers/Code/$global__project_os/$global__project_os_version/Services/Start/code.sh
