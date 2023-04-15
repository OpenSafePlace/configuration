#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-enable fedora-modular"
##
info "В контейнере 'Python' включен 'fedora-modular' репозиторий"
