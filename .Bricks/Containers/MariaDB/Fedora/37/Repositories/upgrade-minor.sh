#!/bin/bash

# General process
## Minor upgrade OS
inside 1 root mariadb "dnf upgrade -y"
##
info "В контейнере 'MariaDB' все пакеты обновлены"
