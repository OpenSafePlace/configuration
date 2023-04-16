#!/bin/bash

# General process
## Configure source
inside 1 root csharp "dnf config-manager --set-disable updates-source"
##
info "В контейнере 'CSharp' отключен 'updates-source' репозиторий"
