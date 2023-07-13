#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y git"
##
## Configure launch
inside 1 public neovim "echo 'alias git=\"cpulimit --limit=\$global__project_power --lazy --include-children git\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'git'"
