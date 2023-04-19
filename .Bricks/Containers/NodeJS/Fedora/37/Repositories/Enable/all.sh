#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-enabled \*"
##
info "В контейнере 'NodeJS' включены все репозитории"
