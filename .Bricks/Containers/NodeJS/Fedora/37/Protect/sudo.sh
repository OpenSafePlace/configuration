#!/bin/bash

# General process
## Set password
inside 1 root nodejs "echo 'public:${global__project_keys_new[0]}' | chpasswd"
##
info "В контейнере 'NodeJS' изменен основной пароль связанный с пакетом 'sudo'"
