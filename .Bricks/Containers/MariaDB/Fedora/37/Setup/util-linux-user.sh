#!/bin/bash

# General process
## Setup packages
inside 1 root mariadb "dnf install -y util-linux-user"
##
info "В контейнере 'MariaDB' настроен пакет 'util-linux-user'"
