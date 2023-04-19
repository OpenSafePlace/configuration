#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-enable updates-testing-source"
##
info "В контейнере 'NodeJS' включен 'updates-testing-source' репозиторий"
