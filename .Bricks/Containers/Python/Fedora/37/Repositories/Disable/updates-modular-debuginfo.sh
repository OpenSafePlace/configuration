#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-disable updates-modular-debuginfo"
##
info "В контейнере 'Python' отключен 'updates-modular-debuginfo' репозиторий"
