#!/bin/bash

# General process
## Configure launch
inside 1 public neovim "echo 'alias cp=\"cpulimit --limit=\$global__project_power --lazy --include-children cp\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'cp'"
