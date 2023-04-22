#!/bin/bash

# General process
## Configure source
inside 1 root code "dnf config-manager --set-enable updates"
##
info "В контейнере 'Code' включен 'updates' репозиторий"
