require('plugins')
require('mason-config')
require('gopls')
require('haskell')
require('code-completion')
require('file-finder')

local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

set.cursorline = true

vim.cmd [[colorscheme moonfly]]
