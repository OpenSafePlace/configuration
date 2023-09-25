#!/bin/bash

# General process
## Setup package
inside 1 root csharp "dnf install -y tree"
##
## Configure launch
inside 1 public csharp "echo 'alias tree=\"cpulimit --limit=\$global__project_power --lazy --include-children tree\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'CSharp' настроен пакет 'tree'"
