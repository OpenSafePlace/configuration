#!/bin/bash

# General process
## Clean cache
inside 1 root nodejs "dnf clean all"
##
info "В контейнере 'NodeJS' очищен кэш менеджера пакетов"
