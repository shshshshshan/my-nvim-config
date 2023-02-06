-----------------
--    Alias    --
-----------------

local g = vim.g
local o = vim.o
local opt = vim.opt

-----------------
-- Vim Options --
-----------------

-- Syntaxing on --
vim.cmd("syntax on")

-- Terminal GUI Color --
o.termguicolors = true

-- Encoding Type Set --
o.encoding = "utf-8"

-- Better Editor UI --
o.number = true
o.relativenumber = true
o.numberwidth = 2
o.signcolumn = "no"
o.splitright = true
o.splitbelow = true

-- Decrease Update Time --
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor --
o.scrolloff = 8

-- Better Editing Experience --
o.expandtab = true
o.smarttab = true
o.cindent = true
o.autoindent = true
vim.cmd("set wrap | setlocal wrap")
o.textwidth = 300
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.smartindent = true

-- Makes neovim and host OS clipboard play nicely with each other --
o.clipboard = "unnamedplus"

-- Case insensitive search unless /C or capital in search --
o.ignorecase = true
o.smartcase = true

-- Remember 50 items in commandline history -- 
o.history = 50

-- Enable spellchecking --
o.spell = true

-- Suggestion preview pane options --
o.completeopt = "menu,menuone,preview"

-- No timeout on keymaps, press <Esc> to cancel the command --
vim.cmd("set notimeout")

-- Activating mouse -- 
opt.mouse = "a"

-- Color scheme --
local ok, _ = pcall(vim.cmd, "colorscheme gruvbox")

-- Map <Leader> to <Space> -- 
g.mapleader = ' '
g.maplocalleader = ' '
