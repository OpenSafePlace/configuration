#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-disable fedora-source"
##
info "В контейнере 'NodeJS' отключен 'fedora-source' репозиторий"
