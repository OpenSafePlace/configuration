#!/bin/bash

# General process
## Configure source
inside 1 root base "dnf config-manager --set-disable fedora-modular-source"
##
info "В контейнере 'Base' отключен 'fedora-modular-source' репозиторий"
