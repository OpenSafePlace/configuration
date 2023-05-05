#!/bin/bash

# General process
## Configure source
inside 1 root mariadb "dnf config-manager --set-enable updates-modular"
##
info "В контейнере 'MariaDB' включен 'updates-modular' репозиторий"
