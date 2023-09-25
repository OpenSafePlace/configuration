#!/bin/bash

# General process
## Setup package
inside 1 root csharp "dnf install -y openssl"
##
info "В контейнере 'CSharp' настроен пакет 'openssl'"
