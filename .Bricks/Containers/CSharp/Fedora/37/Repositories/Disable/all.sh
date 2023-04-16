#!/bin/bash

# General process
## Configure source
inside 1 root csharp "dnf config-manager --set-disable \*"
##
info "В контейнере 'CSharp' отключены все репозитории"
