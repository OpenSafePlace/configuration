#!/bin/bash

# General process
## Set local time
inside 1 root code 'cp /usr/share/zoneinfo/Europe/Minsk /etc/localtime'
##
info "В контейнере 'Code' произведена синхронизация с городом 'Минск'"
