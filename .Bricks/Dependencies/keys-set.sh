#!/bin/bash

# General process
## Create general pass for all project keys
info "Создание нового общего пароля для всех ключей проекта"
##
space
##
## Enter general pass
input "Введите новый общий пароль от проекта\n"
input "=> "
##
read -p '' choice
##
## Apply new keys
[[ "${choice}" == "" ]] && {
##
## Output warning info
space
##
warning "Пустой пароль не допускается"
##
## Generate new general pass
choice=$(openssl rand -base64 33)
##
warning "Используйте => ['$choice']"
}
##
space
##
info "Рекомендуется записать пароль"
##
## Create project file with encrypted keys
sh -c "touch $global__project_main_folder/.project+keys"
sh -c "chmod 600 ./.project+keys"
##
echo $(echo "${!global__project_keys[@]}" | openssl enc -aes-256-cfb -md sha512 -pbkdf2 -iter 900000 -salt -k $choice | openssl base64 | tr -d '\n') > $global__project_main_folder/.project+keys
echo $(echo "${global__project_keys[@]}" | openssl enc -aes-256-cfb -md sha512 -pbkdf2 -iter 900000 -salt -k $choice | openssl base64 | tr -d '\n') >> $global__project_main_folder/.project+keys
##
## Unset local vars
unset global__project_keys
unset global__project_keys_titles
