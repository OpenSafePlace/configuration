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
## Count keys
global__project_keys_count=$((${#global__project_keys[@]}/2))
##
## Create project file with encrypted keys
touch $global__project_main_folder/.project+keys
##
echo "project_keys_count=\"$global__project_keys_count\"" > $global__project_main_folder/.project+keys
##
for i in $(seq 0 $(($global__project_keys_count-1)))
do
##
local__project_key_text_enc=$(echo ${global__project_keys[$i]} | openssl enc -aes-256-cfb -md sha512 -pbkdf2 -iter 900000 -salt -k $choice | openssl base64 | tr -d '\n')
local__project_key_info=${global__project_keys[$(($i+1))]}
##
## Add encrypted keys to file
echo "project_keys_$(($i+1))_text=\"$local__project_key_text_enc\"" >> $global__project_main_folder/.project+keys
echo "project_keys_$(($i+1))_info=\"$local__project_key_info\"" >> $global__project_main_folder/.project+keys
##
done
##
## Unset local vars
unset local__project_key_text_enc
unset local__project_key_info
