#!/bin/bash

# General process
## Create user
inside 1 root csharp "useradd -m public"
##
## Create project directories and links
inside 1 public csharp "mkdir -p /home/public/project"
inside 1 public csharp "chmod 700 /home/public/project"
inside 1 public csharp "mkdir -p /home/public/other"
inside 1 public csharp "chmod 700 /home/public/other"
inside 1 public csharp "ln -s /bridge /home/public/bridge"
##
## Set password
inside 1 root csharp "echo 'public:${global__project_keys[0]}' | chpasswd"
##
## Get root privileges
inside 1 root csharp "usermod -aG wheel public"
##
info "В контейнере 'CSharp' настроен пользователь 'public'"
