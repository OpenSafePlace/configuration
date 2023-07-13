#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y nano"
##
## Configure launch
inside 1 public neovim "echo 'alias nano=\"nano --linenumbers --mouse --softwrap\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'nano'"
