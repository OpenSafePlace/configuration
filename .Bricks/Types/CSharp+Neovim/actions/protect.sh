#!/bin/bash

# General process
## Create new keys
global__project_keys_new=(
    [[c:csharp]+[u:private]+[p:sudo]]=$(openssl rand -base64 33)
    [[c:neovim]+[u:private]+[p:sudo]]=$(openssl rand -base64 33)
)
##
## Replace keys
##
## Container #1
local__container_name="CSharp"
##
. $global__project_main_folder/.Bricks/Containers/CSharp+Neovim/CSharp/$global__project_os/$global__project_os_version/Protect/sudo.sh
##
## Container #2
local__container_name="Neovim"
##
. $global__project_main_folder/.Bricks/Containers/CSharp+Neovim/Neovim/$global__project_os/$global__project_os_version/Protect/sudo.sh
