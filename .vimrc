""" Map leader to space ----
let mapleader = " "

""" Plugins ----
set surround " vim-surround plugin

""" Mappings ----

""" Ctrl + Arrow moves between 
nmap <C-Left> <C-W>h
nmap <C-Right> <C-W>l
nmap <C-Up> <C-W>k
nmap <C-Down> <C-W>j

nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
nmap <C-k> <C-W>k
nmap <C-j> <C-W>j
""" Shift + Arrow splits windows
nmap <S-Up> :split<CR>
nmap <S-Down> :split<CR>
nmap <S-Right> :vsplit<CR>
nmap <S-Left> :vsplit<CR>

nmap <S-k> :split<CR>
nmap <S-j> :split<CR>
nmap <S-l> :vsplit<CR>
nmap <S-h> :vsplit<CR>


""" Toggle alt file
map <leader>af :b#<CR>

map <C-d> <C-d>zz
map <C-u> <C-u>zz

""" copy into system clipboard
map <leader>y \"+Y

""" find files
map <leader>ff <Action>(FindInPath)

map gh <Action>(QuickJavaDoc)
map gl <Action>(ShowErrorDescription)
map <leader>ca <Action>(ShowIntentionActions)