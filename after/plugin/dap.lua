local dap = require("dap")
dap.adapters.gdb = {
    type = "executable",
    command = "gdb",
    args = { "-i", "dap" }
}

dap.configurations.cpp = {
    {
        name = "Launch",
        type = "gdb",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = "${workspaceFolder}",
    },
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<Leader>db", "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
map("n", "<F5>", "<Cmd>lua require'dap'.continue()<CR>", opts)
map("n", "<Leader>dr", "<Cmd>lua require'dap'.repl.open()<CR>", opts)
