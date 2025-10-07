local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	"███     ███   ███████   ██   ██░░",
	"████   ████  ██     ██   ██ ██░░ ",
  "██ ██ ██ ██  █████████    ███░░  ",
  "██  ███  ██  ██     ██   ██ ██░░ ",
  "██       ██  ██     ██  ██   ██░░"
}

-- Кнопки
dashboard.section.buttons.val = {
  dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
  dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
  dashboard.button("g", " Live grep", ":Telescope live_grep<CR>"),
  dashboard.button("n", "  New file", ":ene <BAR> startinsert<CR>"),
  dashboard.button("c", "  Config", ":e $MYVIMRC<CR>"),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

-- Футер
dashboard.section.footer.val = "Happy coding with Neovim!"

vim.cmd([[
  highlight DashboardHeader guifg=#a020f0
]])

alpha.setup(dashboard.opts)

