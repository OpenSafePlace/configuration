#!/bin/bash

# General process
## Setup package
inside 1 root neovim "dnf install -y neovim"
##
## Configure neovim
inside 1 public neovim "git clone --depth 1 https://github.com/OpenSafePlace/verified.fork-packer /home/public/.local/share/nvim/site/pack/packer/start/verified.fork-packer"
inside 1 public neovim "mkdir -p /home/public/.config/nvim"
inside 1 public neovim "echo -n '$local__nvim_config' > /home/public/.config/nvim/init.lua"
inside 1 public neovim "nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerInstall' >/dev/null 2>&1"
##
## Configure launch
inside 1 public neovim "echo 'alias neovim=\"cpulimit --limit=\$global__project_power --lazy --include-children nvim\"' >> /home/public/.zsh_alias"
inside 1 public neovim "echo 'alias nvim=\"cpulimit --limit=\$global__project_power --lazy --include-children nvim\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Neovim' настроен пакет 'neovim'"
