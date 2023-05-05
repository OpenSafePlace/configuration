#!/bin/bash

# General process
## Configure source
inside 1 root mariadb "dnf config-manager --set-disable fedora-source"
##
info "В контейнере 'MariaDB' отключен 'fedora-source' репозиторий"
