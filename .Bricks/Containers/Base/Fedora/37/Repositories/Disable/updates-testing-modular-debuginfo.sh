#!/bin/bash

# General process
## Configure source
inside 1 root base "dnf config-manager --set-disable updates-testing-modular-debuginfo"
##
info "В контейнере 'Base' отключен 'updates-testing-modular-debuginfo' репозиторий"
