return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          buffer_close_icon = '',
          mode = 'buffers',
          offsets = {
            {
              filetype = "neo-tree",
              text = "File Explorer",
              separator = true,
              padding = 1
            }
          },
          diagnostics = "nvim_lsp",
          indicator = {
            icon = '  ',
            style = 'icon'
          },
          numbers = "ordinal",
          separator_style = "slant",
          show_tab_indicators = true,
          always_show_bufferline = true,
        }
      })

      -- Горячие клавиши
      local map = vim.keymap.set
      local opts = { silent = true, noremap = true }

      map('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', opts)
      map('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', opts)
    end
  }
}
