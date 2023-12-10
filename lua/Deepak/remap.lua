vim.g.mapleader = " "
vim.keymap.set("n", "<leader>bb", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<CR>', 'i', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-z>', '<Cmd>undo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-r>', '<Cmd>redo<CR>', { noremap = true, silent = true })


vim.keymap.set("v", "<M-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-Up>", ":m '<-2<CR>gv=gv")

-- Set key mappings for the actions directly without functions
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true, silent = true })

