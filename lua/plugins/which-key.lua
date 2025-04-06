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

                -- Git-операции
        ["<leader>g"] = {
          name = "Git",
          -- Основные операции
          s = { "<cmd>lua require('gitsigns').stage_hunk()<CR>", "Добавить stage" },
          r = { "<cmd>lua require('gitsigns').reset_hunk()<CR>", "Отменить stage" },
          u = { "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>", "Отменить добавление" },
          p = { "<cmd>lua require('gitsigns').preview_hunk()<CR>", "Просмотр изменений" },
          b = { "<cmd>lua require('gitsigns').blame_line({full=true})<CR>", "Показать автора" },
          d = { "<cmd>lua require('gitsigns').diffthis()<CR>", "Сравнить с HEAD" },
          
          -- LazyGit
          g = { "<cmd>LazyGit<CR>", "Git интерфейс" },
          
          -- Fugitive
          S = { "<cmd>Git<CR>", "Статус репозитория" },
          c = { "<cmd>Git commit<CR>", "Создать коммит" },
          P = { "<cmd>Gpush<CR>", "Отправить изменения (push)" },
          L = { "<cmd>Gpull<CR>", "Получить изменения (pull)" },
          -- Diffview
          D = { "<cmd>DiffviewOpen<CR>", "Сравнить ветки" },
          h = { "<cmd>DiffviewFileHistory<CR>", "История файла" },
        },

        -- Русская раскладка
--      ["<leader>у"] = { "<cmd>Neotree toggle<CR>", "Проводник" },
--      ["<leader>й"] = { "<cmd>bd<CR>", "Закрыть буфер" },
--      ["<leader>Й"] = { "<cmd>BufferLineCloseOthers<CR>", "Закрыть остальные" },
--      ["<leader>х"] = { "<cmd>BufferLineCyclePrev<CR>", "Предыдущий буфер" },
--      ["<leader>ъ"] = { "<cmd>BufferLineCycleNext<CR>", "Следующий буфер" },
--      ["<leader>ф"] = { "<C-w>h", "Окно влево" },
--      ["<leader>в"] = { "<C-w>l", "Окно вправо" },
        
wk.register({
  ["<leader>k"] = {
    name = "Работа с кодом",
    d = { vim.lsp.buf.definition, "Перейти к определению" },
    i = { vim.lsp.buf.implementation, "Реализация" },
    D = { vim.lsp.buf.declaration, "Перейти к объявлению" },
    k = { vim.lsp.buf.hover, "Документация" },
    a = { vim.lsp.buf.code_action, "Действия с кодом" },
    f = { function() vim.lsp.buf.format({ async = true }) end, "Форматировать код" },
    s = { vim.diagnostic.open_float, "Диагностика" },
  },
  
  ["<leader>m"] = {
    name = "Mason & LSP",
    r = { vim.lsp.buf.references, "Ссылки на символ" },
    R = { vim.lsp.buf.rename, "Переименовать символ" },
    l = { "<cmd>Mason<CR>", "Открыть Mason" },
    u = { "<cmd>MasonUpdate<CR>", "Обновить Mason" },
    I = { "<cmd>LspInfo<CR>", "Информация о LSP" },
  },

  ["<leader>l"] = {
    name = "Laravel",
    a = { "<cmd>!php artisan<CR>", "Artisan" },
    m = { "<cmd>!php artisan make:<CR>", "Make" },
    r = { "<cmd>!php artisan route:list<CR>", "Routes" },
  }
})


      })
    end,
  }
}
