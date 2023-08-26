#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y ripgrep"
##
## Configure launch
inside 1 public neovim "echo 'alias rg=\"cpulimit --limit=\$global__project_power --lazy --include-children rg\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'ripgrep'"
