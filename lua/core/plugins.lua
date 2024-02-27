local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- ColorScheme
  {
    'catppuccin/nvim',
    name = "catppuccin",
    priority = 1000,
    config = function ()
      require('plugins.colorschemes')
    end,
  },
  -- Icons
  {
    'nvim-tree/nvim-web-devicons',
    lazy = true,
  },
  -- Dashboard
  {
    'goolord/alpha-nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function ()
      require('alpha').setup(require'alpha.themes.dashboard'.config)
    end
  },
  -- file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function ()
      require("plugins.neotree")
    end,
  },
  -- {
    -- 'nvim-tree/nvim-tree.lua',
    -- dependencies = {
      -- 'nvim-tree/nvim-web-devicons',
    -- },
    -- config = function() 
      -- require('plugins.nvim-tree')
    -- end
  -- },
  -- autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
    },
    config = function()
      require("plugins.nvim-cmp")
    end
  },
  -- which-key
  {
    'folke/which-key.nvim',
    event = "VeryLazy",
    opts = {},
  },
  -- statusline
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('plugins.lualine')
    end
  },
  -- Fuzzy finder
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('plugins.telescope')
    end
  },
  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function ()
      require('plugins.nvim-treesitter')
    end
  },
  -- autopair
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },
  -- Comments
  {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function ()
      require('plugins.comment')
    end
  },
  -- Indent blankline
  {
    "lukas-reineke/indent-blankline.nvim",
    main = 'ibl',
    config = function ()
      require("ibl").setup({
        indent = {
          char = "│",
          tab_char = "│",
        },
        scope = { enabled = false },
        exclude = {
          filetypes = {
            "help",
            "alpha",
            "dashboard",
            "Trouble",
            "trouble",
            "lazy",
            "mason",
          },
        },
      })
    end
  },
  -- LSP configuration
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {
        'folke/neoconf.nvim',
        config = false,
        dependencies = { 'nvim-lspconfig' },
      },
      {
        'folke/neodev.nvim',
      },
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    config = function ()
      require('plugins.lsp')
    end
  },
  {
    'williamboman/mason.nvim',
    cmd = 'Mason',
    config = function()
      require('plugins.mason')
    end
  },
    ui = {
        size = { width = 0.8, height = 0.8 },
        wrap = true,
        border = "shadow",
    },
})
