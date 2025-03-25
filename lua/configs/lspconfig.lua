local configs = require "nvchad.configs.lspconfig"

-- load default settings
configs.defaults()

local servers = {
  pyright = {},
  gopls = {},
  ols = {},
  zls = {},
}

-- lsps with default config
for name, opts in pairs(servers) do
  opts.on_init = configs.on_init
  opts.on_attach = configs.on_attach
  opts.capabilities = configs.capabilities

  require("lspconfig")[name].setup(opts)
end
