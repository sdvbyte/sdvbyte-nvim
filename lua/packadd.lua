local cmd = vim.cmd

cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use({
    "neoclide/coc.nvim",
    branch = "release"
  })
  use({
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  })
  use({
    "anuvyklack/windows.nvim",
    requires = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim"
    }
  })
  use "nvim-treesitter/nvim-treesitter"
  use "echasnovski/mini.nvim"
  use "glepnir/galaxyline.nvim"
  use "akinsho/toggleterm.nvim"
  use "Mofiqul/vscode.nvim"
end)
