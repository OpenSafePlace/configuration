#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y cronie cronie-anacron"
##
info "В контейнере 'Neovim' настроен пакет 'cronie'"
