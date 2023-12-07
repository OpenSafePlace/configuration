#!/bin/bash

# General process
## Container #1
local__container_name="MariaDB"
##
## Start services
. $global__project_main_folder/.Bricks/Containers/MariaDB/$global__project_os/$global__project_os_version/Services/Start/mariadb.sh
##
## Configure firewall rules
. $global__project_main_folder/.Bricks/Containers/MariaDB/$global__project_os/$global__project_os_version/Firewall/Outgoing/Open/all.sh
