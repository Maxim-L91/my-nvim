vim.cmd([[ let g:neo_tree_remove_legacy_comands = 1 ]])

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

require("neo-tree").setup({
  close_if_last_window = false,  -- не закрывать панель при закрытии редактора
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  default_component_configs = {
    indent = { padding = 1 },
    icon = { folder_closed = "", folder_open = "", default = "" },
    name = { trailing_slash = false },
  },
  window = {
    position = "left",        -- слева
    width = 30,             -- ширина панели (можно менять)
    mappings = {
      ["<cr>"] = "open",
      ["S"] = "open_split",
      ["s"] = "open_vsplit",
    },
  },
})

