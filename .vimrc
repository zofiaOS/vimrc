syntax on
set background=dark
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

"Deletes trailing whitespaces
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.java :%s/\s\+$//e
autocmd BufWritePre *.xml :%s/\s\+$//e
autocmd BufWritePre *.cs :%s/\s\+$//e

"Highlight spaces and tabs in a more convenint way
set list listchars=tab:>.,trail:.,extends:#,nbsp:. 

set showcmd " Show (partial) command in status line.
set showmatch " Show matching brackets.

set ignorecase " Do case insensitive matching
set smartcase " Do smart case matching
set incsearch " Incremental search
set hlsearch

set scrolloff=5
set sidescrolloff=5

set mouse=a

set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting

"set hidden        " hide buffers instead of closing them
set number        " always show line numbers

set history=1000
set undolevels=1000      " use many levels of undo
set title                " change the terminal's title
set laststatus=2         " Always show status line
set wildmenu

set wildignore=*.swp,*.bak,*.pyc
set ruler

"set colorcolumn=80
"highlight ColorColumn ctermbg=lightgrey

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz


inoremap jj <Esc>
nnoremap <space> :set hlsearch!<CR>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

map ; :
noremap ;; ;

" searching for selected text
vnorem // y/<c-r>"<cr>

" Changes color of status bar if in insert mode
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermfg=LightRed ctermbg=White
  au InsertLeave * hi StatusLine term=reverse ctermfg=LightGrey ctermbg=Black
endif

" Vundle setup
set nocompatible              " be iMproved, required
filetype off                  " required

"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Syntax checking
Plugin 'https://github.com/scrooloose/syntastic'

" Clojure syntax highlighting
Plugin 'https://github.com/vim-scripts/VimClojure'

Plugin 'https://github.com/tpope/vim-surround'

" search forward with f and backward with F
let g:clever_f_fix_key_direction=1
Plugin 'https://github.com/rhysd/clever-f.vim'

" Full path fuzzy file finder
Plugin 'https://github.com/kien/ctrlp.vim'

Plugin 'https://github.com/tpope/vim-vinegar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
