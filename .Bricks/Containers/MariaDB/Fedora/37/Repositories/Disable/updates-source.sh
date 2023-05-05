#!/bin/bash

# General process
## Configure source
inside 1 root mariadb "dnf config-manager --set-disable updates-source"
##
info "В контейнере 'MariaDB' отключен 'updates-source' репозиторий"
