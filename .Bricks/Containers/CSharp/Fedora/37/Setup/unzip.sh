#!/bin/bash

# General process
## Setup package
inside 1 root csharp "dnf install -y unzip"
##
## Configure launch
inside 1 public csharp "echo 'alias unzip=\"cpulimit --limit=\$global__project_power --lazy --include-children unzip\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'CSharp' настроен пакет 'unzip'"
