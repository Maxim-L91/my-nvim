local cmp = require("cmp")
local mappings = require("core.mappings").cmp_mappings

local cmp_mapped = {}
for key, map in pairs(mappings) do
  cmp_mapped[key] = cmp.mapping[map.action](map.args or map.opts or map)
end

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert(cmp_mapped),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
  }),
})

