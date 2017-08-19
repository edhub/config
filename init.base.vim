"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My vimrc file. It's based on: https://github.com/amix/vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ========= Basic =========

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Show command at the right bottom corner
set showcmd

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " "
let g:mapleader = " "

" No annoying sound on errors
set noerrorbells 
set novisualbell 
set tm=500

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Add file encodings.
set fileencodings=ucs-bom,utf-8,gb18030,cp936,big5,euc-jp,latin1

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" ========= Display =========

" Do not highlight pairs
let loaded_matchparen = 1

" User true color
set termguicolors

" Theme
syntax enable
set background=dark

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l,\ %P

" Linebreak on 500 characters
set lbr
set tw=500

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" ========= Navigation =========

" match pairs
set mps+=<:>

" For regular expressions turn magic on
set magic
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Same wild mode in terminal
set wildmode=list:longest

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
map <Up> g<Up>
map <Down> g<Down>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" map <C-w> :close<CR>

" ========= Editing =========

set si "Smart indent

" Use spaces instead of tabs
set expandtab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>

" Copy to clipboard
map Y y$
map <leader>y "+y
map <leader>Y "+Y

" Power paste
nmap <leader>p "_diwP
vmap <leader>p "_xP
