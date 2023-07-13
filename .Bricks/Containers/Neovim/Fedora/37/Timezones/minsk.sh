#!/bin/bash

# General process
## Set local time
inside 1 root neovim 'cp /usr/share/zoneinfo/Europe/Minsk /etc/localtime'
##
info "В контейнере 'Neovim' произведена синхронизация с городом 'Минск'"
