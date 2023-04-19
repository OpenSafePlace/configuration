#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-disable fedora-debuginfo"
##
info "В контейнере 'NodeJS' отключен 'fedora-debuginfo' репозиторий"
