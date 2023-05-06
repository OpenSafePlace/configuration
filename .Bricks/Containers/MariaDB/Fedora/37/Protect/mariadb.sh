#!/bin/bash

# General process
## Set passwords
inside 1 root mariadb "mysql -p'${global__project_keys[2]}' -e \"ALTER USER 'public'@'%' IDENTIFIED BY '${global__project_keys_new[4]}';\""
inside 1 root mariadb "mysql -p'${global__project_keys[2]}' -e \"ALTER USER 'root'@'localhost' IDENTIFIED BY '${global__project_keys_new[2]}';\""
##
info "В контейнере 'MariaDB' изменены основные пароли связанные с пакетом 'mariadb'"
