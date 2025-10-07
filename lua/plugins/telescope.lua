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

