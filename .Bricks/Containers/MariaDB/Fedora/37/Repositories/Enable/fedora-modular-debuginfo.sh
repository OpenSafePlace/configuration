#!/bin/bash

# General process
## Configure source
inside 1 root mariadb "dnf config-manager --set-enable fedora-modular-debuginfo"
##
info "В контейнере 'MariaDB' включен 'fedora-modular-debuginfo' репозиторий"
