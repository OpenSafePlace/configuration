#!/bin/bash

# General process
## Setup package
inside 1 root csharp "dnf install -y git"
##
## Configure launch
inside 1 public csharp "echo 'alias git=\"cpulimit --limit=\$global__project_power --lazy --include-children git\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'CSharp' настроен пакет 'git'"