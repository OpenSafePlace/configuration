#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-enable fedora-debuginfo"
##
info "В контейнере 'NodeJS' включен 'fedora-debuginfo' репозиторий"
