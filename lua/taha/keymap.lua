local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-q>", "<C-w>q", opts)

map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

map("n", "<leader>y", "\"+y", opts)
map("v", "<leader>y", "\"+y", opts)
map("n", "<leader>Y", "\"+Y", opts)

map("n", "<leader>wt", '<cmd>ToggleTerm<CR>', opts)

map("n", "<leader>ws", '<cmd>split<CR>', opts)
map("n", "<leader>wv", '<cmd>vsplit<CR>', opts)

map('t', '<C-c>', '<C-\\><C-n>', opts)
map('n', '<A-q>', '<Cmd>BufferClose!<CR>', opts)
map('t', '<A-q>', '<Cmd>BufferClose!<CR>', opts)

map('n', '<leader>u', '<cmd>UndotreeToggle<CR>', opts)

map('n', '<leader>gs', '<cmd>Git<CR>', opts)

map('n', '<leader>lk', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', '<leader>lf', '<cmd>lua vim.lsp.buf.format()<CR>', opts)
map('n', '<leader>lsh', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
map('n', '<leader>lR', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
