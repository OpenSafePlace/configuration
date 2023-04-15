#!/bin/bash

# General process
## Vars
local__python_version_full="3.10.11"
local__python_version_short="3.10"
##
## Setup package
inside 1 root python "dnf install -y tar gcc openssl-devel libffi-devel zlib-devel"
inside 1 root python "cd /tmp/ && wget https://www.python.org/ftp/python/${local__python_version_full}/Python-${local__python_version_full}.tgz"
inside 1 root python "cd /tmp/ && tar xzf Python-${local__python_version_full}.tgz"
inside 1 root python "cd /tmp/Python-${local__python_version_full} && ./configure --with-system-ffi --with-computed-gotos --enable-loadable-sqlite-extensions"
inside 1 root python "cd /tmp/Python-${local__python_version_full} && make -j $global__project_cpu"
inside 1 root python "cd /tmp/Python-${local__python_version_full} && make altinstall"
inside 1 root python "python${local__python_version_short} --version"
inside 1 root python "pip${local__python_version_short} --version"
##
## Configure launch
inside 1 public python "echo 'alias python=\"cpulimit --limit=\$global__project_power --lazy --include-children python${local__python_version_short}\"' >> /home/public/.zsh_alias"
inside 1 public python "echo 'alias pip=\"cpulimit --limit=\$global__project_power --lazy --include-children pip${local__python_version_short}\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Python' настроен пакет 'python'"
##
## Information about the python source (license, tutorial and other)
## https://www.python.org/
