#!/bin/bash

# General process
## Set password
inside 1 root csharp "echo 'public:${global__project_keys_new[0]}' | chpasswd"
##
info "В контейнере 'CSharp' изменен основной пароль связанный с пакетом 'sudo'"
