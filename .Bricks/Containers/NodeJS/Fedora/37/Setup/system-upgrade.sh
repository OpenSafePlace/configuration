#!/bin/bash

# General process
## Setup package
inside 1 root nodejs "dnf install -y 'dnf-command(system-upgrade)'"
##
info "В контейнере 'NodeJS' настроен пакет 'system-upgrade'"
