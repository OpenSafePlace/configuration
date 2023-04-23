#!/bin/bash

# General process
## Vars
local__yarn_version_full="1.22.19"
##
## Setup package
inside 2 public code "npm install yarn@${local__yarn_version_full} -g"
##
info "В контейнере 'Code' настроен пакет 'yarn'"
##
## Unset local vars
unset local__yarn_version_full
##
## Information about the yarn source (license, tutorial and other)
## https://yarnpkg.com/, https://classic.yarnpkg.com/
