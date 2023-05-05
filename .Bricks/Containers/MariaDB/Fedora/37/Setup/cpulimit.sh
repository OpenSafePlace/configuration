#!/bin/bash

# General process
## Setup package
inside 1 root mariadb "dnf install -y cpulimit"
##
info "В контейнере 'MariaDB' настроен пакет 'cpulimit'"
