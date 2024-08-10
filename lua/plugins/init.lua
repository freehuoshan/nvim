return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      },
    },
  },

  {
    "williamboman/mason-lspconfig.nvim",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  { 'mfussenegger/nvim-dap'},
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true
  },
  -- Nvimtree (File Explorer)
  {
      'nvim-tree/nvim-tree.lua',
      dependencies = {
          'nvim-tree/nvim-web-devicons',
      },
  },

  -- Telescope (Fuzzy Finder)
  {
      'nvim-telescope/telescope.nvim',
      dependencies = {
          {'nvim-lua/plenary.nvim'},
      }
  },
  -- Which-key
  {
      'folke/which-key.nvim',
      lazy = true,
  },
  { 'echasnovski/mini.nvim', version = false },
}
