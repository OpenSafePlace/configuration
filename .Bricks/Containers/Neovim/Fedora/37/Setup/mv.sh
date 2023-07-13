#!/bin/bash

# General process
## Configure launch
inside 1 public neovim "echo 'alias mv=\"cpulimit --limit=\$global__project_power --lazy --include-children mv\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'mv'"
