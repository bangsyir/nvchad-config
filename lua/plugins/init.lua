return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = { enable = true },
      highlight = {
        enable = true,
        use_languagetree = true,
      },
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local cmp = require "cmp"
      local conf = require "nvchad.configs.cmp"

      local mymappings = {
        ["<Up>"] = cmp.mapping.select_prev_item(),
        ["<Down>"] = cmp.mapping.select_next_item(),
        ["<Tab>"] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        },
      }
      conf.mapping = vim.tbl_deep_extend("force", conf.mapping, mymappings)
      return conf
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    opts = {},
    config = function()
      require("nvim-ts-autotag").setup()
    end,
    lazy = true,
    event = "VeryLazy",
  },
}
