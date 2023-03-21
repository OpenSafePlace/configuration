#!/bin/bash

# General process
## Create a configuration project config file (outside)
touch $project_main_folder/.project+settings
echo "project_name=\"$global__project_name\"" > $project_main_folder/.project+settings
echo "project_type=\"$global__project_type\"" >> $project_main_folder/.project+settings
echo "project_gui=\"$global__project_gui\"" >> $project_main_folder/.project+settings
echo "project_beep=\"$global__project_beep\"" >> $project_main_folder/.project+settings
echo "project_power=\"$global__project_power\"" >> $project_main_folder/.project+settings
echo "project_os=\"$global__project_os\"" >> $project_main_folder/.project+settings
echo "project_os_version=\"$global__project_os_version\"" >> $project_main_folder/.project+settings
echo "project_create_time=\"$global__project_create_time\"" >> $project_main_folder/.project+settings
echo "project_host_os_type=\"$global__project_host_os_type\"" >> $project_main_folder/.project+settings
echo "project_host_cpu_type=\"$global__project_host_cpu_type\"" >> $project_main_folder/.project+settings
echo "project_host_docker_sock=\"$global__project_host_docker_sock\"" >> $project_main_folder/.project+settings
echo "project_containers_count_all=\"$global__project_containers_count_all\"" >> $project_main_folder/.project+settings
##
## Create a configuration project config file (inside)
inside 1 public base "echo -n '' > /home/public/.zsh_params"
##
[[ $global__project_power == "highest" ]] &&
inside 1 public base "echo -n 'export global__project_power=\$(echo '\$((\$(nproc --all) * 100))')' >> /home/public/.zsh_params"
##
[[ $global__project_power == "high" ]] &&
inside 1 public base "echo -n 'export global__project_power=\$(echo '\$((\$(nproc --all) * (1 * 100 / 3 * 3)))')' >> /home/public/.zsh_params"
##
[[ $global__project_power == "medium" ]] &&
inside 1 public base "echo -n 'export global__project_power=\$(echo '\$((\$(nproc --all) * (1 * 100 / 3 * 2)))')' >> /home/public/.zsh_params"
##
[[ $global__project_power == "low" ]] &&
inside 1 public base "echo -n 'export global__project_power=\$(echo '\$((\$(nproc --all) * (1 * 100 / 3 * 1)))')' >> /home/public/.zsh_params"
##
[[ $global__project_power == "lowest" ]] &&
inside 1 public base "echo -n 'export global__project_power=\$(echo '\$((\$(nproc --all) * 8))')' >> /home/public/.zsh_params"
