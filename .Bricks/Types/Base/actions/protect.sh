#!/bin/bash

# General process
## Create new keys
global__project_keys_new=(
    ["[c:base]+[u:private]+[p:sudo]"]=$(openssl rand -base64 33)
)
##
## Replace keys
##
## Container #1
local__container_name="Base"
##
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Protect/sudo.sh
