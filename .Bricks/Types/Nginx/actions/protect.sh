#!/bin/bash

# General process
## Create new keys
global__project_keys_new=(
    [[c:nginx]+[u:private]+[p:sudo]]=$(openssl rand -base64 33)
    [[c:nginx]+[u:private]+[p:htpasswd]]=$(openssl rand -base64 33)
)
##
## Replace keys
##
## Container #1
local__container_name="Nginx"
##
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Protect/sudo.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Protect/nginx.sh
