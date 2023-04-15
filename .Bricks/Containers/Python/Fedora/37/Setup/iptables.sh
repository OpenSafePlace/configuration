#!/bin/bash

# General process
## Setup package
inside 1 root python "dnf install -y iptables-nft"
##
info "В контейнере 'Python' настроен пакет 'iptables'"
