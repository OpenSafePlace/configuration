#!/bin/bash

# General process
## Close port
inside 11 root code 'iptables -I INPUT -p tcp -m tcp --dport 10101 -j DROP'
##
info "В контейнере 'Code' порт '10101' закрыт"
