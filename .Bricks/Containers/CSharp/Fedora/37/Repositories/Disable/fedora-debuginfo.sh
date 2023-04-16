#!/bin/bash

# General process
## Configure source
inside 1 root csharp "dnf config-manager --set-disable fedora-debuginfo"
##
info "В контейнере 'CSharp' отключен 'fedora-debuginfo' репозиторий"
