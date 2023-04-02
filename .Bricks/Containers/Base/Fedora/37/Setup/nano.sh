#!/bin/bash

# General process
## Setup package
inside 1 root base "dnf install -y nano"
##
## Configure launch
inside 1 public base "echo 'alias nano=\"nano --linenumbers --mouse --softwrap\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Base' настроен пакет 'nano'"
