#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-enable updates-testing"
##
info "В контейнере 'NodeJS' включен 'updates-testing' репозиторий"
