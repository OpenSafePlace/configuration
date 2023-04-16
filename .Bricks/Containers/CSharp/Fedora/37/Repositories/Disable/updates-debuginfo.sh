#!/bin/bash

# General process
## Configure source
inside 1 root csharp "dnf config-manager --set-disable updates-debuginfo"
##
info "В контейнере 'CSharp' отключен 'updates-debuginfo' репозиторий"
