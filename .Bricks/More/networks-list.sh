#!/bin/bash

# General process
## Show networks list
info "Список сетей"
##
space
##
space_null
##
## Output list networks
docker network ls >&3
##
space_null
