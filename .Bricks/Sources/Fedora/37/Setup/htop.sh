#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 1 root $local__container_name_lowercase "dnf install -y htop"
##
## Configure htop
inside 1 private $local__container_name_lowercase "mkdir -p /home/private/.config/htop"
inside 1 private $local__container_name_lowercase "echo -n '' > /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"htop_version=\$(htop -V)\" > /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"config_reader_min_version=3\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"fields=0 48 18 2 46 47 1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"hide_kernel_threads=1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"hide_userland_threads=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"hide_running_in_container=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"shadow_other_users=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"show_thread_names=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"show_program_path=1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"highlight_base_name=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"highlight_deleted_exe=1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"shadow_distribution_path_prefix=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"highlight_megabytes=1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"highlight_threads=1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"highlight_changes=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"highlight_changes_delay_secs=5\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"find_comm_in_cmdline=1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"strip_exe_from_cmdline=1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"show_merged_command=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"header_margin=1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"screen_tabs=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"detailed_cpu_time=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"cpu_count_from_one=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"show_cpu_usage=1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"show_cpu_frequency=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"show_cpu_temperature=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"degree_fahrenheit=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"update_process_names=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"account_guest_in_cpu_meter=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"color_scheme=1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"enable_mouse=1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"delay=10\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"hide_function_bar=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"header_layout=two_50_50\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"column_meters_0=AllCPUs2 CPU\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"column_meter_modes_0=1 1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"column_meters_1=Memory Swap DiskIO NetworkIO Clock Date Uptime Battery Hostname Tasks\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"column_meter_modes_1=1 1 1 1 2 2 2 2 2 2\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"tree_view=1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"sort_key=46\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"tree_sort_key=46\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"sort_direction=-1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"tree_sort_direction=-1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"tree_view_always_by_pid=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"all_branches_collapsed=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \"screen:Main=PID USER NICE STATE PERCENT_CPU PERCENT_MEM Command\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \".sort_key=PERCENT_CPU\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \".tree_sort_key=PERCENT_CPU\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \".tree_view=1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \".tree_view_always_by_pid=0\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \".sort_direction=-1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \".tree_sort_direction=-1\" >> /home/private/.config/htop/htoprc"
inside 1 private $local__container_name_lowercase "echo \".all_branches_collapsed=0\" >> /home/private/.config/htop/htoprc"
##
## Configure launch
inside 1 private $local__container_name_lowercase "echo 'alias htop=\"cpulimit --limit=\$global__project_power --lazy --include-children htop --no-color --delay=10 --tree --sort-key=PERCENT_CPU\"' >> /home/private/.zsh_alias"
##
## Security
inside 1 private $local__container_name_lowercase "chmod 700 -R /home/private/.config/htop"
##
info "В контейнере '$local__container_name' настроен пакет 'htop'"
##
## Unset local vars
unset local__container_name_lowercase
##
## Information about the package source (license, tutorial and other)
## https://packages.fedoraproject.org/pkgs/htop/htop/
