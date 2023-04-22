#!/bin/bash

# General process
## Create user
inside 1 root code "useradd -m public"
##
## Create project directories and links
inside 1 public code "mkdir -p /home/public/project"
inside 1 public code "chmod 700 /home/public/project"
inside 1 public code "mkdir -p /home/public/other"
inside 1 public code "chmod 700 /home/public/other"
inside 1 public code "ln -s /bridge /home/public/bridge"
##
## Set password
inside 1 root code "echo 'public:${global__project_keys[0]}' | chpasswd"
##
## Get root privileges
inside 1 root code "usermod -aG wheel public"
##
info "В контейнере 'Code' настроен пользователь 'public'"
