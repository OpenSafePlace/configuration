#!/bin/bash

# General process
## Setup package
inside 1 root csharp "dnf install -y procps-ng"
##
info "В контейнере 'CSharp' настроен пакет 'procps-ng'"
