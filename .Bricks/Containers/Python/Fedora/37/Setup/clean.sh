#!/bin/bash

# General process
## Uninstall unnecessary packages
inside 1 root python "dnf remove -y tar gcc openssl-devel libffi-devel zlib-devel"
##
## Clean cache
inside 1 root python "rm -rf /tmp/*"
inside 1 root python "dnf clean all"
##
info "В контейнере 'Python' очищен кэш менеджера пакетов"
