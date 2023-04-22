#!/bin/bash

# General process
## Clean cache
inside 1 root code "dnf clean all"
##
info "В контейнере 'Code' очищен кэш менеджера пакетов"
