#!/bin/bash

# General process
## Show ports status
info "В контейнере 'Python' информация из брандмауэра"
##
space
##
space_null
##
inside 11 root python 'iptables -nvL' >&3
##
space_null
