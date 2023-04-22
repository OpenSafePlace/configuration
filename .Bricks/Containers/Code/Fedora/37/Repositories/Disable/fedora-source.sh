#!/bin/bash

# General process
## Configure source
inside 1 root code "dnf config-manager --set-disable fedora-source"
##
info "В контейнере 'Code' отключен 'fedora-source' репозиторий"
