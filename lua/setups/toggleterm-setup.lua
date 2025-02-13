local toggleterm = require("toggleterm")
local Terminal = require("toggleterm.terminal").Terminal
local map = vim.api.nvim_set_keymap

local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = "float",
  float_opts = {
    border = "curved",
    width = 200
  }
})

function _lazygit_toggle()
  lazygit:toggle()
end

toggleterm.setup({
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  persist_mode = true,
  direction = 'float',
  close_on_exit = true,
  clear_env = false,
  shell = vim.o.shell,
  auto_scroll = false,
  float_opts = {
    border = "curved",
    width = 160,
    height = 20
  }
})

local options = { noremap = true, silent = true }

map("n", "<space>t", "<CMD>ToggleTerm toggle<CR>", options)
map("n", "<leader>g", "<CMD>lua _lazygit_toggle()<CR>", options)
