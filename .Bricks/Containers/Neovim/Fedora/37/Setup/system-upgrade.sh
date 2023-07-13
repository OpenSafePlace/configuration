#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y 'dnf-command(system-upgrade)'"
##
info "В контейнере 'Neovim' настроен пакет 'system-upgrade'"
