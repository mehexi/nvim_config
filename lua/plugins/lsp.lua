return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {
        filetypes = { "javascript", "javascriptreact", "typescriptreact", "jsx" }, -- Force JS support
      },
    },
  },
}
