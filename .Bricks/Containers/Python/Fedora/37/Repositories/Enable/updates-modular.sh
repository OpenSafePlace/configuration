#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-enable updates-modular"
##
info "В контейнере 'Python' включен 'updates-modular' репозиторий"
