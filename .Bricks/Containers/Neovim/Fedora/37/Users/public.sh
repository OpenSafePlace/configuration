#!/bin/bash

# General process
## Create user
inside 1 root neovim "useradd -m public"
##
## Create project directories and links
inside 1 root neovim "mkdir -p /project"
inside 1 root neovim "chmod 700 /project"
inside 1 root neovim "chown public:public /project"
inside 1 public neovim "mkdir -p /home/public/other"
inside 1 public neovim "chmod 700 /home/public/other"
inside 1 public neovim "ln -s /bridge /home/public/bridge"
inside 1 public neovim "ln -s /project /home/public/project"
##
## Set password
inside 1 root neovim "echo 'public:${global__project_keys[0]}' | chpasswd"
##
## Get root privileges
inside 1 root neovim "usermod -aG wheel public"
##
info "В контейнере 'Neovim' настроен пользователь 'public'"
