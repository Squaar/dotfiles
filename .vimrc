set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'fatih/vim-go'
Plugin 'squaar/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

scriptencoding utf-8
set encoding=utf-8

" general style/behavior
syntax on
set nocompatible
set relativenumber
set number
set hidden
set autoindent
set showcmd
set showmatch
set smartcase
set cursorline

" Save on focus lost
au FocusLost * :wa

" Colorschemes
colorscheme molokai
" colorscheme elflord

" Only enable these if swap files get super annoying
" set nobackup
" set noswapfile

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
" Editing .vimrc
nnoremap <leader>vrc :vsp $MYVIMRC<CR>
nnoremap <leader>svrc :so $MYVIMRC<CR>

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_java_javac_classpath = "src"

" Commentary
autocmd FileType python set commentstring=#\ %s
autocmd FileType vim set commentstring=\"\ %s

" Molokai
let g:molokai_original=2

" tabs
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
" use spaces for python because PEP8
autocmd FileType python set expandtab tabstop=4 softtabstop=4 shiftwidth=4

" remember last cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" NERDTree
map <leader>m :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
