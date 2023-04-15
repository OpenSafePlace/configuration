#!/bin/bash

# General process
## Create user
inside 1 root python "useradd -m public"
##
## Create project directories and links
inside 1 public python "mkdir -p /home/public/project"
inside 1 public python "chmod 700 /home/public/project"
inside 1 public python "mkdir -p /home/public/other"
inside 1 public python "chmod 700 /home/public/other"
inside 1 public python "ln -s /bridge /home/public/bridge"
##
## Set password
inside 1 root python "echo 'public:${global__project_keys[0]}' | chpasswd"
##
## Get root privileges
inside 1 root python "usermod -aG wheel public"
##
info "В контейнере 'Python' настроен пользователь 'public'"
