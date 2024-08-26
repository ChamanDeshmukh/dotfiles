local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      },
    },
  },

  {
    "tribela/transparent.nvim",
    lazy=false,
  },

  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  }
}
return plugins
