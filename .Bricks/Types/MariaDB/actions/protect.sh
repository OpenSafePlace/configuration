#!/bin/bash

# General process
## Create new keys
global__project_keys_new+=($(openssl rand -base64 33) "['public'] + ['sudo']")
global__project_keys_new+=($(openssl rand -base64 33) "['root'] + ['mysql']")
global__project_keys_new+=($(openssl rand -base64 33) "['public'] + ['mysql']")
##
## Replace keys
. $global__project_main_folder/.Bricks/Containers/MariaDB/$global__project_os/$global__project_os_version/Protect/sudo.sh
. $global__project_main_folder/.Bricks/Containers/MariaDB/$global__project_os/$global__project_os_version/Protect/mariadb.sh