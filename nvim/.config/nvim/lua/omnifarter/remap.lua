vim.g.mapleader = " "

-- Ctrl + Arrow moves between 
vim.keymap.set("n", "<C-Left>", "<C-W>h")
vim.keymap.set("n", "<C-Right>", "<C-W>l")
vim.keymap.set("n", "<C-Up>", "<C-W>k")
vim.keymap.set("n", "<C-Down>", "<C-W>j")

vim.keymap.set("n", "<C-h>", "<C-W>h")
vim.keymap.set("n", "<C-l>", "<C-W>l")
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-j>", "<C-W>j")
-- Shift + Arrow splits windows
vim.keymap.set("n", "<S-Up>", ":split<CR>")
vim.keymap.set("n", "<S-Down>", ":split<CR>")
vim.keymap.set("n", "<S-Right>", ":vsplit<CR>")
vim.keymap.set("n", "<S-Left>", ":vsplit<CR>")

vim.keymap.set("n", "<S-k>", ":split<CR>")
vim.keymap.set("n", "<S-j>", ":split<CR>")
vim.keymap.set("n", "<S-l>", ":vsplit<CR>")
vim.keymap.set("n", "<S-h>", ":vsplit<CR>")

--LazyGit
vim.keymap.set("n","<leader>gg",":LazyGit<CR>")

--Toggle alt file
vim.keymap.set("n","<leader>af",":b#<CR>")

vim.keymap.set("n","<C-d>","<C-d>zz")
vim.keymap.set("n","<C-u>","<C-u>zz")

-- copy into system clipboard
vim.keymap.set("n", "<leader>y", "\"+Y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- move highlighted text up and down lines
vim.keymap.set('v',"J",":m '>+1<CR>gv=gv")
vim.keymap.set('v',"K",":m '<-2<CR>gv=gv")

