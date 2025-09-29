-- абсолютные номера строк
vim.opt.nu = true

-- относительные номера строк
vim.opt.relativenumber = true

-- цвет подстветки под курсором
vim.opt.cursorline = true
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2a293f", })

-- количество пробелов, используемых для автоматического отступа
vim.opt.shiftwidth = 2

-- определяет, сколько пробелов отображает один символ таба
vim.opt.tabstop = 2

-- автоотступ при создании новых строк
vim.opt.smartindent = true

-- включает подсветку всех совпадений последнего поиска
vim.opt.hlsearch = true

vim.opt.wrap = false

-- вертикальная линия на 80 символов
vim.opt.colorcolumn = "80"
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#23233a" }) 

vim.opt.incsearch = true

-- включает поддержку 24-bit (TrueColor) в терминале
vim.opt.termguicolors = true

-- всегда показывает колонку для значков (signs) слева от текста
vim.opt.signcolumn = "yes"

-- перенос длинных строк на следующую визуальную строку
vim.opt.wrap = false

-- не переносит слова на середине слова
vim.wo.linebreak = true

-- задаёт минимальное количество видимых строк над и под курсором при прокрутке
vim.opt.scrolloff = 8

-- включает поддержку мыши в Neovim во всех режимах
vim.opt.mouse = "a"

-- заставляет фокус следовать за курсором мыши — окно под мышью автоматически получает фокус
vim.opt.mousefocus = true


vim.opt.clipboard = "unnamedplus"
