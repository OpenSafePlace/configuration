#!/bin/bash

# General process
## Setup package
inside 1 root mariadb "dnf install -y catimg"
##
## Configure launch
inside 1 public mariadb "echo 'alias catimg=\"cpulimit --limit=\$global__project_power --lazy --include-children catimg -c -t\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'MariaDB' настроен пакет 'catimg'"
