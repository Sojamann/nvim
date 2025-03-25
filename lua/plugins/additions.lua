-- ADDITIONS to the default NVChad plugins
return {
  {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- Lazy loading is not recommended because it is very
    -- tricky to make it work correctly in all situations.
    lazy = false,
    opts = require "configs.conf-oil",
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim",
      'nvim-telescope/telescope.nvim',
    },
    opts = require "configs.conf-harpoon",
    setup = function(_, opts)
      local harpoon = require("harpoon")
      harpoon:setup(opts)
      harpoon:extend({
        UI_CREATE = function(cx)
          vim.keymap.set("n", "<C-v>", function()
            harpoon.ui:select_menu_item({ vsplit = true })
          end, { buffer = cx.bufnr })

          vim.keymap.set("n", "<C-x>", function()
            harpoon.ui:select_menu_item({ split = true })
          end, { buffer = cx.bufnr })

          vim.keymap.set("n", "<C-t>", function()
            harpoon.ui:select_menu_item({ tabedit = true })
          end, { buffer = cx.bufnr })
        end,
      })
    end
  }
}
