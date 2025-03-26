local configs = require "nvchad.configs.lspconfig"

-- load default settings
configs.defaults()

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
local servers = {
  pyright = {},         -- python
  gopls = {},           -- go
  ols = {},             -- odin
  zls = {},             -- zig
  clangd = {},          -- c
  nixd = {},            -- nix
  markdown_oxide = {},  -- markdown
  bashls = {},          -- shell languages
}

-- lsps with default config
for name, opts in pairs(servers) do
  opts.on_init = configs.on_init
  opts.on_attach = configs.on_attach
  opts.capabilities = configs.capabilities

  require("lspconfig")[name].setup(opts)
end
