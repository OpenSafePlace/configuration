#!/bin/bash

# General process
## Setup package
inside 1 root base "dnf install -y catimg"
##
## Configure launch
inside 1 public base "echo 'alias catimg=\"cpulimit --limit=\$global__project_power --lazy --include-children catimg -c -t\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Base' настроен пакет 'catimg'"
