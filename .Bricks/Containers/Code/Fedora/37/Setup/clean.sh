#!/bin/bash

# General process
## Uninstall unnecessary packages
inside 1 root code "dnf remove -y pkg-config gcc gcc-c++ libsecret-devel libxkbfile-devel libX11-devel"
##
## Clean cache
inside 1 root code "rm -rf /tmp/*"
inside 1 root code "dnf clean all"
##
info "В контейнере 'Code' очищен кэш менеджера пакетов"
