#!/bin/bash

# General process
## Setup package
inside 1 root code "dnf install -y nano"
##
## Configure launch
inside 1 public code "echo 'alias nano=\"nano --linenumbers --mouse --softwrap\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Code' настроен пакет 'nano'"
