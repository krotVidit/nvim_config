return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",  -- опционально (для ускорения)
    build = "make",  -- требуется только для fzf-native
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    -- Основные настройки
    telescope.setup({
      defaults = {
              mappings = {
          i = {
            ["<C-j>"] = "move_selection_next",  -- переключение вниз в режиме вставки
            ["<C-k>"] = "move_selection_previous",  -- переключение вверх
          },
        },
      },
      pickers = {
        find_files = {
          hidden = true,  -- показывать скрытые файлы
        },
      },
    })

    -- Загрузка fzf-native (если добавлен)
    pcall(telescope.load_extension, "fzf")

  end,
}
