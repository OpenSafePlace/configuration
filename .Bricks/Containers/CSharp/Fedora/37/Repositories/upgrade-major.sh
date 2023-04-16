#!/bin/bash

# General process
## Major upgrade OS
##
## Show the status of the container before
local__project_new_os_version=$((global__project_os_version+1))
##
[[ ! -d $global__project_main_folder/.Bricks/Containers/CSharp/$global__project_os/$local__project_new_os_version ]] && {
##
## Output warning info
warning "Конфигурация не подготовлена к обновлению контейнера 'CSharp' до версии '$local__project_new_os_version'"
warning "Возможно у вас не крайняя версия конфигурации"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
input "Вы точно хотите обновить контейнер 'CSharp' с версии '$global__project_os_version' до версии '$local__project_new_os_version'? (y/n)\n"
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
info "Ожидайте..."
##
## Update OS version in project config file
global__project_os_version=$local__project_new_os_version
##
## Show the status of the container before
inside 1 root csharp "source /etc/os-release && echo \$PRETTY_NAME"
##
## Upgrade OS
inside 1 root csharp "dnf upgrade --refresh -y"
inside 1 root csharp "dnf install 'dnf-command(system-upgrade)'"
inside 1 root csharp "dnf system-upgrade download --releasever=$local__project_new_os_version -y"
inside 1 root csharp "dnf system-upgrade reboot"
inside 1 root csharp "dnf system-upgrade upgrade"
inside 1 root csharp "dnf upgrade --refresh -y"
##
## Show the status of the container after
inside 1 root csharp "source /etc/os-release && echo \$PRETTY_NAME"
##
space
##
info "В контейнере 'CSharp' все пакеты обновлены"
##
## Unset local vars
unset local__project_new_os_version
