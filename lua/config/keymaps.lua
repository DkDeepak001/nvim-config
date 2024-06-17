-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>bb", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)
vim.api.nvim_set_keymap("n", "<CR>", "i", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-z>", "<Cmd>undo<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-r>", "<Cmd>redo<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-z>", "<Cmd>undo<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-r>", "<CMD>redo<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<M-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<M-Down>", ":m '>+1<CR>gv=gv")

-- Set key mappings for the actions directly without functions
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })
--copy
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-c>", '"+y', { noremap = true, silent = true })
--cut
vim.api.nvim_set_keymap("v", "<C-x>", '"+d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-x>", '"+d', { noremap = true, silent = true })

--selection
vim.api.nvim_set_keymap("n", "<C-d>", "viw", { noremap = true, silent = true })

--scroll
vim.keymap.set("n", "<C-Up>", "<C-u>zz")
vim.keymap.set("n", "<C-Down>", "<C-d>zz")

vim.keymap.set("i", "<C-Up>", "<Esc><C-u>zzi")
vim.keymap.set("i", "<C-Down>", "<Esc><C-d>zzi")

vim.keymap.set("v", "<C-Up>", "<C-u>zz")
vim.keymap.set("v", "<C-Down>", "<C-d>zz")
vim.keymap.set("v", "<C-Left>", "bzz")
vim.keymap.set("v", "<C-Right>", "wzz")

--nvim tree configs
vim.keymap.set("i", "<C-Up>", "<Esc><C-u>zzi")
vim.keymap.set("i", "<C-Down>", "<Esc><C-d>zzi")

vim.keymap.set("v", "<S-Up>", "gkzz")
vim.keymap.set("v", "<S-Down>", "gjzz")

vim.keymap.set({ "n", "i", "v", "x", "s", "o" }, "<c-b>", ":Neotree toggle<CR>")
vim.keymap.set("n", "<leader>zt", vim.cmd.UndotreeToggle)

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key",
      },
    },
    file_ignore_patterns = {
      "node%_modules/.*",
      "package.lock.json",
      "/assets/*",
      ".svg",
      "build",
      "dist",
      ".png",
      ".ttf",
      ".gif",
      ".otf",
      ".woff",
    },
  },
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", function()
  builtin.find_files({
    -- attach_mappings = function(_, map)
    --   map("i", "<CR>", function(prompt_bufnr)
    --     selection = require("telescope.actions.state").get_selected_entry(prompt_bufnr)
    --     selected_file_path = selection.path
    --     print(selected_file_path)
    --     --   -- Open Neotree with selected file revealed
    --     vim.cmd(":Neotree reveal_file=" .. selected_file_path)
    --     --
    --     --   -- Open selected file in the current buffer
    --     vim.cmd(":e " .. selected_file_path)
    --     --
    --     --   -- Close Telescope prompts
    --     require("telescope.actions.state").get_current_picker(selected_file_path):reset()
    --     require("telescope.actions").close(selected_file_path)
    --   end)
    --
    --   -- needs to return true if you want to map default_mappings and
    --   -- false if not
    --   return true
    -- end,
  })
end, { silent = true })
--
--
--
vim.keymap.set("n", "<leader>sg", builtin.git_files, {})
--vim.keymap.set('n','<leader>ss',function()
--	builtin.grep_string({ search = vim.fn.input("Grep > " )});
--end)
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>ss", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sG", ":LiveGrepGitRoot<cr>", { desc = "[S]earch by [G]rep on Git Root" })

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

vim.api.nvim_set_keymap("n", "<F2>", "<Cmd>bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F1>", "<Cmd>bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><F4>", ":bd<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><F4>", ":bd<CR>:bprev<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<C-BS>", "<C-w>", { noremap = true })

vim.api.nvim_set_keymap("n", "<C-Right>", ":normal! w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Left>", ":normal! b<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v", "<C-Right>", "ve", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-Left>", "vb", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-S-Up>", ":horizontal resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-Down>", ":horizontal resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-left>", ":vertical resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-Right>", ":vertical resize -2<CR>", { noremap = true, silent = true })

-- Key mapping for toggling comments with Ctrl + /
vim.api.nvim_set_keymap("n", "<leader>/", ":CommentToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>/", ":CommentToggle<CR>", { noremap = true, silent = true })

local actions = require("telescope.actions")
local state = require("telescope.actions.state")

vim.api.nvim_set_keymap("n", "<c-t>", "<cmd>lua open_neotree()<CR>", { noremap = true, silent = true })

function open_neotree()
  local selection = state.get_selected_entry()
  if selection then
    local selected_file_path = selection.path
    print(selected_file_path)
    -- Open Neotree with the selected file revealed
    vim.cmd("Neotree " .. selected_file_path)
  else
    print("No selection")
  end
end
