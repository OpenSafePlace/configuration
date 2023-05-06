#!/bin/bash

# General process
## Open port
inside 11 root mariadb 'iptables -I INPUT -p tcp -m tcp --dport 3306 -j ACCEPT'
##
info "В контейнере 'MariaDB' порт '3306' открыт"
