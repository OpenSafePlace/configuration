#!/bin/bash

# General process
## Configure source
inside 1 root code "dnf config-manager --set-enable updates-testing-source"
##
info "В контейнере 'Code' включен 'updates-testing-source' репозиторий"
