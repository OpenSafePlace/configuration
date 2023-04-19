#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-disable updates-debuginfo"
##
info "В контейнере 'NodeJS' отключен 'updates-debuginfo' репозиторий"
