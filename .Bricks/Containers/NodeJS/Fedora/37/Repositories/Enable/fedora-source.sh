#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-enable fedora-source"
##
info "В контейнере 'NodeJS' включен 'fedora-source' репозиторий"
