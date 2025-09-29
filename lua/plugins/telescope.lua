local telescope = require("telescope")
telescope.setup({
  defaults = {
		vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    prompt_prefix = "🔍 ",
    selection_caret = " ",
    path_display = { "smart" },
		file_ignore_patterns = { "node_modules", ".git/" },
  },
})

local builtin = require("telescope.builtin")

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep,  { desc = "Find Text in Project" })
vim.keymap.set('n', '<leader>fb', builtin.buffers,    { desc = "Find Buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags,  { desc = "Help Tags" })

