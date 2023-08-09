local dap = require('dap')

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = vim.fn.stdpath "data" .. "/mason/bin/codelldb",
    args = {"--port", "${port}"},

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}

dap.configurations.c = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

local dapui = require('dapui')
--local dapui_layouts = {
--    {
--        elements = {
--            {
--                id = "consoles",
--                size = 0.5
--            },
--            {
--                id = "repl",
--                size = 0.5
--            },
--        },
--        position = "bottom",
--        size = 20
--    },
--}
--
dapui.setup({})
