#!/bin/bash

# General process
## Clean cache
inside 1 root mariadb "dnf clean all"
##
info "В контейнере 'MariaDB' очищен кэш менеджера пакетов"
