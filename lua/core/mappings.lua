vim.g.mapleader = " "

-- NeoTreei
vim.keymap.set('n', '<leader>e', ':Neotree toggle left<CR>', { desc = "NeoTree Left" })
vim.keymap.set('n', '<leader>f', ':Neotree toggle float<CR>', { desc = "NeoTree Float" })
vim.keymap.set('n', '<leader>g', ':Neotree float git_status<CR>', { desc = "NeoTree Git Status" })
vim.keymap.set('n', '<leader>r', ':Neotree reveal<CR>', { desc = "NeoTree Reveal File"})
vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = "Move to left window" })

-- LSP
-- Javascript/typescript
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Документация" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Перейти к определению" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Найти все использования" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Переименовать" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Действия с кодом" })

-- Вкладки
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = "New Tab" })
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>', { desc = "Close Tab" })
vim.keymap.set('n', '<leader>to', ':tabonly<CR>', { desc = "Close Other Tabs" })
vim.keymap.set('n', '<leader>tnext', ':tabnext<CR>', { desc = "Next Tab" })
vim.keymap.set('n', '<leader>tprev', ':tabprevious<CR>', { desc = "Previous Tab" })

-- BufferLine
-- Навигация между вкладками
vim.keymap.set("n", "e", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "q", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>")
vim.keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>")
vim.keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>")

-- Быстрое закрытие текущей вкладки
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", { desc = "Close current tab" })

-- cmp
local M = {}

-- 🔹 Горячие клавиши для nvim-cmp
M.cmp_mappings = {
 	["<C-b>"] = { action = "scroll_docs", args = -4 },
 	["<C-f>"] = { action = "scroll_docs", args = 4 },
 	["<C-Space>"] = { action = "complete" },
 	["<CR>"] = { action = "confirm", opts = { select = true } },
 	["<Tab>"] = { action = "select_next_item" },
 	["<S-Tab>"] = { action = "select_prev_item" },
}

-- Outline
vim.keymap.set("n", "<leader>o", ":Outline<CR>", { desc = "Toggle outline" })

-- Telescope
local builtin = require("telescope.builtin")

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep,  { desc = "Find Text in Project" })
vim.keymap.set('n', '<leader>fb', builtin.buffers,    { desc = "Find Buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags,  { desc = "Help Tags" })

-- Toggleterm
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { desc = "Toggle terminal" })
vim.keymap.set("t", "<Esc>", [[<C-n>]], { desc = "Exit terminal mode" })

return M

