#!/bin/bash

# General process
## Select the project operation mode
input "Список режимов работы проекта:\n"
input "1. Предел мощности, предел потребления ресурсов\n"
input "2. Максимальная производительность, низкая экономия ресурсов\n"
input "3. Средняя производительность, средняя экономия ресурсов\n"
input "4. Низкая производительность, высокая экономия ресурсов\n"
input "5. Предельно низкая производительность, максимальная экономия ресурсов\n"
input "6. Выйти\n"
input "=> "
##
read -p '' choice
##
case $choice in
"1")
    space
    ##
    . $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Power/highest.sh
    ;;
"2")
    space
    ##
    . $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Power/high.sh
    ;;
"3")
    space
    ##
    . $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Power/medium.sh
    ;;
"4")
    space
    ##
    . $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Power/low.sh
    ;;
"5")
    space
    ##
    . $project_main_folder/.Bricks/Containers/Base/$global__project_os/$global__project_os_version/Power/lowest.sh
    ;;
*)
    ##
    ## Message exit
    . $project_main_folder/.Bricks/Dependencies/message-exit.sh
    ##
    ## Exit with code
    exit 0
    ;;
esac
