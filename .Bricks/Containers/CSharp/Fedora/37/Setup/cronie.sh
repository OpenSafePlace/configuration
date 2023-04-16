#!/bin/bash

# General process
## Setup package
inside 1 root csharp "dnf install -y cronie cronie-anacron"
##
info "В контейнере 'CSharp' настроен пакет 'cronie'"
