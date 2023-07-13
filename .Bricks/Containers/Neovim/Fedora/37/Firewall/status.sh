#!/bin/bash

# General process
## Show ports status
info "В контейнере 'Neovim' информация из брандмауэра"
##
space
##
space_null
##
inside 11 root neovim 'iptables -nvL' >&3
##
space_null
