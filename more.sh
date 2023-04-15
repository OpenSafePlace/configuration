#!/bin/bash

# General process
## There should be no '/' at the end
global__project_main_folder="."
##
## Output threads
. $global__project_main_folder/.Bricks/Dependencies/use-log.sh
##
## Messages types set
. $global__project_main_folder/.Bricks/Dependencies/types-set-message.sh
##
## Check installed packages
. $global__project_main_folder/.Bricks/Dependencies/check-packages.sh
##
## Execute types set
. $global__project_main_folder/.Bricks/Dependencies/types-set-execute.sh
##
## Show current date & time
info "$(date '+%H:%M:%S (%d/%m/%Y)')"
##
space
##
info "Менеджер контейнеров"
##
space
##
input "Список действий:\n"
input "1. Просмотреть монитор контейнеров\n"
input "2. Просмотреть короткую информацию\n"
input "3. Просмотреть полную информацию\n"
input "4. Просмотреть список контейнеров\n"
input "5. Просмотреть список изображений\n"
input "6. Просмотреть список сетей\n"
input "7. Просмотреть список томов\n"
input "8. Остановить все контейнеры\n"
input "9. Удалить определенный другой проект\n"
input "10. Удалить все проекты\n"
input "11. Выйти\n"
input "=> "
##
read -p '' choice
##
case $choice in
"1")
    space
    ##
    . $global__project_main_folder/.Bricks/More/monitor.sh
    ;;
"2")
    space
    ##
    . $global__project_main_folder/.Bricks/More/info-short.sh
    ;;
"3")
    space
    ##
    . $global__project_main_folder/.Bricks/More/info-full.sh
    ;;
"4")
    space
    ##
    . $global__project_main_folder/.Bricks/More/container-list.sh
    ;;
"5")
    space
    ##
    . $global__project_main_folder/.Bricks/More/image-list.sh
    ;;
"6")
    space
    ##
    . $global__project_main_folder/.Bricks/More/networks-list.sh
    ;;
"7")
    space
    ##
    . $global__project_main_folder/.Bricks/More/volumes-list.sh
    ;;
"8")
    space
    ##
    . $global__project_main_folder/.Bricks/More/stop-hard.sh
    ;;
"9")
    space
    ##
    . $global__project_main_folder/.Bricks/More/remove-special.sh
    ;;
"10")
    space
    ##
    . $global__project_main_folder/.Bricks/More/remove-all.sh
    ;;
esac
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 0
