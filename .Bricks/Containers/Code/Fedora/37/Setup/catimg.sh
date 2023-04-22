#!/bin/bash

# General process
## Setup package
inside 1 root code "dnf install -y catimg"
##
## Configure launch
inside 1 public code "echo 'alias catimg=\"cpulimit --limit=\$global__project_power --lazy --include-children catimg -c -t\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Code' настроен пакет 'catimg'"
