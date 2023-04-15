#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-enable updates-testing-debuginfo"
##
info "В контейнере 'Python' включен 'updates-testing-debuginfo' репозиторий"
