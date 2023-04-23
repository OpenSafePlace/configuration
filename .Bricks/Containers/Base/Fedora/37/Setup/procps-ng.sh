#!/bin/bash

# General process
## Setup package
inside 1 root base "dnf install -y procps-ng"
##
info "В контейнере 'Base' настроен пакет 'procps-ng'"
