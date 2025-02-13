local windows = require('windows')
local map = vim.api.nvim_set_keymap

windows.setup({
  autowidth = { enable = false }
})

local options = { noremap = true, silent = true }

map("n", "<space>q", "<CMD>WindowsEqualize<CR>", options)
map("n", "<space>a", "<CMD>WindowsMaximize<CR>", options)
