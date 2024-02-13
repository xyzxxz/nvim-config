local options = {
  autoindent     = true,       -- Good auto indent
  backup         = false,      -- 
  clipboard      = "unnamed,unnamedplus", -- Copy-paste between vim and everything else
  cmdheight      = 0,          -- Give more space for displaying messages
  cursorline     = true,       -- Highlight of current line
  emoji          = false,      -- Fix emoji display
  encoding       = "utf-8",     -- The encoding displayed
  expandtab      = true,       -- Use spaces instead of tabs
  fileencoding   = "utf-8",     -- The encoding written to file
  ignorecase     = true,       -- Needed for smartcase
  incsearch      = true,       -- Start searching before pressing enter
  laststatus     = 3, 	       -- Have a global statusline at the bottom instead of one for each window
  number         = true,       -- Shows current line number
  relativenumber = true,       -- Enables relative number
  shiftwidth     = 4,          -- Change a number of space characters inserted for indentation
  showmode       = false,      -- Don't show things like -- INSERT -- anymore
  smartcase      = true,       -- Uses case in search
  smartindent    = true,       -- Makes indenting smart
  smarttab       = true,       -- Makes tabbing smarter will realize you have 2 vs 4
  softtabstop    = 2,          -- Insert 2 spaces for a tab
  swapfile       = false,      -- Swap not needed
  termguicolors  = true,       -- Correct terminal colors
  title          = true,       --
  titlestring    = "%<%F%=%l/%L - nvim",          
  undofile       = true,       -- Sets undo to file
}

local globals = {
  mapleader      = ' ',        -- Map leader key to SPC
  maplocalleader = ',',        -- Map local leader key ro comma
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

for k, v in pairs(globals) do
  vim.g[k] = v
end
