#!/bin/bash

# General process
## Setup package
inside 1 root python "dnf install -y tzdata"
##
info "В контейнере 'Python' настроен пакет 'tzdata'"
