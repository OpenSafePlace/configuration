#!/bin/bash

# General process
## Setup package
inside 1 root code "dnf install -y pkg-config make gcc gcc-c++ libsecret-devel libxkbfile-devel libX11-devel"
inside 1 public code "git clone -b dev https://github.com/SimpleConfigurationStart/code.git ~/code"
inside 2 public code "cd ~/code && sh create.sh"
##
info "В контейнере 'Code' настроен пакет 'code'"
