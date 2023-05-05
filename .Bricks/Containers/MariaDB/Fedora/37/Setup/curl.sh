#!/bin/bash

# General process
## Setup package
inside 1 root mariadb "dnf install -y curl"
##
## Configure launch
inside 1 public mariadb "echo 'alias curl=\"cpulimit --limit=\$global__project_power --lazy --include-children curl\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'MariaDB' настроен пакет 'curl'"
