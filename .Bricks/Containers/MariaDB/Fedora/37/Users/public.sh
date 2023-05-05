#!/bin/bash

# General process
## Create user
inside 1 root mariadb "useradd -m public"
##
## Create project directories and links
inside 1 root mariadb "mkdir -p /project"
inside 1 root mariadb "chmod 700 /project"
inside 1 root mariadb "chown public:public /project"
inside 1 public mariadb "mkdir -p /home/public/other"
inside 1 public mariadb "chmod 700 /home/public/other"
inside 1 public mariadb "ln -s /bridge /home/public/bridge"
inside 1 public mariadb "ln -s /project /home/public/project"
##
## Set password
inside 1 root mariadb "echo 'public:${global__project_keys[0]}' | chpasswd"
##
## Get root privileges
inside 1 root mariadb "usermod -aG wheel public"
##
info "В контейнере 'MariaDB' настроен пользователь 'public'"
