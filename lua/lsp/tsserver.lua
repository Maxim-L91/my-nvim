-- Проверяем, что LSP конфиги доступны
if not vim.lsp or not vim.lsp.configs then
  return
end

local configs = vim.lsp.configs

-- Настройка LSP для JS/TS
if not configs.ts_ls then
  configs.ts_ls = {
    default_config = {
      cmd = { "typescript-language-server", "--stdio" },
      filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
      root_dir = vim.fs.dirname,
      settings = {},
    }
  }
end

-- Запуск сервера
vim.lsp.start({ name = "ts_ls" })

require("lspconfig").ts_ls.setup({
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

