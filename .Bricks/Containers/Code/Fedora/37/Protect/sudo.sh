#!/bin/bash

# General process
## Set password
inside 1 root code "echo 'public:${global__project_keys_new[0]}' | chpasswd"
##
info "В контейнере 'Code' изменен основной пароль связанный с пакетом 'sudo'"
