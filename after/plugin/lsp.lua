local lsp = require("lsp-zero")

lsp.preset("recommended")

-- Fix Undefined global 'vim'
lsp.nvim_lua_ls()

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})


local on_attach = lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)


require('mason').setup({})
require('lspconfig').tsserver.setup({
  settings = {
    on_attach = on_attach,
    completions = {
    completeFunctionCalls = true
  },
    -- Configuration options specific to the tsserver
    -- For example:
    suggest = {
      -- Limit the types of suggestions
      filterOutOfScope = true,
    }

  }
})
require('mason-lspconfig').setup({
  nsure_installed = {},
  handlers = {
    lsp.default_setup,
  },
})
vim.diagnostic.config({
    virtual_text = true
})
