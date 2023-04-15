#!/bin/bash

# General process
## Set local time
inside 1 root python 'cp /usr/share/zoneinfo/Europe/Minsk /etc/localtime'
##
info "В контейнере 'Python' произведена синхронизация с городом 'Минск'"
