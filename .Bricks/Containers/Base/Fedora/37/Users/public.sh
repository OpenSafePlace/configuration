#!/bin/bash

# General process
## Create user
inside 1 root base "useradd -m public"
##
## Create project directories and links
inside 1 public base "mkdir -p /home/public/project"
inside 1 public base "chmod 700 /home/public/project"
inside 1 public base "mkdir -p /home/public/other"
inside 1 public base "chmod 700 /home/public/other"
inside 1 public base "ln -s /bridge /home/public/bridge"
##
## Set password
inside 1 root base "echo 'public:${global__project_keys[0]}' | chpasswd"
##
## Get root privileges
inside 1 root base "usermod -aG wheel public"
##
info "В контейнере 'Base' настроен пользователь 'public'"
