#!/bin/bash

# General process
## Setup package
inside 1 root csharp "dnf install -y cpulimit"
##
info "В контейнере 'CSharp' настроен пакет 'cpulimit'"
