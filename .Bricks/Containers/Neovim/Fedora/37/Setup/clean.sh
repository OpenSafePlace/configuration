#!/bin/bash

# General process
## Clean cache
inside 1 root neovim "dnf clean all"
##
info "В контейнере 'Neovim' очищен кэш менеджера пакетов"
