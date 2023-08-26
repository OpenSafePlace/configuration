#!/bin/bash

# General process
## Setup package
inside 2 public neovim "npm install --global bash-language-server@5.0.0"
##
## Configure launch
inside 1 public neovim "echo 'alias bash-language-server=\"cpulimit --limit=\$global__project_power --lazy --include-children bash-language-server\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'bash-language-server'"
