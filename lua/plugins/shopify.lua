return {
  -- Liquid syntax highlighting
  { "tpope/vim-liquid", ft = "liquid" },

  -- Ruby support
  { "vim-ruby/vim-ruby", ft = "ruby" },

  -- LuaSnip + friendly-snippets for snippets (including Liquid)
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },

  -- Optionally add Ruby LSP support:
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("lspconfig").ruby_ls.setup{}
  --   end,
  --   ft = "ruby",
  -- },
}
