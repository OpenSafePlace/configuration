#!/bin/bash

# General process
## Setup package
inside 1 root mariadb "dnf install -y cronie cronie-anacron"
##
info "В контейнере 'MariaDB' настроен пакет 'cronie'"
