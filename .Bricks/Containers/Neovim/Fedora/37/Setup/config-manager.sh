#!/bin/bash

# General process
## Setup packages
inside 1 root neovim "dnf install -y 'dnf-command(config-manager)'"
##
info "В контейнере 'Neovim' настроен пакет 'config-manager'"
