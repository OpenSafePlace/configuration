#!/bin/bash

# General process
## Enable GUI mode if necessary ('true' or 'false')
global__project_gui=true
##
## Name of the Linux distribution (must begin with a capital letter)
global__project_os="Fedora"
##
## Version of the Linux distribution (numbers only)
global__project_os_version="37"
##
## Power management ('highest' or 'high' or 'medium' or 'low' or 'lowest')
global__project_power="high"
##
## Create keys
global__project_keys+=($(openssl rand -base64 33) "['public'] + ['sudo']")
##
## Create new containers, networks and volumes
project_name=$global__project_name project_os=$global__project_os project_os_lowercase=$(echo $global__project_os | tr '[:upper:]' '[:lower:]') project_os_version=$global__project_os_version project_display=$global__project_display docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name up --build -d
##
## Install and configure packages
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/config-manager.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/system-upgrade.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/Disable/all.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/Enable/fedora.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/Enable/fedora-cisco-openh264.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/Enable/fedora-modular.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/Enable/updates.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/Enable/updates-modular.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/upgrade-minor.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/util-linux-user.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Users/root.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Users/public.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/tzdata.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Timezones/minsk.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/sudo.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/zsh.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/mv.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/cp.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/rm.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/cat.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/du.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/cpulimit.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/iptables.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/nano.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/wget.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/zip.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/unzip.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/git.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/catimg.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/htop.sh
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/clean.sh
##
## Close all ports
. $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Firewall/Close/10100.sh
