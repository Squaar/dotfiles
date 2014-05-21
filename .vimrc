"load plugins
execute pathogen#infect()
filetype on
filetype plugin on

"Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

"NERDTree
map <C-m> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Commentary
autocmd FileType python set commentstring=#\ %s

"style
set nu
syntax on
colorscheme elflord

"tabs
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
autocmd FileType python set expandtab tabstop=4 softtabstop=4 shiftwidth=4

"remember last cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
