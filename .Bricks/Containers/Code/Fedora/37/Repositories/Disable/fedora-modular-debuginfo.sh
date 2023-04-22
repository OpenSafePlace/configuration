#!/bin/bash

# General process
## Configure source
inside 1 root code "dnf config-manager --set-disable fedora-modular-debuginfo"
##
info "В контейнере 'Code' отключен 'fedora-modular-debuginfo' репозиторий"
