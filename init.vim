call plug#begin('C:/Users/Notebook/AppData/Local/nvim/autoload/plugged')
"---------------------
" Sekce do které se instalují pluginy


" Průzkumník souborů na (Ctrl+B)
Plug 'scrooloose/nerdtree'

" Extended css4 syntax file
Plug 'hail3u/vim-css3-syntax', { 'for': 'css' }

" omnicomplete function for vim
Plug 'othree/csscomplete.vim', { 'for': 'css' }

" Syntax file for javascript. Necessary evil.
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }







"---------------------
"---------------------

call plug#end()

"---------------------
"---------------------
" Sekce s konfigurací

let g:NERDTreeShowHidden = 3
let g:NERDTreeMinimalUI = 2
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''


" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 2 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>


"---------------------
"---------------------


set termguicolors
syntax on
set ts=5
set sw=4
set expandtab
set ruler
set number
set nowrap
set colorcolumn=80
" Automatické nastavení pracovního adresáře dle editovaného souboru
set autochdir
"---------------------

" Enable Omnicomplete features
set omnifunc=syntaxcomplete#Complete