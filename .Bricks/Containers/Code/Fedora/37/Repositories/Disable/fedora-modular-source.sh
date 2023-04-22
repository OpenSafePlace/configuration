#!/bin/bash

# General process
## Configure source
inside 1 root code "dnf config-manager --set-disable fedora-modular-source"
##
info "В контейнере 'Code' отключен 'fedora-modular-source' репозиторий"
