local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n","gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n","gh", function() vim.lsp.buf.hover() end, opts)
end)

lsp.setup()

