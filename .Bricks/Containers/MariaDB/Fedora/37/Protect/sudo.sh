#!/bin/bash

# General process
## Set password
inside 1 root mariadb "echo 'public:${global__project_keys_new[0]}' | chpasswd"
##
info "В контейнере 'MariaDB' изменен основной пароль связанный с пакетом 'sudo'"
