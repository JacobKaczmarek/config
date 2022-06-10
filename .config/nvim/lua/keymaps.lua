vim.api.nvim_set_keymap("n", "<Space>", "<nop>", { noremap = true })
vim.api.nvim_set_keymap("v", "<Space>", "<nop>", { noremap = true })
vim.g.mapleader = " "
vim.g.maplocalleader = '\\'

-- Move lines up or down
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })

vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>:Lex<cr>", { noremap = true })
