#!/bin/bash

# General process
## Setup package
inside 1 root mariadb "dnf install -y 'dnf-command(system-upgrade)'"
##
info "В контейнере 'MariaDB' настроен пакет 'system-upgrade'"
