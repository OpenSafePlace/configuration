#!/bin/bash

# General process
## Set password
inside 1 root base "echo 'public:${global__project_keys_new[0]}' | chpasswd"
##
info "В контейнере 'Base' изменен основной пароль связанный с пакетом 'sudo'"
