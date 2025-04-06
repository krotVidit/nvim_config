return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")
      wk.register({
        -- Навигация по файлам/буферам
        ["<leader>e"] = { "<cmd>Neotree toggle<CR>", "Проводник" },
        ["<leader>q"] = { "<cmd>bd<CR>", "Закрыть вкладку" },
        ["<leader>Q"] = { "<cmd>BufferLineCloseOthers<CR>", "Закрыть остальные" },
        ["<leader>["] = { "<cmd>BufferLineCyclePrev<CR>", "Предыдущая" },
        ["<leader>]"] = { "<cmd>BufferLineCycleNext<CR>", "Следующая" },

        -- Переключение окон
        ["<leader>a"] = { "<C-w>h", "Окно влево" },
        ["<leader>d"] = { "<C-w>l", "Окно вправо" },

        -- Поиск (Telescope)
        ["<leader>f"] = {
          name = "Поиск",
          f = { "<cmd>Telescope find_files<CR>", "Файлы" },
          t = { "<cmd>Telescope live_grep<CR>", "Текст (grep)" },
          h = { "<cmd>Telescope oldfiles<CR>", "История" },
          b = { "<cmd>Telescope buffers<CR>", "Буферы" },
        },

        -- Русская раскладка
--      ["<leader>у"] = { "<cmd>Neotree toggle<CR>", "Проводник" },
--      ["<leader>й"] = { "<cmd>bd<CR>", "Закрыть буфер" },
--      ["<leader>Й"] = { "<cmd>BufferLineCloseOthers<CR>", "Закрыть остальные" },
--      ["<leader>х"] = { "<cmd>BufferLineCyclePrev<CR>", "Предыдущий буфер" },
--      ["<leader>ъ"] = { "<cmd>BufferLineCycleNext<CR>", "Следующий буфер" },
--      ["<leader>ф"] = { "<C-w>h", "Окно влево" },
--      ["<leader>в"] = { "<C-w>l", "Окно вправо" },

      })
    end,
  }
}
