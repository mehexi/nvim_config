local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node

local function get_filename()
  local name = vim.fn.expand("%:t:r")
  return name:gsub("%s+", "")
end

return {
  s("rfc", { -- shortened trigger
    t("export default function "),
    f(get_filename, {}),
    t("() {"),
    t({ "", "  return (" }),
    t({ "", "    <div>" }),
    t({ "", "      <h1>" }),
    f(get_filename, {}),
    t("</h1>"),
    t({ "", "    </div>" }),
    t({ "", "  );" }),
    t({ "", "}" }),
  }),
}
