local on_attach = require("lua.configs.lspconfig").on_attach
local capabilities = require("lua.configs.lspconfig").capabilities

local lspconfig = require "lua.configs.lspconfig" 

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = {"rust"},
  root_dir = lspconfig.util.root_patten("Cargo.toml"),
})
