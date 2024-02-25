syntax on
set runtimepath+=~/.vim_runtime

set clipboard=unnamed

set number
set numberwidth=2
set splitright
set rtp+=/usr/local/opt/fzf
set spell
hi SpellBad ctermfg=203 guifg=#FFFF00
map f1 copy_to_buffer a
map f2 paste_from_buffer a
let g:NERDTreeWinPos = "left"

" turn relative line numbers on
" :set number relativenumber
"
" :set rnu
"
" let g:NERDTreeSyntaxEnabledExtensions = ['c', 'h', 'c++', 'cpp', 'php',
" 'rb', 'js', 'css', 'html'] " enabled extensions with default colors
" set runtimepath^=~/.vim/bundle/ctrlp.vim
"
" " set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
" Bundle "kien/ctrlp.vim"
"
" call vundle#end()            " required
" filetype plugin indent on    " required
"
"
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|build'
