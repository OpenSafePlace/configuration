#!/bin/bash

# General process
## Configure launch
inside 1 public mariadb "echo 'alias du=\"cpulimit --limit=\$global__project_power --lazy --include-children du\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'MariaDB' настроен пакет 'du'"