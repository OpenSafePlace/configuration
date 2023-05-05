#!/bin/bash

# General process
## Configure source
inside 1 root mariadb "dnf config-manager --set-enable updates-debuginfo"
##
info "В контейнере 'MariaDB' включен 'updates-debuginfo' репозиторий"
