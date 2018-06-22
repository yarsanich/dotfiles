" Plugins:
call plug#begin('~/.vim/plugged')
	Plug 'zchee/deoplete-jedi'
	Plug 'w0rp/ale'
	Plug 'pearofducks/ansible-vim'
	Plug 'Konfekt/FastFold'
	Plug 'posva/vim-vue'
	Plug 'scrooloose/nerdtree'
	Plug 'tmhedberg/SimpylFold'
	Plug 'jacoborus/tender.vim'
	Plug 'junegunn/fzf'
	Plug 'mxw/vim-jsx'
    Plug 'pangloss/vim-javascript'
    if has('nvim')
       Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
       Plug 'Shougo/deoplete.nvim'
       Plug 'roxma/nvim-yarp'
       Plug 'roxma/vim-hug-neovim-rpc'
       endif
call plug#end()

" Filetypes:
" Python
"au BufRead *.py compiler nose
au FileType python set omnifunc=pythoncomplete#Complete
au FileType python setlocal expandtab shiftwidth=4 tabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
au FileType python set foldmethod=indent foldlevel=99

" Javascript
autocmd filetype javascript set sw=2 ts=2 expandtab

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" UI config
set number
set cursorline
set showmatch

" Theme
syntax enable
colorscheme tender

" NERD tree setup
autocmd vimenter * NERDTree
let g:NERDTreeWinSize = 60

" 80 characters line
set colorcolumn=80

map <Leader>p :call InsertPDB()<CR>

function! InsertPDB()
  let trace = expand("import pdb; pdb.set_trace()")
  execute "normal o".trace
endfunction

" fuzzy finder
nnoremap <C-p> :FZF<cr>
