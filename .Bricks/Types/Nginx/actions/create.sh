#!/bin/bash

local__modsecurity_config=$(cat <<EOF
Include /etc/nginx/modsecurity.conf
Include "/etc/nginx/modsecurity/coreruleset/crs-setup.conf"
Include "/etc/nginx/modsecurity/coreruleset/rules/*.conf"
SecAuditLog /var/log/nginx/modsec_audit.log
SecRuleEngine On
SecDebugLogLevel 9
SecAuditLogParts ABCEFHJKZ
SecResponseBodyAccess On
SecAction "id:900000, phase:1, nolog, pass, t:none, setvar:tx.paranoia_level=2"
SecAction "id:900001, phase:1, nolog, pass, t:none, setvar:tx.executing_paranoia_level=2"
SecAction "id:900110, phase:1, nolog, pass, t:none, setvar:tx.inbound_anomaly_score_threshold=5, setvar:tx.outbound_anomaly_score_threshold=4"
SecAction "id:900100, phase:1, nolog, pass, t:none, setvar:tx.critical_anomaly_score=5, setvar:tx.error_anomaly_score=4, setvar:tx.warning_anomaly_score=3, setvar:tx.notice_anomaly_score=2"
SecAction "id:900700, phase:1, nolog, pass, t:none, setvar:'tx.dos_burst_time_slice=60', setvar:'tx.dos_counter_threshold=100', setvar:'tx.dos_block_timeout=600'"
SecAction "id:900200, phase:1, nolog, pass, t:none, setvar:'tx.allowed_methods=GET POST'"
SecAction "id:900300, phase:1, nolog, pass, t:none, setvar:tx.max_num_args=20"
SecAction "id:900310, phase:1, nolog, pass, t:none, setvar:tx.arg_name_length=20"
SecAction "id:900320, phase:1, nolog, pass, t:none, setvar:tx.arg_length=20"
SecAction "id:900950, phase:1, nolog, pass, t:none, setvar:tx.crs_validate_utf8_encoding=1"
SecAction "id:900010, phase:1, nolog, pass, t:none, setvar:tx.enforce_bodyproc_urlencoded=1"
EOF
)

local__nginx_config=$(cat <<EOF
user nginx;
worker_processes auto;
error_log /var/log/nginx/error.log info;
pid /run/nginx.pid;

include /usr/share/nginx/modules/mod-modsecurity.conf;

events {
    worker_connections 1024;
}

http {
    log_format main "'\\\$remote_addr - \\\$remote_user' [\$time_local] '\\\$request' '\\\$status' '\\\$body_bytes_sent' '\\\$http_referer' '\\\$http_user_agent' '\\\$http_x_forwarded_for'";

    access_log /var/log/nginx/access.log main;

    sendfile on;
    tcp_nopush on;
    keepalive_timeout 65;
    types_hash_max_size 4096;

    include /etc/nginx/mime.types;
    default_type application/octet-stream;
    
    map \$http_user_agent \$bad_client {
        default 0;
        "~*^wget" 1;
        "~*^curl" 1;
    }

    server {
        listen 10100 ssl http2;
        listen [::]:10100 ssl http2;
        server_name server;
        
        charset utf-8;
        
        add_header Strict-Transport-Security "max-age=31536000; includeSubDomains" always;
        add_header Content-Security-Policy "default-src https://localhost:10100; font-src https://localhost:10100; script-src https://localhost:10100; img-src https://localhost:10100; style-src https://localhost:10100;" always;
        add_header X-XSS-Protection "1; mode=block";
        add_header X-Frame-Options "DENY";
        add_header X-Content-Type-Options "nosniff";
        add_header Referrer-Policy "no-referrer";
        add_header Permissions-Policy "geolocation=(); midi=(); notifications=(); push=(); sync-xhr=(); accelerometer=(); gyroscope=(); magnetometer=(); payment=(); usb=(); vr=(); camera=(); microphone=(); speaker=(); vibrate=(); ambient-light-sensor=(); autoplay=(); encrypted-media=(); execute-clipboard=(); document-domain=(); fullscreen=(); imagecapture=(); lazyload=(); legacy-image-formats=(); oversized-images=(); unoptimized-lossy-images=(); unoptimized-lossless-images=(); unsized-media=(); vertical-scroll=(); web-share=(); xr-spatial-tracking=();";

        modsecurity on;
        modsecurity_rules_file /etc/nginx/modsecurity/main.conf;

        ssl_certificate "/etc/pki/nginx/server.crt";
        ssl_certificate_key "/etc/pki/nginx/private/server.key";
        ssl_session_cache none;
        ssl_ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384:DHE-RSA-CHACHA20-POLY1305;
        ssl_prefer_server_ciphers on;
        ssl_protocols TLSv1.3;
        ssl_stapling on;
        ssl_stapling_verify on;
        
        error_page 497 https://\$host:\$server_port\$request_uri;
        
        auth_basic "Требуется вход";
        auth_basic_user_file /etc/nginx/.htpasswd;
        
        gzip on;
        gzip_proxied any;
	gzip_min_length 100;
	gzip_vary on;
	gzip_proxied expired no-cache no-store private auth;
	gzip_types text/css text/javascript text/xml text/plain text/x-component application/javascript application/json application/xml application/rss+xml font/truetype font/opentype application/vnd.ms-fontobject image/svg+xml;
	gzip_disable "msie6";
	gzip_comp_level 4;
	gzip_buffers 16 8k;
	gzip_http_version 1.1;
	
	expires off;
        
        location / {
          if (\$request_method !~ ^(GET|POST)$ ) { return 403; }
	  if (\$bad_client) { return 403; }
	}
   }

}
EOF
)

# General process
## Name of the Linux distribution (must begin with a capital letter)
global__project_os="Fedora"
##
## Version of the Linux distribution (numbers only)
global__project_os_version="37"
##
## Power management ('highest' or 'high' or 'medium' or 'low' or 'lowest')
global__project_power="high"
##
## Create keys
global__project_keys=(
    ["[c:nginx]+[u:private]+[p:sudo]"]=$(openssl rand -base64 33)
    ["[c:nginx]+[u:private]+[p:htpasswd]"]=$(openssl rand -base64 33)
)
##
## Create new containers, networks and volumes
project_name=$global__project_name project_os=$global__project_os project_os_lowercase=$(echo $global__project_os | tr '[:upper:]' '[:lower:]') project_os_version=$global__project_os_version project_display=$global__project_display podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name up --build -d
##
## Install and configure packages
##
## Container #1
local__container_name="Nginx"
##
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Certificates/custom.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/config-manager.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Repositories/Enable/fedora.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Repositories/Enable/fedora-cisco-openh264.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Repositories/Enable/fedora-modular.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Repositories/Enable/updates.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Repositories/Enable/updates-modular.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Repositories/upgrade-minor.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/util-linux-user.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/system-upgrade.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/procps-ng.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/openssl.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Users/root.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Users/private.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/tzdata.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Timezones/minsk.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/sudo.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/zsh.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/mv.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/cp.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/rm.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/cat.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/du.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/cpulimit.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/iptables.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/nano.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/wget.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/zip.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/unzip.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/git.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/catimg.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/htop.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/tree.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/ripgrep.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/lsof.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/clamav.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/httpd-tools.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/nginx.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/nginx-mod-modsecurity.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/coreruleset=3.3.5.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Setup/clean.sh
##
space
##
## Close all ports
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Firewall/Outgoing/Close/all.sh
. $global__project_main_folder/.Bricks/Containers/Nginx/$global__project_os/$global__project_os_version/Firewall/Incoming/Close/10100.sh
