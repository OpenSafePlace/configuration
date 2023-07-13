#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y procps-ng"
##
info "В контейнере 'Neovim' настроен пакет 'procps-ng'"
