#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-enable updates-source"
##
info "В контейнере 'Python' включен 'updates-source' репозиторий"
