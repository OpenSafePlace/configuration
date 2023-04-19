#!/bin/bash

# General process
## Setup package
inside 1 root nodejs "dnf install -y tzdata"
##
info "В контейнере 'NodeJS' настроен пакет 'tzdata'"
