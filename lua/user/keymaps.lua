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

keymap('n', '<leader>[', ':vsplit<cr>', opts)
keymap('n', '<leader>]', ':split<cr>', opts)

-- copy
keymap('v', '<M-c>', '\"+y', opts)
keymap('v', '<M-C>', '\"+Y', opts)
keymap('v', '<M-p>', '\"+p', opts)
keymap('v', '<M-P>', '\"+P', opts)

keymap('n', '<leader>b', ':lua require("nvim-window").pick()<cr>', opts)

keymap('n', '<leader>c', ':Telescope commands<cr>', opts)

keymap('i', 'jk', '<ESC>', opts)

keymap('n', '<leader>tt', ':TrainTextObj<cr>', opts)
keymap('n', '<leader>tw', ':TrainWord<cr>', opts)
keymap('n', '<leader>tu', ':TrainUpDown<cr>', opts)

keymap('n', '<leader>g', ':lua require("erd.ladder").show()<cr>', opts)
