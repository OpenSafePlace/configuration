#!/bin/bash

# General process
## Setup package
inside 1 root nodejs "dnf install -y curl"
##
## Configure launch
inside 1 public nodejs "echo 'alias curl=\"cpulimit --limit=\$global__project_power --lazy --include-children curl\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'NodeJS' настроен пакет 'curl'"
