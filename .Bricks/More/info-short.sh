#!/bin/bash

# General process
## Show short information
info "Короткая информация"
##
space_null
##
## Output disk usage
docker system df >&3
##
space_null
##
## Output all containers
docker ps -a >&3
##
space_null
