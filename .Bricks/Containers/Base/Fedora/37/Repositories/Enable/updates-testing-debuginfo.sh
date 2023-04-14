#!/bin/bash

# General process
## Configure source
inside 1 root base "dnf config-manager --set-enable updates-testing-debuginfo"
##
info "В контейнере 'Base' включен 'updates-testing-debuginfo' репозиторий"
