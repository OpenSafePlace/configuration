#!/bin/bash

# General process
## Check docker package
(docker -v &>/dev/null) || {
##
## Output warning info
warning "Пакет 'docker' не установлен"
warning "Без него работа проекта невозможна"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Check docker-compose package
(docker-compose -v &>/dev/null) || {
##
## Output warning info
warning "Пакет 'docker-compose' не установлен"
warning "Без него работа проекта невозможна"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Check zip package
(zip -v &>/dev/null) || {
##
## Output warning info
warning "Пакет 'zip' не установлен"
warning "Без него работа проекта невозможна"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Check unzip package
(unzip -v &>/dev/null) || {
##
## Output warning info
warning "Пакет 'unzip' не установлен"
warning "Без него работа проекта невозможна"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Check docker-compose package
($(docker-compose -v \| cut -c 24-24) == "1") 2> /dev/null || {
##
## Output warning info
warning "Требуется 'docker-compose' v1"
warning "Без него работа проекта невозможна"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Check openssl package
(openssl version &>/dev/null) || {
##
## Output warning info
warning "Пакет 'libressl' или 'openssl' не установлен"
warning "Без него работа проекта невозможна"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Check docker package
(docker ps -a &>/dev/null) || {
##
## Output warning info
warning "Пакет 'docker' не запущен"
warning "Без него работа проекта невозможна"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
