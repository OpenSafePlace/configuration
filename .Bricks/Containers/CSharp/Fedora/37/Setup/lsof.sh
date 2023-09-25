#!/bin/bash

# General process
## Setup package
inside 1 root csharp "dnf install -y lsof"
##
## Configure launch
inside 1 public csharp "echo 'alias lsof=\"cpulimit --limit=\$global__project_power --lazy --include-children lsof\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'CSharp' настроен пакет 'lsof'"
