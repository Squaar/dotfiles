scriptencoding utf-8
set encoding=utf-8

" load plugins
execute pathogen#infect()
filetype on
filetype plugin on

" general style/behavior
syntax on
set nocompatible
set relativenumber
set number
set hidden
set autoindent
set showcmd
filetype plugin indent on
set showmatch
set smartcase
" set nobackup
" set noswapfile
au FocusLost * :wa  " save on lost focus
colorscheme elflord

" mapping
let mapleader = ","
nnoremap j gj
nnoremap k gk
nnoremap ; :
inoremap jj <ESC>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>vrc :vsp $MYVIMRC<CR>
nnoremap <leader>svrc :so $MYVIMRC<CR>


" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_python_checkers = ['flake8']

" Commentary
autocmd FileType python set commentstring=#\ %s
autocmd FileType vim set commentstring=\"\ %s

" tabs
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
autocmd FileType python set expandtab tabstop=4 softtabstop=4 shiftwidth=4

" remember last cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Explore stuff
let g:netrw_browse_split = 2
let g:netrw_altv = 1
let g:netrw_liststyle = 3 " Tree mode
