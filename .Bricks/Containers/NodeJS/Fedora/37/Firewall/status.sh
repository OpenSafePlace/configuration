#!/bin/bash

# General process
## Show ports status
info "В контейнере 'NodeJS' информация из брандмауэра"
##
space
##
space_null
##
inside 11 root nodejs 'iptables -nvL' >&3
##
space_null
