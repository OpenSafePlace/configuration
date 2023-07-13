#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y wget"
##
## Configure launch
inside 1 public neovim "echo 'alias wget=\"cpulimit --limit=\$global__project_power --lazy --include-children wget\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'wget'"
