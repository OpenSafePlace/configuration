#!/bin/bash

# General process
## Setup package
inside 1 root mariadb "dnf install -y mariadb-server"
##
## Configure package
inside 1 root mariadb "mkdir -p /var/log/mariadb"
inside 1 root mariadb "chmod -R 777 /var/log/mariadb"
inside 1 root mariadb "echo -n '' > /var/log/mariadb/general.log"
inside 1 root mariadb "echo -n '' > /var/log/mariadb/mariadb.log"
inside 1 root mariadb "echo -n '' > /var/log/mariadb/slow_query.log"
inside 1 root mariadb "echo -n '' > /var/log/mariadb/run.log"
inside 1 root mariadb "chmod -R 777 /var/log/mariadb"
inside 1 root mariadb 'mkdir -p /etc/my.cnf.d && echo "
[mysqld]
user=root
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
inside 1 root mariadb "mysql_install_db"
inside 5 root mariadb "mysqld_safe >> /var/log/mariadb/run.log"
inside 1 root mariadb "mysql -e \"DROP USER IF EXISTS ''@'mariadb';\""
inside 1 root mariadb "mysql -e \"DROP USER IF EXISTS ''@'localhost';\""
inside 1 root mariadb "mysql -e \"DROP DATABASE IF EXISTS test;\""
inside 1 root mariadb "mysql -e \"CREATE DATABASE base;\""
inside 1 root mariadb "mysql -e \"CREATE USER 'public'@'%' IDENTIFIED BY '${global__project_keys[4]}';\""
inside 1 root mariadb "mysql -e \"GRANT ALL PRIVILEGES ON base.* TO 'public'@'%' WITH GRANT OPTION;\""
inside 1 root mariadb "mysql -e \"FLUSH PRIVILEGES;\""
inside 1 root mariadb "mysql -e \"ALTER USER 'root'@'localhost' IDENTIFIED BY '${global__project_keys[2]}';\""
inside 1 root mariadb "pkill -QUIT mariadbd"
##
info "В контейнере 'MariaDB' настроен пакет 'mariadb'"
