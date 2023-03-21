#!/bin/bash

# General process
## Create user
inside 1 root base "useradd -m public"
##
## Create project directories and links
inside 1 root base "chmod 777 /project"
inside 1 public base "mkdir -p /project/files"
inside 1 root base "chmod 700 /project/files"
inside 1 root base "chmod 700 /project/bridge"
inside 1 public base "cd /home/public && ln -s /project project"
inside 1 public base "mkdir -p /home/public/other"
##
## Set password
inside 1 root base "echo 'public:${global__project_keys[0]}' | chpasswd"
##
## Get root privileges
inside 1 root base "usermod -aG wheel public"
##
info "В контейнере 'Base' настроен пользователь 'public'"
