#!/bin/bash

# General process
## Setup package
inside 1 root nodejs "dnf install -y nano"
##
## Configure launch
inside 1 public nodejs "echo 'alias nano=\"nano --linenumbers --mouse --softwrap\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'NodeJS' настроен пакет 'nano'"
