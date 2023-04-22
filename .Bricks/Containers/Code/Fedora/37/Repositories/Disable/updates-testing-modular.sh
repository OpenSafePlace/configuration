#!/bin/bash

# General process
## Configure source
inside 1 root code "dnf config-manager --set-disable updates-testing-modular"
##
info "В контейнере 'Code' отключен 'updates-testing-modular' репозиторий"
