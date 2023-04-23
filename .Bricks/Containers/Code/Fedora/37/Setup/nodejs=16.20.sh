#!/bin/bash

# General process
## Vars
local__nodejs_version_full="16.20.0"
##
## Setup package
inside 1 root code "dnf install -y tar xz"
inside 1 public code "mkdir -p /tmp/nodejs /home/public/.local/lib/nodejs"
inside 1 public code "curl -L -o /tmp/node-v${local__nodejs_version_full}-linux-${global__project_host_cpu_type}.tar.xz https://nodejs.org/dist/v${local__nodejs_version_full}/node-v${local__nodejs_version_full}-linux-${global__project_host_cpu_type}.tar.xz"
inside 1 public code "tar -xJvf /tmp/node-v${local__nodejs_version_full}-linux-${global__project_host_cpu_type}.tar.xz -C /tmp/nodejs"
inside 1 public code "mv /tmp/nodejs/node-v${local__nodejs_version_full}-linux-${global__project_host_cpu_type}/* /home/public/.local/lib/nodejs"
inside 1 public code "echo 'export PATH=\$PATH:/home/public/.local/lib/nodejs/bin' >> /home/public/.zshrc"
##
## Configure launch
inside 1 public code "echo 'alias node=\"cpulimit --limit=\$global__project_power --lazy --include-children node\"' >> /home/public/.zsh_alias"
inside 1 public code "echo 'alias npm=\"cpulimit --limit=\$global__project_power --lazy --include-children npm\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Code' настроен пакет 'nodejs'"
##
## Unset local vars
unset local__nodejs_version_full
##
## Information about the nodejs source (license, tutorial and other)
## https://nodejs.org/
