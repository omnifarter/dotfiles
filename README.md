# My workflow setup with neovim

## Prerequisites

1. Neovim
2. Patched Fonts
3. Lazy Git

## Mappings

### Navigation

`<C-p>` find file
`<S-f>` find occurrence in PWE
`<leader>e` toggles file explorer
`<leader>fb` opens file buffer

### Workflow

`<leader>gd` Go to definition
`gl` go to lint
`K` hover

In normal:
`gcc` comment code line
`gbc` block comment code line

In visual:
`gb` block comment
`gc` line comment
`>` indent
'<' remove indent
`=` auto-tabbing

### File explorer

`a` create new file
`c` copy file
`p` paste file
'd' delete file

### Windows

`<C-Arrow>` navigate between windows
`<S-Arrow>` split window

### Git

`<leader>gg` opens lazy Git
`a` stage/unstage all
'<SPACE>' toggle staging for file
`p` pull
`P` push
'c' commit
