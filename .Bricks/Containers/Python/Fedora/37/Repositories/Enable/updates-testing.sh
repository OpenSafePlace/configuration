#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-enable updates-testing"
##
info "В контейнере 'Python' включен 'updates-testing' репозиторий"
