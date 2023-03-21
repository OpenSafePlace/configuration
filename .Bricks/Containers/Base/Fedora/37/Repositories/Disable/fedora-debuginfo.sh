#!/bin/bash

# General process
## Configure source
inside 1 root base "dnf config-manager --set-disable fedora-debuginfo"
##
info "В контейнере 'Base' отключен 'fedora-debuginfo' репозиторий"
