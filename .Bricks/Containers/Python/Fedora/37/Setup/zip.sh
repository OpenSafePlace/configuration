#!/bin/bash

# General process
## Setup package
inside 1 root python "dnf install -y zip"
##
## Configure launch
inside 1 public python "echo 'alias zip=\"cpulimit --limit=\$global__project_power --lazy --include-children zip\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Python' настроен пакет 'zip'"
