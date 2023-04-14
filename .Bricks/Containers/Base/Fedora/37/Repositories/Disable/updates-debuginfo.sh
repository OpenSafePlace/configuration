#!/bin/bash

# General process
## Configure source
inside 1 root base "dnf config-manager --set-disable updates-debuginfo"
##
info "В контейнере 'Base' отключен 'updates-debuginfo' репозиторий"
