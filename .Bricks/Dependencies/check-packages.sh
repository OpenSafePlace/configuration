#!/bin/bash

# General process
## Check podman package
(podman -v &>/dev/null) || {
##
## Output warning info
warning "Пакет 'podman' не установлен"
warning "Без него работа проекта невозможна"
warning "Процесс остановлен"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Check podman-compose package
(podman-compose -v &>/dev/null) || {
##
## Output warning info
warning "Пакет 'podman-compose' не установлен"
warning "Без него работа проекта невозможна"
warning "Процесс остановлен"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
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
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
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
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
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
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Check podman package
(podman ps -a &>/dev/null) || {
##
## Output warning info
warning "Пакет 'podman' не запущен"
warning "Без него работа проекта невозможна"
warning "Процесс остановлен"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
