vim.g.mapleader = " "
vim.keymap.set("n", "<leader>bb", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<CR>', 'i', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-z>', '<Cmd>undo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-r>', '<Cmd>redo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i','<C-z>','<Cmd>undo<CR>',{ noremap = true ,silent = true})
vim.api.nvim_set_keymap('i','<C-r>','<CMD>redo<CR>',{noremap = true, silent = 	true})
vim.keymap.set("v", "<M-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<M-Down>", ":m '>+1<CR>gv=gv")

-- Set key mappings for the actions directly without functions
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true, silent = true })
--copy
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-c>', '"+y', { noremap = true, silent = true })
--cut
vim.api.nvim_set_keymap('v','<C-x>','"+d',{ noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<C-x>','"+d',{ noremap = true, silent = true})

--scroll
vim.keymap.set("n", "<C-Up>", "<C-u>zz")
vim.keymap.set("n", "<C-Down>", "<C-d>zz")




-- Split window management
vim.keymap.set("n", "<leader><C-Right>", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader><C-Down>", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
vim.keymap.set("n", "<leader><C-e>", ":close<CR>") -- close split window
vim.keymap.set("n", "<leader>sj", "<C-w>-") -- make split window height shorter
vim.keymap.set("n", "<leader>sk", "<C-w>+") -- make split windows height taller
vim.keymap.set("n", "<leader>sl", "<C-w>>5") -- make split windows width bigger 
vim.keymap.set("n", "<leader>sh", "<C-w><5") -- make split windows width smaller

-- Tab management
vim.keymap.set("n", "<leader>tN", ":tabnew<CR>") -- open a new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close a tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

local function select_all_occurrences(word)
    vim.cmd("let @/ = '\\<" .. word .. "\\>'") -- Set the search register
    vim.cmd("silent! %s//" .. word .. "/gc") -- Perform global search and confirm replacements
end

-- Keybinding to trigger the function
vim.api.nvim_set_keymap('n', '<Leader>f', ':lua select_all_occurrences(vim.fn.expand("<cword>"))<CR>', { noremap = true, silent = true })
