require('plugins')
require('mason-config')
require('gopls')
require("lua_ls")
require('clangd')
require('code-completion')
require('keymaps')
require('dap-config')

local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.cursorline = true
set.nu = true

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme moonfly]])

require('lualine').setup {
    options = {
        theme  = 'nord',
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

require('telescope').setup{
    defaults = {
        layout_config = {
            bottom_pane = {
                height = 25,
                preview_cutoff = 120,
                prompt_position = "bottom"
            },
        },
        layout_strategy = 'bottom_pane',
    },
}

