#!/bin/bash

# General process
## Configure source
inside 1 root code "dnf config-manager --set-disable updates-modular-debuginfo"
##
info "В контейнере 'Code' отключен 'updates-modular-debuginfo' репозиторий"
