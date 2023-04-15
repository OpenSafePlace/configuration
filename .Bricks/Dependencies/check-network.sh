#!/bin/bash

# General process
## Check network
(ping -c 1 yandex.by &>/dev/null) && echo 'Network worked' || {
##
## Output warning info
warning "Отсутствует подключение к интернету"
warning "Без него разворачивание проекта невозможно"
warning "Процесс остановлен"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
