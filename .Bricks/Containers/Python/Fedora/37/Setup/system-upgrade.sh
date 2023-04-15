#!/bin/bash

# General process
## Setup package
inside 1 root python "dnf install -y 'dnf-command(system-upgrade)'"
##
info "В контейнере 'Python' настроен пакет 'system-upgrade'"
