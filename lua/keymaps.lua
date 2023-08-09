-- keymap settings
vim.g.mapleader = ","

local function rg_visual_mode()
    vim.cmd('normal! y')
    local text = vim.fn.getreg('"')
    require"telescope.builtin".grep_string({search = text})
end

vim.keymap.set('n', '<C-p>', ':lua require"telescope.builtin".find_files()<CR>', {})
vim.keymap.set('n', '<C-s>', ':lua require"telescope.builtin".live_grep()<CR>', {})
vim.keymap.set('v', '<C-s>', rg_visual_mode, {})

-- goto references
vim.keymap.set('n', '<leader>gr', ':lua vim.lsp.buf.references()<CR>', {})
-- rename
vim.keymap.set('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>', {})

-- debug keymaps
vim.keymap.set('n', '<C-b>', ':lua require"dap".toggle_breakpoint()<CR>', {})
vim.keymap.set('n', '<F5>', ':lua require"dap".continue()<CR>', {})
vim.keymap.set('n', '<F6>', ':lua require"dap".step_over()<CR>', {})
vim.keymap.set('n', '<F7>', ':lua require"dap".step_into()<CR>', {})
vim.keymap.set('n', '<F8>', ':lua require"dap".step_out()<CR>', {})
vim.keymap.set('n', '<C-d>', ':lua require"dapui".toggle()<CR>', {})

vim.keymap.set('n', 'dl', ':lua require"dap".run_last()<CR>', {})
