#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y tree"
##
## Configure launch
inside 1 public neovim "echo 'alias tree=\"cpulimit --limit=\$global__project_power --lazy --include-children tree\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'tree'"
