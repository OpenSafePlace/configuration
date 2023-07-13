#!/bin/bash

# General process
## Configure source
inside 1 root neovim "dnf config-manager --set-enabled \*"
##
info "В контейнере 'Neovim' включены все репозитории"
