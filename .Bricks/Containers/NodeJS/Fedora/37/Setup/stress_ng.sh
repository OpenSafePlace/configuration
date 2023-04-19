#!/bin/bash

# General process
## Setup package
inside 1 root nodejs "dnf install -y stress-ng"
##
## Configure launch
inside 1 public nodejs "echo 'alias stress-ng=\"cpulimit --limit=\$global__project_power --lazy --include-children stress-ng\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'NodeJS' настроен пакет 'stress-ng'"