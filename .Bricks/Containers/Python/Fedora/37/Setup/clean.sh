#!/bin/bash

# General process
## Clean cache
inside 1 root python "dnf clean all"
##
info "В контейнере 'Python' очищен кэш менеджера пакетов"
