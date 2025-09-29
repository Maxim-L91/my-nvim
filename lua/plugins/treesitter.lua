require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "pascal", "lua", },
  sync_install = false,
  auto_install = true,
    highlight = {
      enable = true,
    },
  
    incremental_selection = {       
      enable = true,
      keymaps = {
        init_selection = "gnn",      -- начать выделение
        node_incremental = "grn",    -- расширить
        node_decremental = "grm",    -- уменьшить
        scope_incremental = "grc",   -- выделить весь блок
      },
    },

    textobjects = {
    select = {
      enable = true,
      keymaps = {
        ["af"] = "@function.outer", -- выделить всю функцию
        ["if"] = "@function.inner", -- выделить тело функции
        ["ac"] = "@class.outer",    -- выделить весь класс
        ["ic"] = "@class.inner",    -- тело класса
      },
    },
  },
}

