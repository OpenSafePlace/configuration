#!/bin/bash

# General process
## There should be no '/' at the end
global__project_main_folder="."
##
## Create regular folders
. $global__project_main_folder/.Bricks/Dependencies/regular-folders.sh
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
## Get project config
. $global__project_main_folder/.Bricks/Dependencies/config-get.sh
##
## Check running project
. $global__project_main_folder/.Bricks/Dependencies/check-project.sh
##
## Execute types set
. $global__project_main_folder/.Bricks/Dependencies/types-set-execute.sh
##
## Show current date & time
info "$(date '+%H:%M:%S (%d/%m/%Y)')"
##
space
##
## Command confirmation
##
input "Вы точно хотите удалить проект? (y/n)\n"
input "=> "
##
read -p '' choice
##
space
##
case $choice in
"y")
    continue
    ;;
*)
    info "Процесс остановлен"
    ##
    ## Message exit
    . $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
    ##
    ## Exit with code
    exit 0
    ;;
esac
##
## Just in case, ask again
##
info "Необходимо дополнительно подтвердить действие паролем"
##
## Project check keys
. $global__project_main_folder/.Bricks/Dependencies/keys-get.sh
##
space
##
## Check project
[[ $local__project_key_text == "ОШИБКА" ]] && {
##
## Output warning info
warning "Введен неправильный пароль"
warning "Процесс остановлен"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
info "Общий пароль введен корректно, процесс продолжен"
##
## Create backup
##
space
##
input "Вы хотите создать сжатый и защищенный паролем бекап основных файлов проекта? (y/n)\n"
input "=> "
##
read -p '' choice
##
space
##
case $choice in
"y")
    ##
    ## Application of security reinforcement
    . $global__project_main_folder/.Bricks/Types/$global__project_type/actions/backup.sh
    ##
    space
    ;;
*)
    continue
    ;;
esac
##
## Remove containers, networks and volumes of project
project_os=$global__project_os project_os_lowercase=$(echo $global__project_os | tr '[:upper:]' '[:lower:]') project_os_version=$global__project_os_version podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name down -v --remove-orphans
##
## Delete config file
sh -c "rm -f $global__project_main_folder/.project+settings"
##
## Delete keys file
sh -c "rm -f $global__project_main_folder/.project+keys"
##
## Delete './Logs' data
input "Вы хотите удалить данные размещенные в папке './Logs'? (y/n)\n"
input "=> "
##
read -p '' choice
##
case $choice in
"y")
    sh -c "rm -rf $global__project_main_folder/Logs/*"
    ;;
esac
##
space
##
## Delete './Bridge' data
input "Вы хотите удалить данные размещенные в папке './Bridge'? (y/n)\n"
input "=> "
##
read -p '' choice
##
case $choice in
"y")
    sh -c "rm -rf $global__project_main_folder/Bridge/*"
    ;;
esac
##
## Create regular folders
. $global__project_main_folder/.Bricks/Dependencies/regular-folders.sh
##
space
##
info "Процесс удаления проекта завершен"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 0
