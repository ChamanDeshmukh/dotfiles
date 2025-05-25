local on_attach = require("lspconfig").on_attach
local capabilities = require("lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = {"rust"},
  root_dir = lspconfig.util.root_patten("Cargo.toml"),
})
