#!/bin/bash

# General process
## Configure source
inside 1 root mariadb "dnf config-manager --set-enabled \*"
##
info "В контейнере 'MariaDB' включены все репозитории"
