#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Get power percent
[[ $global__project_power == "highest" ]] &&
local__project_power_percent=$(($global__project_cpu_cores_count * 100))
##
[[ $global__project_power == "high" ]] &&
local__project_power_percent=$(($global__project_cpu_cores_count * (1 * 100 / 3 * 3)))
##
[[ $global__project_power == "medium" ]] &&
local__project_power_percent=$(($global__project_cpu_cores_count * (1 * 100 / 3 * 2)))
##
[[ $global__project_power == "low" ]] &&
local__project_power_percent=$(($global__project_cpu_cores_count * (1 * 100 / 3 * 1)))
##
[[ $global__project_power == "lowest" ]] &&
local__project_power_percent=$(($global__project_cpu_cores_count * 8))
##
## Setup packages
inside 1 root $local__container_name_lowercase "dnf install -y zsh zsh-syntax-highlighting zsh-autosuggestions"
##
## Configure zsh
inside 1 private $local__container_name_lowercase "echo -n '' > /home/private/.zsh_params"
inside 1 private $local__container_name_lowercase "echo 'export global__project_power=$(($global__project_cpu_cores_count * 100))' >> /home/private/.zsh_params"
inside 1 private $local__container_name_lowercase "echo -n '' > /home/private/.zsh_alias"
inside 1 private $local__container_name_lowercase "echo 'alias neofetch=\"echo '' && neofetch --stdout\"' >> /home/private/.zsh_alias"
inside 1 private $local__container_name_lowercase "echo 'alias ls=\"ls --color=none -p --group-directories-first -X\"' >> /home/private/.zsh_alias"
inside 1 private $local__container_name_lowercase "echo 'alias grep=\"grep --color=none\"' >> /home/private/.zsh_alias"
inside 1 private $local__container_name_lowercase "echo 'alias fgrep=\"fgrep --color=none\"' >> /home/private/.zsh_alias"
inside 1 private $local__container_name_lowercase "echo 'alias egrep=\"egrep --color=none\"' >> /home/private/.zsh_alias"
inside 1 private $local__container_name_lowercase "echo -n '' > /home/private/.zshrc"
inside 1 private $local__container_name_lowercase "echo 'source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> /home/private/.zshrc"
inside 1 private $local__container_name_lowercase "echo 'source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> /home/private/.zshrc"
inside 1 private $local__container_name_lowercase "echo 'source /home/private/.zsh_params' >> /home/private/.zshrc"
inside 1 private $local__container_name_lowercase "echo 'source /home/private/.zsh_alias' >> /home/private/.zshrc"
inside 1 private $local__container_name_lowercase "echo 'plugins=(zsh-syntax-highlighting zsh-autosuggestions)' >> /home/private/.zshrc"
inside 1 private $local__container_name_lowercase "echo 'PROMPT=\"| %n@%m %1 => \"' >> /home/private/.zshrc"
inside 1 private $local__container_name_lowercase "echo 'export HISTFILE=/home/private/.zsh_history' >> /home/private/.zshrc"
inside 1 private $local__container_name_lowercase "echo 'export HISTSIZE=10000' >> /home/private/.zshrc"
inside 1 private $local__container_name_lowercase "echo 'export SAVEHIST=10000' >> /home/private/.zshrc"
inside 1 private $local__container_name_lowercase "echo 'export PATH=\$PATH:/home/private/.local/bin' >> /home/private/.zshrc"
##
## Power
inside 1 private $local__container_name_lowercase "echo -n '' > /home/private/.zsh_params"
inside 1 private $local__container_name_lowercase "echo 'global__project_power=$local__project_power_percent' >> /home/private/.zsh_params"
##
## Security
inside 1 private $local__container_name_lowercase "echo 'ulimit -Sn 1024' >> /home/private/.zshrc"
inside 1 private $local__container_name_lowercase "chmod 700 /home/private/.zsh*"
##
info "В контейнере '$local__container_name' настроен пакет 'zsh'"
##
## Unset local vars
unset local__container_name_lowercase
