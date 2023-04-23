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
project_name=$global__project_name project_os=$global__project_os project_os_lowercase=$(echo $global__project_os | tr '[:upper:]' '[:lower:]') project_os_version=$global__project_os_version project_display=$global__project_display docker-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name up --build -d
##
## Install and configure packages
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/config-manager.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/system-upgrade.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/Disable/all.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/Enable/fedora.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/Enable/fedora-cisco-openh264.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/Enable/fedora-modular.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/Enable/updates.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/Enable/updates-modular.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Repositories/upgrade-minor.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/util-linux-user.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/procps-ng.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Users/root.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Users/public.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/tzdata.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Timezones/minsk.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/sudo.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/zsh.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/mv.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/cp.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/rm.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/cat.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/du.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/cpulimit.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/iptables.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/nano.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/wget.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/zip.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/unzip.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/git.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/catimg.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/htop.sh
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Setup/clean.sh
##
## Close all ports
. $global__project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Firewall/Close/10100.sh
