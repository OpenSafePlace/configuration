#!/bin/bash

# General process
## Setup package
inside 1 root nodejs "dnf install -y cronie cronie-anacron"
##
info "В контейнере 'NodeJS' настроен пакет 'cronie'"
