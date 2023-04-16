#!/bin/bash

# General process
## Uninstall unnecessary packages
inside 1 root csharp "dnf remove -y tar"
##
## Clean cache
inside 1 root csharp "rm -rf /tmp/*"
inside 1 root csharp "dnf clean all"
##
info "В контейнере 'CSharp' очищен кэш менеджера пакетов"
