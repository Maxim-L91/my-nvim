vim.opt.termguicolors = true
require("bufferline").setup({
	options = {
		numbers = "ordinal",
		mode = "buffers",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
    right_trunc_marker = "",
		max_name_length = 30,
    max_prefix_length = 15,
    tab_size = 21,
		enforce_regular_tabs = false,
		always_show_bufferline = true,
		separator_style = "slope",
		offsets = {
			{
				filetype = "neo-tree",
				text = "File Explorer",
				separator = true,
				padding = 1
			},
		},
		diagnostics = "nvim_lsp",
	}
})

