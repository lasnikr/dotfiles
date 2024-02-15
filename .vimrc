" editor
set shiftwidth=4 smarttab
set expandtab
set tabstop=8 softtabstop=0
set number relativenumber
set showcmd

let mapleader = ";"

" statusline
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

syntax on

" shortcuts
map <leader>n :bnext<cr>
map <leader>p :bprevious<cr>
map <leader>d :bdelete<cr>

noremap _v :e $MYVIMRC<CR>
noremap _s :w <CR> :source $MYVIMRC <CR>

noremap <C-w> :w<CR>:! clear && gcc -o temp.out % && ./temp.out ; rm temp.out <CR>
