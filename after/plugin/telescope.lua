local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-P>', builtin.find_files, {})
vim.keymap.set('n', '<S-F>', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

