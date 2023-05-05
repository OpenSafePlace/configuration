#!/bin/bash

# General process
## Setup package
inside 1 root mariadb "dnf install -y iptables-nft"
##
info "В контейнере 'MariaDB' настроен пакет 'iptables'"
