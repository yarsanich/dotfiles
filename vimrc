" Plugins:
call plug#begin('~/.vim/plugged')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'zchee/deoplete-jedi'
	Plug 'w0rp/ale'
	Plug 'pearofducks/ansible-vim'
	Plug 'Konfekt/FastFold'
	Plug 'posva/vim-vue'
	Plug 'scrooloose/nerdtree'
call plug#end()

" Filetypes:
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab " No spaces

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" UI config
set number
set cursorline
set showmatch

" NERD tree setup
autocmd vimenter * NERDTree
let g:NERDTreeWinSize = 60

" 80 characters line
set colorcolumn=80
