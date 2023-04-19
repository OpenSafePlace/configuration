#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-disable \*"
##
info "В контейнере 'NodeJS' отключены все репозитории"
