#!/bin/bash

# General process
## Configure source
inside 1 root code "dnf config-manager --set-disable fedora-debuginfo"
##
info "В контейнере 'Code' отключен 'fedora-debuginfo' репозиторий"
