#!/bin/bash

# General process
## Configure source
inside 1 root csharp "dnf config-manager --set-enabled \*"
##
info "В контейнере 'CSharp' включены все репозитории"
