#!/bin/bash

# General process
## Upgrade minor
##
## Container #1
local__container_name="MariaDB"
##
. $global__project_main_folder/.Bricks/Containers/MariaDB/$global__project_os/$global__project_os_version/Repositories/upgrade-minor.sh