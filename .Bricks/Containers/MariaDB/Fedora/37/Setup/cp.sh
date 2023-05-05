#!/bin/bash

# General process
## Configure launch
inside 1 public mariadb "echo 'alias cp=\"cpulimit --limit=\$global__project_power --lazy --include-children cp\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'MariaDB' настроен пакет 'cp'"
