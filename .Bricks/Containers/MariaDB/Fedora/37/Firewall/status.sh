#!/bin/bash

# General process
## Show ports status
info "В контейнере 'MariaDB' информация из брандмауэра"
##
space
##
space_null
##
inside 11 root mariadb 'iptables -nvL' >&3
##
space_null
