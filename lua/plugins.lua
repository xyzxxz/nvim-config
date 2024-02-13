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
    spec = {
	    require("plugins.colorschemes"),
        require("plugins.ui"),
        require("plugins.lsp"),
	    require("plugins.lualine"),
        require("plugins.nvim-cmp"),
        require("plugins.nvim-tree"),
        require("plugins.telescope"),
        require("plugins.treesitter"),
        require("plugins.which-key"),
    },
    ui = {
        size = { width = 0.8, height = 0.8 },
        wrap = true,
        border = "shadow",
    },
})
