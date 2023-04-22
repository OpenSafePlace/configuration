#!/bin/bash

# General process
## Configure source
inside 1 root code "dnf config-manager --set-disable \*"
##
info "В контейнере 'Code' отключены все репозитории"
