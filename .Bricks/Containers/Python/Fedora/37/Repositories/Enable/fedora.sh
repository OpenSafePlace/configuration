#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-enable fedora"
##
info "В контейнере 'Python' включен 'fedora' репозиторий"
