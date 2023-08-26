#!/bin/bash

# General process
## Setup package
inside 1 root base "dnf install -y tree"
##
## Configure launch
inside 1 public base "echo 'alias tree=\"cpulimit --limit=\$global__project_power --lazy --include-children tree\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Base' настроен пакет 'tree'"
