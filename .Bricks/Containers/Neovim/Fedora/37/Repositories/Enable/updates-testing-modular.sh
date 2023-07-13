#!/bin/bash

# General process
## Configure source
inside 1 root neovim "dnf config-manager --set-enable updates-testing-modular"
##
info "В контейнере 'Neovim' включен 'updates-testing-modular' репозиторий"
