#!/bin/bash

# General process
## Setup package
inside 1 root mariadb "dnf install -y procps-ng"
##
info "В контейнере 'MariaDB' настроен пакет 'procps-ng'"
