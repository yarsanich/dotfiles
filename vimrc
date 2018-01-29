" Plugins:
call plug#begin('~/.vim/plugged')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'zchee/deoplete-jedi'
	Plug 'w0rp/ale'
	Plug 'pearofducks/ansible-vim'
	Plug 'Konfekt/FastFold'
	Plug 'posva/vim-vue'
	Plug 'scrooloose/nerdtree'
	Plug 'tmhedberg/SimpylFold'
	Plug 'jacoborus/tender.vim'
	Plug 'junegunn/fzf'
call plug#end()

" Filetypes:
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab " No spaces

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
