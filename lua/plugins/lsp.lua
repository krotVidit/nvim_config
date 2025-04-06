return {
  -- Mason (установщик LSP серверов)
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    config = function()
      require("mason").setup()
    end
  },
  
  -- Мост между Mason и LSPConfig
  {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "tsserver",     -- JavaScript/TypeScript
          "html",         -- HTML
          "cssls",        -- CSS
          "intelephense", -- PHP
          "emmet_ls",     -- Emmet
          "sqlls",        -- SQL
          "lua_ls"        -- Lua
        }
      })
    end
  },
  
  -- Настройка LSP серверов (без хоткеев)
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      
      -- Общий on_attach без хоткеев
      local on_attach = function(client, bufnr)
        -- Можно добавить autocmd или другие настройки, но не хоткеи
      end
      
      -- Настройки для каждого LSP сервера
      lspconfig.tsserver.setup({ on_attach = on_attach, capabilities = capabilities })
      lspconfig.html.setup({ on_attach = on_attach, capabilities = capabilities })
      lspconfig.cssls.setup({ on_attach = on_attach, capabilities = capabilities })
      lspconfig.emmet_ls.setup({ on_attach = on_attach, capabilities = capabilities })
      lspconfig.sqlls.setup({ on_attach = on_attach, capabilities = capabilities })
      lspconfig.lua_ls.setup({ 
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          Lua = {
            runtime = { version = 'LuaJIT' },
            diagnostics = { globals = {'vim'} },
            workspace = { checkThirdParty = false },
            telemetry = { enable = false }
          }
        }
      })
      
      -- Специальные настройки для PHP
      lspconfig.intelephense.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          intelephense = {
            environment = {
              includePaths = { "vendor" }
            },
            files = {
              maxSize = 5000000
            },
            diagnostics = {
              enable = true,
              undefinedTypes = true,
              undefinedFunctions = true,
              undefinedConstants = true,
              undefinedMethods = true,
              undefinedProperties = true
            }
          }
        }
      })
    end
  },
  
  -- Автодополнение (nvim-cmp)
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
        }, {
          { name = 'buffer' },
          { name = 'path' },
        })
      })
    end
  }
}
