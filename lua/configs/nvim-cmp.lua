local cmp = require("cmp")
local opts = require "nvchad.configs.cmp"

opts["mapping"] = cmp.mapping.preset.insert({
  ['<C-n>'] = cmp.mapping.select_next_item(),
  ['<C-p>'] = cmp.mapping.select_prev_item(),
  ['<C-d>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
})

return opts
