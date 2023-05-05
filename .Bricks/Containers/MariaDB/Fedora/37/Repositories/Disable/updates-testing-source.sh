#!/bin/bash

# General process
## Configure source
inside 1 root mariadb "dnf config-manager --set-disable updates-testing-source"
##
info "В контейнере 'MariaDB' отключен 'updates-testing-source' репозиторий"
