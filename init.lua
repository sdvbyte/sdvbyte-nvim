-- Author      : Kenedy Nopriansyah
-- Email       : kenedinovriansyah@gmail.com
-- Linkedin    : https://www.linkedin.com/in/kenedy-nopriansyah-b5864a200/
-- Maintanicer : @kenedy

local cmd = vim.cmd
local g = vim.g
local map = vim.api.nvim_set_keymap

-- packadd

require "packadd"

-- setups

require "setups/coc-setup"
require "setups/neotree-setup"
require "setups/windows-setup"
require "setups/treesitter-setup"
require "setups/mini-setup"
require "setups/galaxy-setup"
require "setups/toggleterm-setup"

-- settings

cmd [[
  colorscheme sorbet
  autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
]]

require "setting"

g.python_host_prog = "$HOME/.pyenv/versions/2.7.18/bin/python"
g.python3_host_prog = "$HOME/.pyenv/versions/3.13.2/bin/python"
g.ruby_host_prog = "/usr/bin/ruby"

-- key bindings

local options = { noremap = true, silent = true }

-- Explore
map("n", "<leader>e", "<CMD>Ex<CR>", options)
-- Vsplit
map("n", "<leader>d", "<CMD>vs<CR>", options)
-- Split
map("n", "<leader>v", "<CMD>sp<CR>", options)
-- Quit
map("n", "<leader>q", "<CMD>q<CR>", options)
-- Save
map("n", "<leader>s", "<CMD>w<CR>", options)
