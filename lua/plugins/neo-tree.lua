return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      "s1n7ax/nvim-window-picker",
    },
    init = function()
      vim.g.neo_tree_remove_legacy_commands = 1
    end,
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        sort_case_insensitive = true,
        filesystem = {
          hijack_netrw_behavior = "open_current",
          follow_current_file = { enabled = true },
          filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
          },
          window = {
            mappings = {
              ["<cr>"] = "open_with_window_picker",
              ["<space>"] = "none",
            },
          },
        },
        window = {
          width = 30,
          mappings = {
            ["o"] = "open",
            ["S"] = "open_split",
            ["s"] = "open_vsplit",
          },
        },
        default_component_configs = {
          indent = { padding = 1 },
          icon = {
            folder_empty = "󰜌",
          },
          git_status = {
            symbols = {
              added = "",
              modified = "",
              deleted = "",
              renamed = "➜",
              untracked = "",
            },
          },
        },
      })
    end,
  }
}
