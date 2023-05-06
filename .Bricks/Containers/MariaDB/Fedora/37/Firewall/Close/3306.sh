#!/bin/bash

# General process
## Close port
inside 11 root mariadb 'iptables -I INPUT -p tcp -m tcp --dport 3306 -j DROP'
##
info "В контейнере 'MariaDB' порт '3306' закрыт"
