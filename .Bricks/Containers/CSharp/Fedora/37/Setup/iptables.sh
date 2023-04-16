#!/bin/bash

# General process
## Setup package
inside 1 root csharp "dnf install -y iptables-nft"
##
info "В контейнере 'CSharp' настроен пакет 'iptables'"
