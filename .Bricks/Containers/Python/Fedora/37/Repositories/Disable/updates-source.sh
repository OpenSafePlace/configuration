#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-disable updates-source"
##
info "В контейнере 'Python' отключен 'updates-source' репозиторий"
