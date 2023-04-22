#!/bin/bash

# General process
## Setup package
inside 1 root code "dnf install -y wget"
##
## Configure launch
inside 1 public code "echo 'alias wget=\"cpulimit --limit=\$global__project_power --lazy --include-children wget\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Code' настроен пакет 'wget'"
