#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
local__coreruleset_version_full="3.3.5"
local__coreruleset_hash="001f9afe25f479dd988aaec1a4a2c0197b2d27e00d2cd10b70892e4889b399259cd0655f42a96965ae655855abdb7f9d8295c225ae17bf1e47361b70232633e5"
##
## Setup package
inside 1 private $local__container_name_lowercase "cd /tmp/ && wget https://github.com/coreruleset/coreruleset/archive/refs/tags/v${local__coreruleset_version_full}.tar.gz"

[[ $local__coreruleset_hash == $(inside 14 private $local__container_name_lowercase "cd /tmp/ && sha512sum v${local__coreruleset_version_full}.tar.gz | cut -d' ' -f1 | tr -d '\n'") ]] && {
inside 1 private $local__container_name_lowercase "cd /tmp/ && tar -xvf /tmp/v${local__coreruleset_version_full}.tar.gz"
inside 1 root $local__container_name_lowercase "mkdir -p /etc/nginx/modsecurity/coreruleset"
inside 1 root $local__container_name_lowercase "mv /tmp/coreruleset-${local__coreruleset_version_full}/* /etc/nginx/modsecurity/coreruleset"
inside 1 root $local__container_name_lowercase "cp /etc/nginx/modsecurity/coreruleset/crs-setup.conf.example /etc/nginx/modsecurity/coreruleset/crs-setup.conf"
##
info "В контейнере '$local__container_name' настроен пакет 'coreruleset'"
} || {
warning "В контейнере '$local__container_name' обнаружено несоответствие хеша файла 'coreruleset-v${local__coreruleset_version_full}.tar.gz'"
warning "В контейнере '$local__container_name' НЕ настроен пакет 'coreruleset"
}

##
## Unset local vars
unset local__container_name_lowercase
unset local__coreruleset_version_full
unset local__coreruleset_hash
##
## Information about the coreruleset source (license, tutorial and other)
## https://coreruleset.org/
