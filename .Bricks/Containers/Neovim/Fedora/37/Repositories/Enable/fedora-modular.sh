#!/bin/bash

# General process
## Configure source
inside 1 root neovim "dnf config-manager --set-enable fedora-modular"
##
info "В контейнере 'Neovim' включен 'fedora-modular' репозиторий"