#!/bin/bash

# General process
## Setup package
inside 1 root mariadb "dnf install -y sudo"
##
info "В контейнере 'MariaDB' настроен пакет 'sudo'"