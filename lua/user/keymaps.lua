local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = ','
vim.g.maplocalleader = ','

keymap("n", "<leader>e", ":Lex 30<cr>", opts)
keymap("n", "<leader>q", ":q!<cr>", opts)
keymap("n", "<leader>w", ":w!<cr>", opts)

keymap('n', '<leader>ff', ':Telescope find_files<cr>', opts)
keymap('n', '<leader>fb', ':Telescope buffers<cr>', opts)
keymap('n', '<leader>fg', ':Telescope live_grep<cr>', opts)
keymap('n', '<leader>fh', ':Telescope help_tags<cr>', opts)

keymap('i', 'jk', '<ESC>', opts)