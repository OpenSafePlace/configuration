#!/bin/bash

# General process
## Setup package
inside 1 root code "dnf install -y stress-ng"
##
## Configure launch
inside 1 public code "echo 'alias stress-ng=\"cpulimit --limit=\$global__project_power --lazy --include-children stress-ng\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Code' настроен пакет 'stress-ng'"
