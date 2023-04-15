#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-enable updates-modular-source"
##
info "В контейнере 'Python' включен 'updates-modular-source' репозиторий"
