#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-disable \*"
##
info "В контейнере 'Python' отключены все репозитории"
