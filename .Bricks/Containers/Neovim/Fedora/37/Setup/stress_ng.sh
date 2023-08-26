#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y stress-ng"
##
## Configure launch
inside 1 public neovim "echo 'alias stress-ng=\"cpulimit --limit=\$global__project_power --lazy --include-children stress-ng\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'stress-ng'"