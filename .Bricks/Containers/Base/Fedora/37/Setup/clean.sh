#!/bin/bash

# General process
## Clean cache
inside 1 root base "dnf clean all"
##
info "В контейнере 'Base' очищен кэш менеджера пакетов"
