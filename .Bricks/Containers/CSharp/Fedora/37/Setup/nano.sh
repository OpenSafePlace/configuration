#!/bin/bash

# General process
## Setup package
inside 1 root csharp "dnf install -y nano"
##
## Configure launch
inside 1 public csharp "echo 'alias nano=\"nano --linenumbers --mouse --softwrap\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'CSharp' настроен пакет 'nano'"
