#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y g++"
##
## Configure launch
inside 1 public neovim "echo 'alias g++=\"cpulimit --limit=\$global__project_power --lazy --include-children g++\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'g++'"
