#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Create user
inside 1 root $local__container_name_lowercase "chsh -s /sbin/nologin root"
inside 1 root $local__container_name_lowercase "echo 'echo \"Try not to use the root user\"' > /root/.bashrc"
inside 1 root $local__container_name_lowercase "echo 'sleep infinity' >> /root/.bashrc"
inside 1 root $local__container_name_lowercase "echo 'exit 1' >> /root/.bashrc"
inside 1 root $local__container_name_lowercase "echo 'echo \"Try not to use the root user\"' > /root/.zshrc"
inside 1 root $local__container_name_lowercase "echo 'sleep infinity' >> /root/.zshrc"
inside 1 root $local__container_name_lowercase "echo 'exit 1' >> /root/.zshrc"
##
info "В контейнере '$local__container_name' настроен пользователь 'root'"
