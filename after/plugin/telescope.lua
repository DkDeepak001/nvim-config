require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    },
    file_ignore_patterns = {"node%_modules/.*", "package.lock.json","/assets/*",".svg","build","dist",".png",".ttf",".gif",".otf",".woff"} 
  },
}


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n','<leader>sg',builtin.git_files,{})
--vim.keymap.set('n','<leader>ss',function()
--	builtin.grep_string({ search = vim.fn.input("Grep > " )});
--end)
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>ss', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sG', ':LiveGrepGitRoot<cr>', { desc = '[S]earch by [G]rep on Git Root' })

