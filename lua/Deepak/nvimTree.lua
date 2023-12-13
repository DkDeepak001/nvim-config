require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
    indent_width = 1,

  },
  filters = {
        custom = {".git",".vscode"},
	exclude = {".env.*"},
	  dotfiles = false,
  },
})

vim.keymap.set({ 'n', 'i', 'v', 'x', 's', 'o' }, '<c-b>',':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n','<c-b>x',':NvimTreeCollapse<CR>')
