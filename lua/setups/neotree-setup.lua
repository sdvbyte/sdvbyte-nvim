local neotree = require("neo-tree")
local map = vim.api.nvim_set_keymap

neotree.setup({
  close_if_last_window = false,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
  open_files_using_relative_paths = false,
  sort_case_insensitive = false,
  window = {
    position = "left",
    width = 24,
    mappings = {
      ["P"] = {
        'toggle_preview',
        config = { use_float = false }
      }
    }
  },
  filesystem = {
    filtered_items = {
      visible = false,
      hide_hidden = false,
      hide_dotfiles = false,
      hide_gitignored = false
    }
  },
})

local options = { noremap = true, silent = true }

map("n", "<space>w", "<CMD>Neotree toggle<CR>", options)
map("n", "<space>g", "<CMD>Neotree git_status float<CR>", options)
map("n", "<space>b", "<CMD>Neotree buffers toggle<CR>", options)
