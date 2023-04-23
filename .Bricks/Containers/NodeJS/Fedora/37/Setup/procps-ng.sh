#!/bin/bash

# General process
## Setup package
inside 1 root nodejs "dnf install -y procps-ng"
##
info "В контейнере 'NodeJS' настроен пакет 'procps-ng'"
