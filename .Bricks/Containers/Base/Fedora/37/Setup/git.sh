#!/bin/bash

# General process
## Setup package
inside 1 root base "dnf install -y git"
##
## Configure power
inside 1 public base "echo 'alias git=\"cpulimit --limit=\$global__project_power --lazy --include-children git\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Base' настроен пакет 'git'"
