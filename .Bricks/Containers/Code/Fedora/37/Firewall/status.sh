#!/bin/bash

# General process
## Show ports status
info "В контейнере 'Code' информация из брандмауэра"
##
space
##
space_null
##
inside 11 root code 'iptables -nvL' >&3
##
space_null
