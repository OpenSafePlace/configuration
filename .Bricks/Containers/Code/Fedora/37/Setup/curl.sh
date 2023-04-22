#!/bin/bash

# General process
## Setup package
inside 1 root code "dnf install -y curl"
##
## Configure launch
inside 1 public code "echo 'alias curl=\"cpulimit --limit=\$global__project_power --lazy --include-children curl\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Code' настроен пакет 'curl'"
