#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y gcc"
##
## Configure launch
inside 1 public neovim "echo 'alias gcc=\"cpulimit --limit=\$global__project_power --lazy --include-children gcc\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'gcc'"
