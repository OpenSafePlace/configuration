#!/bin/bash

# General process
## Configure source
inside 1 root neovim "dnf config-manager --set-disable updates-modular-source"
##
info "В контейнере 'Neovim' отключен 'updates-modular-source' репозиторий"
