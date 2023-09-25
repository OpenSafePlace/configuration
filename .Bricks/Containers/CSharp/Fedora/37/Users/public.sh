#!/bin/bash

# General process
## Create user
inside 1 root csharp "useradd -m public"
##
## Create project directories and links
##
## Create regular folders
inside 1 root csharp "mkdir /project /bridge /bridge/incoming /bridge/outgoing"
inside 1 public csharp "mkdir /home/public/other /home/public/.config"
##
## Set rules for regular folders
inside 1 root csharp "chown public:public -R /home/public /project /bridge"
inside 1 root csharp "chmod 700 -R /home/public /project /bridge"
##
## Create links to regular folders
inside 1 public csharp "ln -s /bridge /home/public/bridge"
inside 1 public csharp "ln -s /project /home/public/project"
##
## Set password
inside 1 root csharp "echo 'public:${global__project_keys[0]}' | chpasswd"
##
## Get root privileges
inside 1 root csharp "usermod -aG wheel public"
##
info "В контейнере 'CSharp' настроен пользователь 'public'"
