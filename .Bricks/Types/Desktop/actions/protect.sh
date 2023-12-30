#!/bin/bash

# General process
## Create new keys
global__project_keys_new=(
    [[c:desktop]+[u:private]+[p:sudo]]=$(openssl rand -base64 33)
    [[c:desktop]+[u:private]+[p:vncserver]]=$(openssl rand -base64 33)
)
##
## Replace keys
##
## Container #1
local__container_name="Desktop"
##
. $global__project_main_folder/.Bricks/Containers/Desktop/$global__project_os/$global__project_os_version/Protect/sudo.sh
. $global__project_main_folder/.Bricks/Containers/Desktop/$global__project_os/$global__project_os_version/Protect/vncserver.sh
