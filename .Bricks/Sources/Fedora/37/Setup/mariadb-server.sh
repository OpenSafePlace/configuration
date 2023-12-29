#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 1 root $local__container_name_lowercase "dnf install -y mariadb-server"
##
## Configure package
inside 1 mysql $local__container_name_lowercase "touch /var/log/mariadb/general.log"
inside 1 mysql $local__container_name_lowercase "touch /var/log/mariadb/mariadb.log"
inside 1 mysql $local__container_name_lowercase "touch /var/log/mariadb/slow_query.log"
inside 1 mysql $local__container_name_lowercase "touch /var/log/mariadb/run.log"
inside 1 root $local__container_name_lowercase 'echo "
[mysqld]
user=mysql
port=3306
bind-address=mariadb
log_output=\"TABLE\"
general_log=\"ON\"
general_log_file=/var/log/mariadb/general.log
slow_query_log=\"ON\"
slow_query_log_file=/var/log/mariadb/slow_query.log
datadir=/var/lib/mysql
socket=/var/lib/mysql/mysql.sock
log-error=/var/log/mariadb/mariadb.log
pid-file=/run/mariadb/mariadb.pid
" > /etc/my.cnf.d/mariadb-server.cnf'
inside 1 root $local__container_name_lowercase "mysql_install_db"
inside 5 mysql $local__container_name_lowercase "mysqld_safe >> /var/log/mariadb/run.log"
inside 1 root $local__container_name_lowercase "mysql -e \"DROP USER IF EXISTS ''@'mariadb';\""
inside 1 root $local__container_name_lowercase "mysql -e \"DROP USER IF EXISTS ''@'localhost';\""
inside 1 root $local__container_name_lowercase "mysql -e \"DROP USER IF EXISTS 'mysql'@'localhost';\""
inside 1 root $local__container_name_lowercase "mysql -e \"DROP DATABASE IF EXISTS test;\""
inside 1 root $local__container_name_lowercase "mysql -e \"CREATE DATABASE base;\""
inside 13 root $local__container_name_lowercase "mysql -e \"CREATE USER 'private'@'%' IDENTIFIED BY '${global__project_keys[[c:$local__container_name_lowercase]+[u:private]+[p:mysql]]}';\""
inside 1 root $local__container_name_lowercase "mysql -e \"GRANT ALL PRIVILEGES ON base.* TO 'private'@'%' WITH GRANT OPTION;\""
inside 1 root $local__container_name_lowercase "mysql -e \"FLUSH PRIVILEGES;\""
inside 1 root $local__container_name_lowercase "mysqlcheck --repair --all-databases"
inside 1 mysql $local__container_name_lowercase "pkill -QUIT mariadbd"
##
## Security
inside 1 root $local__container_name_lowercase "chown -c -R mysql:mysql /var/log/mariadb"
inside 1 root $local__container_name_lowercase "chmod -c -R 774 /var/log/mariadb"
##
## Configure launch
##
info "В контейнере '$local__container_name' настроен пакет 'mariadb'"
##
## Unset local vars
unset local__container_name_lowercase
