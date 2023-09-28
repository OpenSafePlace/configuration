#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y openssl"
##
info "В контейнере 'Neovim' настроен пакет 'openssl'"
