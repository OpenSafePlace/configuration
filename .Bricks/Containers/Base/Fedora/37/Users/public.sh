#!/bin/bash

# General process
## Create user
inside 1 root base "useradd -m public"
##
## Create project directories and links
inside 1 root base "mkdir -p /project"
inside 1 root base "chmod 700 /project"
inside 1 root base "chown public:public /project"
inside 1 public base "mkdir -p /home/public/other"
inside 1 public base "chmod 700 /home/public/other"
inside 1 public base "ln -s /bridge /home/public/bridge"
inside 1 public base "ln -s /project /home/public/project"
##
## Set password
inside 1 root base "echo 'public:${global__project_keys[0]}' | chpasswd"
##
## Get root privileges
inside 1 root base "usermod -aG wheel public"
##
info "В контейнере 'Base' настроен пользователь 'public'"
