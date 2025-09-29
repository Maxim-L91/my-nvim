-- Mason
local mason_ok, mason = pcall(require, "mason")
if not mason_ok then return end
mason.setup()

-- Mason-LspConfig
local mason_lspconfig_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_ok then return end

-- Ставим автоматически ts_ls
mason_lspconfig.setup({
  ensure_installed = { "ts_ls" },
})

