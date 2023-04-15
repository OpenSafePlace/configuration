#!/bin/bash

# General process
## Setup package
inside 1 root python "dnf install -y git"
##
## Configure launch
inside 1 public python "echo 'alias git=\"cpulimit --limit=\$global__project_power --lazy --include-children git\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Python' настроен пакет 'git'"
