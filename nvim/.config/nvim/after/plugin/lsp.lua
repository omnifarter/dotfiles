local lsp = require('lsp-zero')
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = {"tsserver", "eslint", "lua_ls" },
}

lsp.preset('recommended')


lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n","gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n","gh", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n","<leader>ca", function() vim.lsp.buf.code_action() end, opts)
end)

lsp.setup()
