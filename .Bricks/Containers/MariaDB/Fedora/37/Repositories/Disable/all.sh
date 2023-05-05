#!/bin/bash

# General process
## Configure source
inside 1 root mariadb "dnf config-manager --set-disable \*"
##
info "В контейнере 'MariaDB' отключены все репозитории"
