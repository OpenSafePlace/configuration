#!/bin/bash

# General process
## Configure source
inside 1 root csharp "dnf config-manager --set-disable fedora-modular-source"
##
info "В контейнере 'CSharp' отключен 'fedora-modular-source' репозиторий"