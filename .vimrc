if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif


" ----- Install dependencies
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
" Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()


" ----- Editor setup
" if has('mouse')
"   set mouse=a
" endif

" Set theme
colorscheme gruvbox
set background=dark

" Copy from vim to clipboard
set clipboard=unnamed

" Show line number
set nu
set cursorline

" Auto update file when have changes
set autoread
set autowrite

" Auto indent
set autoindent
set si "smart indent

" Use tab
set tabstop=4

" Disable backup-file, swap
set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

" Prettier
" let g:prettier#config#tab_width = 4
" let g:prettier#config#use_tabs = 'true'

" ----- Override command

" Map leader key
let mapleader = "," " map leader key to ,
let g:mapleader = ","

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

" Nerd tree
map <Leader>n :NERDTreeToggle<CR>

" close vim if the only window left open is a NERDTree 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
