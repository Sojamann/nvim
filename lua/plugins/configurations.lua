-- CONFIGURATIONS OF THE DEFAULT NVCHAD PLUGINS
return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
  {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "windwp/nvim-autopairs",
    enabled = false,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = require "configs.nvim-cmp",
  }
}
