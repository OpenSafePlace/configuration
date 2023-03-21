#!/bin/bash

# General process
## Configure source
inside 1 root base "dnf config-manager --set-disable \*"
##
info "В контейнере 'Base' отключены все репозитории"
