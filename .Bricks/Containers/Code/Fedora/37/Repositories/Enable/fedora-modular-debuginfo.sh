#!/bin/bash

# General process
## Configure source
inside 1 root code "dnf config-manager --set-enable fedora-modular-debuginfo"
##
info "В контейнере 'Code' включен 'fedora-modular-debuginfo' репозиторий"
