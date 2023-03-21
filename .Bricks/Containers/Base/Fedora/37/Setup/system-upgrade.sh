#!/bin/bash

# General process
## Setup package
inside 1 root base "dnf install -y 'dnf-command(system-upgrade)'"
##
info "В контейнере 'Base' настроен пакет 'system-upgrade'"
