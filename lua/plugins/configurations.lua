-- CONFIGURATIONS OF THE DEFAULT NVCHAD PLUGINS
return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conf-conform",
  },
  {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.conf-lspconfig"
    end,
  },
  {
    "windwp/nvim-autopairs",
    enabled = false,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = require "configs.conf-nvim-cmp",
  }
}
