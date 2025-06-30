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
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      require "configs.conf-lspconfig"
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = require "configs.conf-mason-lspconfig",
  },
  {
    "windwp/nvim-autopairs",
    enabled = false,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = require "configs.conf-nvim-cmp",
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = require "configs.conf-telescope",
  },
}
