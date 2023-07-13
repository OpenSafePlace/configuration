#!/bin/bash

# General process
## Stop process
inside 5 root neovim 'pkill crond'
##
info "В контейнере 'Neovim' сервис 'crond' остановлен"
