#!/bin/bash

# General process
## Configure firewall rules
. $global__project_main_folder/.Bricks/Containers/MariaDB/$global__project_os/$global__project_os_version/Firewall/Open/3306.sh
##
## Update access
. $global__project_main_folder/.Bricks/Containers/MariaDB/$global__project_os/$global__project_os_version/Protect/xauthority.sh
