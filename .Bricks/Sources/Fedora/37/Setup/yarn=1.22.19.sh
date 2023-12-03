#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
local__yarn_version_full="1.22.19"
##
## Setup package
inside 2 private $local__container_name_lowercase "npm install yarn@${local__yarn_version_full} -g"
##
info "В контейнере '$local__container_name' настроен пакет 'yarn'"
##
## Unset local vars
unset local__container_name_lowercase
unset local__yarn_version_full
##
## Information about the yarn source (license, tutorial and other)
## https://yarnpkg.com/, https://classic.yarnpkg.com/
