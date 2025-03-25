-- ADDITIONS to the default NVChad plugins
return {
  {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- Lazy loading is not recommended because it is very
    -- tricky to make it work correctly in all situations.
    lazy = false,
    opts = require "configs.oil",
  }
}
