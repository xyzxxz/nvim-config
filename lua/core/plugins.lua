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
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function() 
      require('plugins.nvim-tree')
    end
  },
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

  },
  -- LSP configuration
  {
    
  },
    ui = {
        size = { width = 0.8, height = 0.8 },
        wrap = true,
        border = "shadow",
    },
})
