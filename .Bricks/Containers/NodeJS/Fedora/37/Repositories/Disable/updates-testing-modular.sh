#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-disable updates-testing-modular"
##
info "В контейнере 'NodeJS' отключен 'updates-testing-modular' репозиторий"
