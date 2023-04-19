#!/bin/bash

# General process
## Close port
inside 11 root nodejs 'iptables -I INPUT -p tcp -m tcp --dport 10100 -j DROP'
##
info "В контейнере 'NodeJS' порт '10100' закрыт"
