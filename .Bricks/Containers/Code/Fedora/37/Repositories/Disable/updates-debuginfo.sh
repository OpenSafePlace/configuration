#!/bin/bash

# General process
## Configure source
inside 1 root code "dnf config-manager --set-disable updates-debuginfo"
##
info "В контейнере 'Code' отключен 'updates-debuginfo' репозиторий"
