#!/bin/bash

# General process
## Configure source
inside 1 root neovim "dnf config-manager --set-disable fedora-source"
##
info "В контейнере 'Neovim' отключен 'fedora-source' репозиторий"
