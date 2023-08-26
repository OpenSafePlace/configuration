#!/bin/bash

local__nvim_config=$(cat <<EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.floaterm_title = ""
vim.g.floaterm_borderchars = "─│─│╭╮╯╰"
vim.g.floaterm_width = 0.8
vim.g.floaterm_height = 0.8
vim.opt.background = "dark"
vim.opt.clipboard = "unnamed"
vim.opt.completeopt = "noinsert,menuone,noselect"
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldmethod = "manual"
vim.opt.hidden = true
vim.opt.inccommand = "split"
vim.opt.mouse = "c"
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.smarttab = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 250
vim.opt.updatetime = 250
vim.opt.wildmenu = false
vim.opt.wrap = true
vim.opt.showmode = false
vim.opt.lazyredraw = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.shell = "/bin/zsh"
vim.opt.history = 1000
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.autowriteall = true 

local packer = require("packer")

vim.cmd([[packadd verified.fork-packer]])

packer.startup(function()
  use("OpenSafePlace/verified.fork-cmp-buffer")
  use("OpenSafePlace/verified.fork-cmp-cmdline")
  use("OpenSafePlace/verified.fork-cmp-nvim-lsp")
  use("OpenSafePlace/verified.fork-cmp-path")
  use("OpenSafePlace/verified.fork-nvim-cmp")
  use("OpenSafePlace/verified.fork-friendly-snippets")
  use("OpenSafePlace/verified.fork-packer")
  use("OpenSafePlace/verified.fork-nvim-autopairs")
  use("OpenSafePlace/verified.fork-gitsigns")
  use("OpenSafePlace/verified.fork-nui")
  use("OpenSafePlace/verified.fork-plenary")
  use("OpenSafePlace/verified.fork-telescope")
  use("OpenSafePlace/verified.fork-telescope-file-browser")
  use("OpenSafePlace/verified.fork-vscode")
  use("OpenSafePlace/verified.fork-lualine")
  use("OpenSafePlace/verified.fork-vim-floaterm")
  use("OpenSafePlace/verified.fork-vim-startuptime")
  use{"nvim-treesitter/nvim-treesitter", tag = "v0.9.1"}
  use{"neovim/nvim-lspconfig", tag = "v0.1.6"}
  use{"L3MON4D3/LuaSnip", tag = "v2.0.0"}
end)

require("vscode").setup({
  disable_nvimtree_bg = true
})

vim.cmd([[
  filetype plugin indent on
  syntax on
  colorscheme vscode
  highlight FloatermBorder guibg=0 guifg=#5a5a5a
]])

require("lualine").setup({
  options = { 
    icons_enabled = false,
    theme = "vscode",
    component_separators = { left = "|", right = "|" },
    section_separators = { left = "", right = "" }
  }
})

require("telescope").load_extension("file_browser")
require("telescope").setup({
  defaults = { 
    sorting_strategy = "ascending",
    layout_strategy ="horizontal",
    layout_config = { 
      width = function()
        return math.floor(vim.o.columns * 0.8)
      end,
      height = function()
        return math.floor(vim.o.lines * 0.8)
      end
    },
    preview = {
      hide_on_startup = true
    }
  },
  extensions = {
    file_browser = {
      theme = "ivy"
    }
  }
})

require("nvim-autopairs").setup({
    disable_filetype = { "TelescopePrompt" }
})

require("gitsigns").setup({})

local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.confirm({ select = true })
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" }
  })
})

cmp.setup.filetype("gitcommit", {
  sources = cmp.config.sources({
    { name = "cmp_git" }
  }, {
    { name = "buffer" }
  })
})

cmp.setup.cmdline("/", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = { { name = "buffer" } }
})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" }
  }, {
    { name = "cmdline" }
  }),
})

require("nvim-treesitter.configs").setup({
    ensure_installed = { "bash", "json", "markdown" },
    highlight = { enable = true },
    indent = { enable = true }
})

local lspconfig = require("lspconfig")

lspconfig.bashls.setup({})

vim.keymap.set("n", "<leader>tt", function() vim.cmd("update") vim.cmd("FloatermNew --wintype=float --autoclose=2") end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>dl", function() require("vscode").load("light") end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>dd", function() require("vscode").load("dark") end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tg", "<cmd>Telescope live_grep disable_devicons=true<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tb", "<cmd>Telescope buffers disable_devicons=true<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tf", "<cmd>Telescope file_browser path=%:p:h select_buffer=true disable_devicons=true<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>un", "<cmd>undo<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>re", "<cmd>redo<cr>", { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<leader>c", [["+y]], { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<leader>p", [["+p]], { noremap = true, silent = true })
EOF
)

# General process
## Enable GUI mode if necessary ('true' or 'false')
global__project_gui=true
##
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
global__project_keys+=($(openssl rand -base64 33) "['public'] + ['sudo']")
##
## Create new containers, networks and volumes
project_name=$global__project_name project_os=$global__project_os project_os_lowercase=$(echo $global__project_os | tr '[:upper:]' '[:lower:]') project_os_version=$global__project_os_version project_display=$global__project_display docker-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name up --build -d
##
## Install and configure packages
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/config-manager.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/system-upgrade.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Repositories/Disable/all.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Repositories/Enable/fedora.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Repositories/Enable/fedora-cisco-openh264.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Repositories/Enable/fedora-modular.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Repositories/Enable/updates.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Repositories/Enable/updates-modular.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Repositories/upgrade-minor.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/util-linux-user.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/procps-ng.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Users/root.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Users/public.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/tzdata.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Timezones/minsk.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/sudo.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/zsh.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/mv.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/cp.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/rm.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/cat.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/du.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/cpulimit.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/iptables.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/nano.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/wget.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/zip.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/unzip.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/git.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/catimg.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/htop.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/tree.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/ripgrep.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/lsof.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/gcc.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/gpp.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/nodejs=20.0.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/bash-language-server=5.0.0.sh
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Setup/clean.sh
##
## Close all ports
. $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Firewall/Close/10100.sh
