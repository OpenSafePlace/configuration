#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-enable updates-modular"
##
info "В контейнере 'NodeJS' включен 'updates-modular' репозиторий"