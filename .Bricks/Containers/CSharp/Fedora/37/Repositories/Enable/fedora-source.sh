#!/bin/bash

# General process
## Configure source
inside 1 root csharp "dnf config-manager --set-enable fedora-source"
##
info "В контейнере 'CSharp' включен 'fedora-source' репозиторий"
