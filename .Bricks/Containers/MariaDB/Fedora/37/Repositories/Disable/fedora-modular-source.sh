#!/bin/bash

# General process
## Configure source
inside 1 root mariadb "dnf config-manager --set-disable fedora-modular-source"
##
info "В контейнере 'MariaDB' отключен 'fedora-modular-source' репозиторий"
