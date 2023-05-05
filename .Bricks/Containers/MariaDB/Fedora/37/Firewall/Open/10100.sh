#!/bin/bash

# General process
## Open port
inside 11 root mariadb 'iptables -I INPUT -p tcp -m tcp --dport 10100 -j ACCEPT'
##
info "В контейнере 'MariaDB' порт '10100' открыт"
