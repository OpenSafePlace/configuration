#!/bin/bash

# General process
## Clean cache
inside 1 root csharp "dnf clean all"
##
info "В контейнере 'CSharp' очищен кэш менеджера пакетов"
