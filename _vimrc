set nocp
filetype off  " required by bundle

" set the runtime path to include Vundle and initialize
let g:vundle_default_git_proto='git'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
"Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-scripts/taglist.vim'
Plugin 'fholgado/minibufexpl.vim'

"manage files
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'ctrlpvim/ctrlp.vim'

"python sytax checker
Plugin 'nvie/vim-flake8'
"Plugin 'vim-scripts/Pydiction'
"Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'

""code folding
"Plugin 'tmhedberg/SimpylFold'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:SimpylFold_docstring_preview = 1

let g:ycm_max_diagnostics_to_display = 1
let g:ycm_autoclose_preview_window_after_completion=1

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
"
" " Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" " Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


let NERDTreeIgnore=['\.pyc$', '\~$']
filetype plugin on
set hlsearch
set tabstop=4
set autoindent
set backspace=2
set t_kb=
set ofu=syntaxcomplete#Complete
set shiftwidth=4
set ruler
"set nu
autocmd FileType python setlocal expandtab
autocmd FileType c cpp setlocal expandtab
set wildchar=<Tab>
set smartcase
set incsearch
set wildmode=list:longest

let python_highlight_all=1

"autocmd FileType python set foldmethod=indent
"autocmd FileType c cpp set foldmethod=syntax
"
autocmd FileType python set omnifunc=pythoncomplete#Complete

"autocmd vimenter * NERDTree

set encoding=utf-8

noremap <silent> <C-Down> <C-W>j
noremap <silent> <C-Up> <C-W>k
noremap <silent> <C-Left> <C-W>h
noremap <silent> <C-Right> <C-W>l
let g:miniBufExplMapCTabSwitchBufs = 1

map <F2> :mksession! ~/sessions<CR>
map <F3> :mksession! ~/sessions2<CR>

set diffopt+=iwhite
set diffopt+=icase
syntax on

"set background=dark
"colorscheme elrodeo
"colorscheme newproggie 
