#!/bin/bash

# General process
## Configure source
inside 1 root base "dnf config-manager --set-enable fedora-modular"
##
info "В контейнере 'Base' включен 'fedora-modular' репозиторий"
