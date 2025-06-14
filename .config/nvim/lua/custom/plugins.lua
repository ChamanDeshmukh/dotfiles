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
      -- require "custom.lspconfig"
    end,
  },

  {
    "lervag/vimtex",
    lazy=false,
    ft = { "tex" },
    init = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_mappings_enabled = 1
      vim.g.vimtex_syntax_enabled = 1
      vim.g.vimtex_indent_enabled = 0

      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_compiler_latexmk = {
        aux_dir = "/tmp/" -- you can set here whatever name you desire
      }
      -- vim.g.snipmate_snippets_path = '~/.config/snippets/'
    end,
  },
  {
    "iurimateus/luasnip-latex-snippets.nvim",
    lazy=false,
    -- vimtex isn't required if using treesitter
    requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
    config = function()
      require'luasnip-latex-snippets'.setup()
      -- or setup({ use_treesitter = true })
      require("luasnip").config.setup { enable_autosnippets = true }
      -- Modify existing snippets using higher priority and util function from luasnip-latex-snippets
        local ls = require("luasnip")
        local s = ls.snippet
        local i = ls.insert_node
        local fmta = require("luasnip.extras.fmt").fmta
        local utils = require("luasnip-latex-snippets.util.utils")
        local not_math = utils.with_opts(utils.not_math, false) -- when using treesitter, change false to true

        ls.add_snippets("tex", {
          s({trig = "mk", snippetType="autosnippet", priority=100},
            fmta("$<>$<>", { i(1), i(2), }), {condition = not_math}
          ),
        })
    end,
  },
  {
    "alexxGmZ/Md2Pdf",
    lazy=false,
    cmd = "Md2Pdf"
  },
}
return plugins
