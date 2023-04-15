#!/bin/bash

# General process
## Minor upgrade OS
inside 1 root python "dnf upgrade -y"
##
info "В контейнере 'Python' все пакеты обновлены"
