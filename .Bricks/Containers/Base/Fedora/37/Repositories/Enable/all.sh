#!/bin/bash

# General process
## Configure source
inside 1 root base "dnf config-manager --set-enabled \*"
##
info "В контейнере 'Base' включены все репозитории"
