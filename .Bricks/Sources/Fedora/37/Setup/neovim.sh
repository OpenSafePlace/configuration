#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup package
inside 1 root $local__container_name_lowercase "dnf install -y neovim"
##
## Configure neovim
inside 1 private $local__container_name_lowercase "git clone --depth 1 https://github.com/OpenSafePlace/verified.fork-packer /home/private/.local/share/nvim/site/pack/packer/start/verified.fork-packer"
inside 1 private $local__container_name_lowercase "mkdir -p /home/private/.config/nvim"
inside 1 private $local__container_name_lowercase "echo -n '$local__nvim_config' > /home/private/.config/nvim/init.lua"
inside 1 private $local__container_name_lowercase "nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerInstall' >/dev/null 2>&1"
##
## Configure launch
inside 1 private $local__container_name_lowercase "echo 'alias neovim=\"cpulimit --limit=\$global__project_power --lazy --include-children nvim\"' >> /home/private/.zsh_alias"
inside 1 private $local__container_name_lowercase "echo 'alias nvim=\"cpulimit --limit=\$global__project_power --lazy --include-children nvim\"' >> /home/private/.zsh_alias"
##
info "В контейнере '$local__container_name' настроен пакет 'neovim'"
##
## Unset local vars
unset local__container_name_lowercase
