#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y tzdata"
##
info "В контейнере 'Neovim' настроен пакет 'tzdata'"
