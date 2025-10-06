require("toggleterm").setup({
  -- Основные параметры
  size = 10,                   -- высота для горизонтального терминала
  open_mapping = [[<C-/>]],    -- сочетание клавиш для вызова терминала
  shade_terminals = true,      -- затемнять фон при открытии терминала
  shading_factor = 2,          -- степень затемнения
  direction = "horizontal",         -- варианты: "horizontal", "vertical", "tab", "float"
  float_opts = {
    border = "curved",         -- рамка: "single", "double", "shadow", "curved"
    winblend = 3,              -- прозрачность
  },
})

-- Горячие клавиши
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { desc = "Toggle terminal" })
vim.keymap.set("t", "<Esc>", [[<C-n>]], { desc = "Exit terminal mode" })

-- Дополнительно — функция для быстрого запуска git или python
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

