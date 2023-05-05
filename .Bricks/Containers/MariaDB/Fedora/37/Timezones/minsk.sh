#!/bin/bash

# General process
## Set local time
inside 1 root mariadb 'cp /usr/share/zoneinfo/Europe/Minsk /etc/localtime'
##
info "В контейнере 'MariaDB' произведена синхронизация с городом 'Минск'"
