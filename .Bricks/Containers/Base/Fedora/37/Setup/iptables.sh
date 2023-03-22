#!/bin/bash

# General process
## Setup package
inside 1 root base "dnf install -y iptables-nft"
##
info "В контейнере 'Base' настроен пакет 'iptables'"
