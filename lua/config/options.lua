-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options her

vim.api.nvim_command("augroup MyCursor")
vim.api.nvim_command("autocmd!")
vim.api.nvim_command("autocmd InsertEnter * set guicursor+=a:blinkon0") -- Insert mode
vim.api.nvim_command("autocmd InsertLeave * set guicursor-=a:blinkon0") -- Leave insert mode
vim.api.nvim_command("augroup END")
