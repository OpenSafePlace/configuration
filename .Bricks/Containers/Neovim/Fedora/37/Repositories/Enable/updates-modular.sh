#!/bin/bash

# General process
## Configure source
inside 1 root neovim "dnf config-manager --set-enable updates-modular"
##
info "В контейнере 'Neovim' включен 'updates-modular' репозиторий"
