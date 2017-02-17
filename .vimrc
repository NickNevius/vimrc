" call vim-plug plugins
call plug#begin('~/.vim/plugged') " plug
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'ervandew/supertab'
Plug 'tomasr/molokai'
Plug 'qpkorr/vim-bufkill'
Plug 'neovimhaskell/haskell-vim'
call plug#end()

" use silver surfer instead of grep for control-p
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
" line wrap
"set wrap

" 7 lines to the cursor when using j/k
set so=7


" hurray for git
set nobackup
set nowb
set noswapfile

nnoremap <space> za
nnoremap <NUL> :NERDTree<CR>

filetype plugin indent on


set filetype=unix
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_hs_checkers = ['ghc_mod']
set statusline+=%warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:ctrlp_switch_buffer = 0   " make ctrlp open in new buffer
let g:ctrlp_working_path_mode = 0   " allow to change directory and have ctrlp notice
set laststatus=2    " turns on airline for some reason
"let g:airline_powerline_fonts = 1   " uses powerline fonts
set t_Co=256
syntax enable	" enable syntax processing
set history=500	" remember last 500 lines
set autoread	" read the file when changed from outside
set ruler	" alwys show current position
set backspace=indent,eol,start  " allow backspacing over everything
set foldenable  " enabled vim folding with za and defining a fold as zf
set foldmethod=syntax   " allows folding based on syntax of current language
set tabstop=4	" number of visual spaces per tab
set shiftwidth=4	" also makes 1 tab = 4 spaces???
set softtabstop=4	" number of spaces in tab when editing
set expandtab	" tabs are spaces
set smarttab
set ai	" auto indent
set si	" smart indent
" treat long lines as break lines to move visually
nnoremap j gj
nnoremap k gk

" map jk to escape when in insert
imap jk <Esc>

" move between windows as they are positioned visually
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
colorscheme molokai
let g:rehash256 = 1

set relativenumber
set number	" shows line numbers
set cursorline	" highlights the current line
filetype on	" vim tries to detect type of file being editted
set wildmenu	" visual autocomplete for command menu
" set lazyredraw	" only redraw when needed
set showmatch	" highlight matching [{()}]
set incsearch	" search as characters are entered
set hlsearch	" highlight matches
set ignorecase	" ignore case when searching
set smartcase	" when searching try to be smart about cases
set background=dark	" darker background
set encoding=utf8	" use utf8 as standard encoding
