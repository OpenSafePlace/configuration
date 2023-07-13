#!/bin/bash

# General process
## Minor upgrade OS
inside 1 root neovim "dnf upgrade -y"
##
info "В контейнере 'Neovim' все пакеты обновлены"
