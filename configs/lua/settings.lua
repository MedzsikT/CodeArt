-- Defining alias for vim.opt.
local opt = vim.opt

-- Number settings.
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true

-- True collor support.
opt.termguicolors = true

-- Enable clipboard.
opt.clipboard = 'unnamedplus'

-- Enable mouse in all modes.
opt.mouse = 'a'

-- Enable cursor line.
opt.cursorline = true

-- Setting colorcolumn. This is set becuse of
-- this (https://github.com/lukas-reineke/indent-blankline.nvim/issues/59)
-- indent-blankline bug.
opt.colorcolumn = '9999'

-- With set hidden you’re telling Neovim that you can
-- have unsaved worked that’s not displayed on your screen.
opt.hidden = true

-- Set indentation stuf.
opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.smartcase = true
opt.expandtab = true
opt.smarttab = true

-- Set searching stuf.
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true

-- Set terminal bidirectual.
-- For writing in right to left languages like arabic, persian and hebrew.
opt.termbidi = true

-- Without this option some times backspace did not work correctly.
opt.backspace = 'indent,eol,start'

-- For opening splits on right or bottom.
opt.splitbelow = true
opt.splitright = true

-- Enabling ruler and statusline.
opt.ruler = true
opt.laststatus = 2

-- Setting time that Neovim wait after each keystroke.
opt.ttimeoutlen = 20
opt.timeoutlen = 1000

-- Setting up autocomplete menu.
opt.completeopt = "menuone,noselect"

-- Add cursorline and diasable it in terminal
vim.cmd('autocmd WinEnter,BufEnter * if &ft is "toggleterm" | set nocursorline | else | set cursorline | endif')

-- Set line number for help files.
vim.cmd
[[
  augroup help_config
    autocmd!
    autocmd FileType help :set number
  augroup END
]]

-- Auto open nvim-tree when writing (nvim .) in command line
-- and auto open Dashboard when nothing given as argument.
vim.cmd
[[
  if index(argv(), ".") >= 0
    autocmd VimEnter * NvimTreeToggle
    bd1
  elseif len(argv()) == 0
    autocmd VimEnter * Dashboard
  endif
]]

vim.cmd
[[
if has('win32')

else
    command CodeArtUpdate !svn export --force https://github.com/artart222/CodeArt.git/trunk/configs/ ~/.config/nvim
endif
]]

vim.cmd('autocmd BufWritePost plugins.lua source <afile>')
