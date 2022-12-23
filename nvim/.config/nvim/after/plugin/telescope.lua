local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-P>', builtin.find_files, {})
vim.keymap.set('n', '<leader>f', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', function() builtin.buffers({show_all_buffers=false}) end, {})

