#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-disable updates-testing-modular-debuginfo"
##
info "В контейнере 'Python' отключен 'updates-testing-modular-debuginfo' репозиторий"
