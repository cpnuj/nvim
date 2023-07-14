require('plugins')
require('mason-config')
require('gopls')
require('code-completion')
require('file-finder')

local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.cursorline = true
set.nu = true

vim.o.background = "light" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

require('lualine').setup {
    options = {
        theme  = 'gruvbox_light',
        section_separators = '',
        component_separators = ''
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'filename'},
        lualine_c = {{'diagnostics', symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'}}},
        lualine_x = {'encoding'},
        lualine_y = {'hostname'},
        lualine_z = {'location'},
    }
}
