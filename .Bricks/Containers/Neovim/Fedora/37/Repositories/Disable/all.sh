#!/bin/bash

# General process
## Configure source
inside 1 root neovim "dnf config-manager --set-disable \*"
##
info "В контейнере 'Neovim' отключены все репозитории"
