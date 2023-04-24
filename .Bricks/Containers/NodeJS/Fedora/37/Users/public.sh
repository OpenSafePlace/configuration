#!/bin/bash

# General process
## Create user
inside 1 root nodejs "useradd -m public"
##
## Create project directories and links
inside 1 root nodejs "mkdir -p /project"
inside 1 root nodejs "chmod 700 /project"
inside 1 root nodejs "chown public:public /project"
inside 1 public nodejs "mkdir -p /home/public/other"
inside 1 public nodejs "chmod 700 /home/public/other"
inside 1 public nodejs "ln -s /bridge /home/public/bridge"
inside 1 public nodejs "ln -s /project /home/public/project"
##
## Set password
inside 1 root nodejs "echo 'public:${global__project_keys[0]}' | chpasswd"
##
## Get root privileges
inside 1 root nodejs "usermod -aG wheel public"
##
info "В контейнере 'NodeJS' настроен пользователь 'public'"
