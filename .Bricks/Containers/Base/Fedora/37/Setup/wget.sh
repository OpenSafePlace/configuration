#!/bin/bash

# General process
## Setup package
inside 1 root base "dnf install -y wget"
##
## Configure power
inside 1 public base "echo 'alias wget=\"cpulimit --limit=\$global__project_power --lazy --include-children wget\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Base' настроен пакет 'wget'"
