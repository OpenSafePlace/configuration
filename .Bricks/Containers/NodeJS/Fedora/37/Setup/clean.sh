#!/bin/bash

# General process
## Uninstall unnecessary packages
inside 1 root nodejs "dnf remove -y tar xz"
##
## Clean cache
inside 1 root nodejs "rm -rf /tmp/*"
inside 1 root nodejs "dnf clean all"
##
info "В контейнере 'NodeJS' очищен кэш менеджера пакетов"
