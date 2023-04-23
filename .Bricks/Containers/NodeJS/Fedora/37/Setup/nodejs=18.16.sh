#!/bin/bash

# General process
## Vars
local__nodejs_version_full="18.16.0"
##
## Setup package
inside 1 root nodejs "dnf install -y tar xz"
inside 1 public nodejs "mkdir -p /tmp/nodejs /home/public/.local/lib/nodejs"
inside 1 public nodejs "curl -L -o /tmp/node-v${local__nodejs_version_full}-linux-${global__project_host_cpu_type}.tar.xz https://nodejs.org/dist/v${local__nodejs_version_full}/node-v${local__nodejs_version_full}-linux-${global__project_host_cpu_type}.tar.xz"
inside 1 public nodejs "tar -xJvf /tmp/node-v${local__nodejs_version_full}-linux-${global__project_host_cpu_type}.tar.xz -C /tmp/nodejs"
inside 1 public nodejs "mv /tmp/nodejs/node-v${local__nodejs_version_full}-linux-${global__project_host_cpu_type}/* /home/public/.local/lib/nodejs"
inside 1 public nodejs "echo 'export PATH=\$PATH:/home/public/.local/lib/nodejs/bin' >> /home/public/.zshrc"
##
## Configure launch
inside 1 public nodejs "echo 'alias node=\"cpulimit --limit=\$global__project_power --lazy --include-children node\"' >> /home/public/.zsh_alias"
inside 1 public nodejs "echo 'alias npm=\"cpulimit --limit=\$global__project_power --lazy --include-children npm\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'NodeJS' настроен пакет 'nodejs'"
##
## Unset local vars
unset local__nodejs_version_full
##
## Information about the nodejs source (license, tutorial and other)
## https://nodejs.org/
