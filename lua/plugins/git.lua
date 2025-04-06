return {
  -- Подсветка изменений в коде
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    opts = {
      signs = {
        add          = { text = "▎" },
        change       = { text = "▎" },
        delete       = { text = "" },
        topdelete    = { text = "" },
        changedelete = { text = "▎" },
      },
      signcolumn = true,
      numhl      = false,
      linehl     = false,
      word_diff  = false,
      current_line_blame = true,
    },
  },

  -- Терминальный интерфейс для Git
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    config = function()
      vim.g.lazygit_floating_window_scaling_factor = 0.9
    end,
  },

  -- Дополнительные Git-команды
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "Gstatus", "Gcommit", "Gpush", "Gpull" },
  },

  -- Просмотр различий
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  },
}
