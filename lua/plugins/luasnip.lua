return {
  "L3MON4D3/LuaSnip",
  opts = {
    -- leave empty unless you need to tweak default behavior
  },
  config = function(_, opts)
    require("luasnip").config.set_config(opts)

    -- Load your custom snippets
    require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/snippets" })
  end,
}
