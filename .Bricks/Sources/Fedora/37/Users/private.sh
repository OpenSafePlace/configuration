#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Create user
inside 1 root $local__container_name_lowercase "useradd -m private"
##
## Create project directories and links
##
## Create regular folders
inside 1 root $local__container_name_lowercase "mkdir /project /bridge /bridge/incoming /bridge/outgoing"
inside 1 private $local__container_name_lowercase "mkdir /home/private/other /home/private/.config"
##
## Set rules for regular folders
inside 1 root $local__container_name_lowercase "chown private:private -R /home/private /project /bridge"
inside 1 root $local__container_name_lowercase "chmod 700 -R /home/private /project /bridge"
##
## Create links to regular folders
inside 1 private $local__container_name_lowercase "ln -s /bridge /home/private/bridge"
inside 1 private $local__container_name_lowercase "ln -s /project /home/private/project"
##
## Set password
inside 13 root $local__container_name_lowercase "echo 'private:${global__project_keys["[c:$local__container_name_lowercase]+[u:private]+[p:sudo]"]}' | chpasswd"
##
## Get root privileges
inside 1 root $local__container_name_lowercase "usermod -aG wheel private"
##
info "В контейнере '$local__container_name' настроен пользователь 'private'"
