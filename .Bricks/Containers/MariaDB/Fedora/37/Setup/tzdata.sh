#!/bin/bash

# General process
## Setup package
inside 1 root mariadb "dnf install -y tzdata"
##
info "В контейнере 'MariaDB' настроен пакет 'tzdata'"
