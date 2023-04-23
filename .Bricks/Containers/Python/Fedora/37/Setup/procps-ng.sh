#!/bin/bash

# General process
## Setup package
inside 1 root python "dnf install -y procps-ng"
##
info "В контейнере 'Python' настроен пакет 'procps-ng'"
