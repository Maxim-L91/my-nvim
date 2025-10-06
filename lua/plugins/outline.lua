require("outline").setup({
  outline_window = {
    position = "right",
    width = 30,
  },
  symbols = {
    filter = { "Class", "Function", "Method", "Variable" },
  },
})

vim.keymap.set("n", "<leader>o", ":Outline<CR>", { desc = "Toggle outline" })
