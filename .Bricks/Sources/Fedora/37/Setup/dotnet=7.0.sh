#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
local__dotnet_version_short="7.0"
local__dotnet_hash="2788200b75446cdd267dbc86595f9ba45368d898db18f6774ea4c1d760d2087d5eb2a61de79472609d9c1cee558e3616a32a79c041068f32ebfaed94f9d5f4a8"
##
## Setup package
inside 1 private $local__container_name_lowercase "cd /tmp/ && wget https://dot.net/v1/dotnet-install.sh"

[[ $local__dotnet_hash == $(inside 14 private $local__container_name_lowercase "cd /tmp/ && sha512sum dotnet-install.sh | cut -d' ' -f1 | tr -d '\n'") ]] && {
inside 1 root $local__container_name_lowercase "dnf install -y krb5-libs libicu openssl-libs zlib"
inside 1 private $local__container_name_lowercase "cd /tmp/ && chmod +x dotnet-install.sh"
inside 1 private $local__container_name_lowercase "cd /tmp/ && ./dotnet-install.sh --channel $local__dotnet_version_short"
inside 1 private $local__container_name_lowercase "/home/private/.dotnet/dotnet --version"
inside 1 private $local__container_name_lowercase "echo 'export DOTNET_ROOT=/home/private/.dotnet' >> /home/private/.zshrc"
##
## Configure launch
inside 1 private $local__container_name_lowercase "echo 'alias dotnet=\"cpulimit --limit=\$global__project_power --lazy --include-children /home/private/.dotnet/dotnet\"' >> /home/private/.zsh_alias"
##
info "В контейнере '$local__container_name' настроен пакет 'dotnet'"
} || {
warning "В контейнере '$local__container_name' обнаружено несоответствие хеша файла 'dotnet-install.sh'"
warning "В контейнере '$local__container_name' НЕ настроен пакет 'dotnet"
}

##
## Unset local vars
unset local__container_name_lowercase
unset local__dotnet_version_short
unset local__dotnet_hash
##
## Information about the dotnet source (license, tutorial and other)
## https://dotnet.microsoft.com/
