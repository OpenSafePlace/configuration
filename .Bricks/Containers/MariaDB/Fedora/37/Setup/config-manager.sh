#!/bin/bash

# General process
## Setup packages
inside 1 root mariadb "dnf install -y 'dnf-command(config-manager)'"
##
info "В контейнере 'MariaDB' настроен пакет 'config-manager'"
