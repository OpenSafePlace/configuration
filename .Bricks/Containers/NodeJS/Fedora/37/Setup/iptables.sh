#!/bin/bash

# General process
## Setup package
inside 1 root nodejs "dnf install -y iptables-nft"
##
info "В контейнере 'NodeJS' настроен пакет 'iptables'"
