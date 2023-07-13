#!/bin/bash

# General process
## Configure source
inside 1 root neovim "dnf config-manager --set-enable fedora-modular-source"
##
info "В контейнере 'Neovim' включен 'fedora-modular-source' репозиторий"
