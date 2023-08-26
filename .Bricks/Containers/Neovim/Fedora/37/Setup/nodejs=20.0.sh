#!/bin/bash

# General process
## Vars
local__nodejs_version_full="20.0.0"
local__host_cpu_type=$global__project_host_cpu_type
##
[[ $global__project_host_cpu_type == 'x86_64' ]] &&
local__host_cpu_type="x64"
##
## Setup package
inside 1 root neovim "dnf install -y tar xz"
inside 1 public neovim "mkdir -p /tmp/nodejs /home/public/.local/lib/nodejs"
inside 1 public neovim "curl -L -o /tmp/node-v${local__nodejs_version_full}-linux-${local__host_cpu_type}.tar.xz https://nodejs.org/dist/v${local__nodejs_version_full}/node-v${local__nodejs_version_full}-linux-${local__host_cpu_type}.tar.xz"
inside 1 public neovim "tar -xJvf /tmp/node-v${local__nodejs_version_full}-linux-${local__host_cpu_type}.tar.xz -C /tmp/nodejs"
inside 1 public neovim "mv /tmp/nodejs/node-v${local__nodejs_version_full}-linux-${local__host_cpu_type}/* /home/public/.local/lib/nodejs"
inside 1 public neovim "echo 'export PATH=\$PATH:/home/public/.local/lib/nodejs/bin' >> /home/public/.zshrc"
##
## Configure launch
inside 1 public neovim "echo 'alias node=\"cpulimit --limit=\$global__project_power --lazy --include-children node\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'nodejs'"
##
## Unset local vars
unset local__nodejs_version_full
unset local__host_cpu_type
##
## Information about the nodejs source (license, tutorial and other)
## https://nodejs.org/
