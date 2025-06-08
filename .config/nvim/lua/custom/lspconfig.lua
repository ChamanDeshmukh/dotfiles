local on_attach = require("configs.lspconfig").on_attach
local capabilities = require("configs.lspconfig").capabilities

local lspconfig = require "configs.lspconfig"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = {"rust"},
  root_dir = lspconfig.util.root_patten("Cargo.toml"),
})
