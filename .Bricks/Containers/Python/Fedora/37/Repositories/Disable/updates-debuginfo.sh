#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-disable updates-debuginfo"
##
info "В контейнере 'Python' отключен 'updates-debuginfo' репозиторий"
