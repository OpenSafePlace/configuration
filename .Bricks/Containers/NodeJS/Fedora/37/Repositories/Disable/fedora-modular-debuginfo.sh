#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-disable fedora-modular-debuginfo"
##
info "В контейнере 'NodeJS' отключен 'fedora-modular-debuginfo' репозиторий"
