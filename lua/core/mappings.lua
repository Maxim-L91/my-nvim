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

