#!/bin/bash

# General process
## Setup package
inside 1 root mariadb "dnf install -y nano"
##
## Configure launch
inside 1 public mariadb "echo 'alias nano=\"nano --linenumbers --mouse --softwrap\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'MariaDB' настроен пакет 'nano'"
