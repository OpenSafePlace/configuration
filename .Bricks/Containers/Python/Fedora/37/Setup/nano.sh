#!/bin/bash

# General process
## Setup package
inside 1 root python "dnf install -y nano"
##
## Configure launch
inside 1 public python "echo 'alias nano=\"nano --linenumbers --mouse --softwrap\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Python' настроен пакет 'nano'"
