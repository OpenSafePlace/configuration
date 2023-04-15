#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-enabled \*"
##
info "В контейнере 'Python' включены все репозитории"
