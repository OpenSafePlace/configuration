#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-disable fedora-modular"
##
info "В контейнере 'Python' отключен 'fedora-modular' репозиторий"
