#!/bin/bash

# General process
## Minor upgrade OS
inside 1 root nodejs "dnf upgrade -y"
##
info "В контейнере 'NodeJS' все пакеты обновлены"
