#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y lsof"
##
## Configure launch
inside 1 public neovim "echo 'alias lsof=\"cpulimit --limit=\$global__project_power --lazy --include-children lsof\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'lsof'"
