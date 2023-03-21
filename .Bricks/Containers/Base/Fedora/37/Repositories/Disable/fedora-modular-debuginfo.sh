#!/bin/bash

# General process
## Configure source
inside 1 root base "dnf config-manager --set-disable fedora-modular-debuginfo"
##
info "В контейнере 'Base' отключен 'fedora-modular-debuginfo' репозиторий"
