#!/bin/bash

# General process
## Stop process
inside 5 root nodejs 'pkill crond'
##
info "В контейнере 'NodeJS' сервис 'crond' остановлен"
