#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-enable updates-testing-modular-debuginfo"
##
info "В контейнере 'NodeJS' включен 'updates-testing-modular-debuginfo' репозиторий"