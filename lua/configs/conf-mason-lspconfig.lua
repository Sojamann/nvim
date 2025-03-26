local function getTableKeys(tab)
  local keyset = {}
  for k, _ in pairs(tab) do
    keyset[#keyset + 1] = k
  end
  return keyset
end

local lspconfig = require "configs.conf-lspconfig"

return {
  ensure_installed = getTableKeys(lspconfig.servers),
}
