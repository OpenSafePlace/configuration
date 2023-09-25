#!/bin/bash

# General process
## Setup package
inside 1 root csharp "dnf install -y ripgrep"
##
## Configure launch
inside 1 public csharp "echo 'alias rg=\"cpulimit --limit=\$global__project_power --lazy --include-children rg\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'CSharp' настроен пакет 'ripgrep'"
