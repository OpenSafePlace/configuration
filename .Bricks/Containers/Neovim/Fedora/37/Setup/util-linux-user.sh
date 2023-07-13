#!/bin/bash

# General process
## Setup packages
inside 1 root neovim "dnf install -y util-linux-user"
##
info "В контейнере 'Neovim' настроен пакет 'util-linux-user'"
