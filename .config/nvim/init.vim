set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set relativenumber
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim.undodir
set undofile
set incsearch
set scrolloff=8
set colorcolumn=80

let maleader = " "

vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

lua require('plugins')
lua require('init')
