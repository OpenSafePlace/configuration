#!/bin/bash

local__tigervnc_config=$(cat <<EOF
##
EOF
)

local__tigervnc_xstartup=$(cat <<EOF
#!/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
/etc/X11/xinit/xinitrc
export SHELL=zsh
exec startlxqt
EOF
)

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 1 root $local__container_name_lowercase "dnf install -y tigervnc-server"
inside 1 root $local__container_name_lowercase "mkdir /var/log/vncserver"
inside 1 root $local__container_name_lowercase "touch /var/log/vncserver/run.log"
inside 1 root $local__container_name_lowercase "chmod -c -R 777 /var/log/vncserver"
inside 1 private $local__container_name_lowercase "mkdir /home/private/.vnc"
inside 1 private $local__container_name_lowercase "chmod 700 /home/private/.vnc"
inside 1 private $local__container_name_lowercase "echo -n '$local__tigervnc_config' > /home/private/.vnc/config"
inside 1 private $local__container_name_lowercase "chmod 600 /home/private/.vnc/config"
inside 1 private $local__container_name_lowercase "vncpasswd -f > /home/private/.vnc/passwd <<EOF
${global__project_keys[[c:$local__container_name_lowercase]+[u:private]+[p:vncserver]]}
${global__project_keys[[c:$local__container_name_lowercase]+[u:private]+[p:vncserver]]}
EOF"
inside 1 private $local__container_name_lowercase "chmod 600 /home/private/.vnc/passwd"
inside 1 private $local__container_name_lowercase "echo -n '$local__tigervnc_xstartup' > /home/private/.vnc/xstartup"
inside 1 private $local__container_name_lowercase "chmod 600 /home/private/.vnc/xstartup"
inside 1 private $local__container_name_lowercase "chmod +x /home/private/.vnc/xstartup"
##
## Configure launch
inside 1 private $local__container_name_lowercase "echo 'alias vncserver=\"cpulimit --limit=\$global__project_power --lazy --include-children vncserver\"' >> /home/private/.zsh_alias"
##
info "В контейнере '$local__container_name' настроен пакет 'tigervnc-server'"
##
## Unset local vars
unset local__container_name_lowercase
##
## Information about the package source (license, tutorial and other)
## https://packages.fedoraproject.org/pkgs/tigervnc/tigervnc-server/
