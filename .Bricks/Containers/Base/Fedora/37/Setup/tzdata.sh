#!/bin/bash

# General process
## Setup package
inside 1 root base "dnf install -y tzdata"
##
info "В контейнере 'Base' настроен пакет 'tzdata'"
