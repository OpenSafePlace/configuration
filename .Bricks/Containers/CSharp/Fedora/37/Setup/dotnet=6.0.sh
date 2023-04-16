#!/bin/bash

# General process
## Vars
local__dotnet_version_short="6.0"
##
## Setup package
inside 1 root csharp "dnf install -y krb5-libs libicu openssl-libs zlib tar"
inside 1 public csharp "cd /tmp/ && wget https://dot.net/v1/dotnet-install.sh"
inside 1 root csharp "cd /tmp/ && chmod +x dotnet-install.sh"
inside 1 public csharp "cd /tmp/ && ./dotnet-install.sh --channel $local__dotnet_version_short"
inside 1 public csharp "/home/public/.dotnet/dotnet --version"
##
## Configure launch
inside 1 public csharp "echo 'alias dotnet=\"cpulimit --limit=\$global__project_power --lazy --include-children /home/public/.dotnet/dotnet\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'CSharp' настроен пакет 'dotnet'"
##
## Unset local vars
unset local__dotnet_version_short
##
## Information about the dotnet source (license, tutorial and other)
## https://dotnet.microsoft.com/
