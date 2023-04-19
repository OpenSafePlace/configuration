#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-disable updates-modular-source"
##
info "В контейнере 'NodeJS' отключен 'updates-modular-source' репозиторий"
