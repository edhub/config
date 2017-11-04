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
nnoremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

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
nnoremap <silent> <leader><cr> :noh<cr>

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
nnoremap j gj
nnoremap k gk
nnoremap <Up> g<Up>
nnoremap <Down> g<Down>

" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" ========= Editing =========

" When on, the :substitute flag 'g' is default on.
set gdefault

set si "Smart indent

" Use spaces instead of tabs
set expandtab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Fast saving
nnoremap <leader>w :w!<cr>
nnoremap <leader>q :q<cr>

" Always ways copy the word and only the word (without potential space)
nnoremap ye yiw

" Copy from current position to end of line
nnoremap Y y$

" Copy to clipboard
nmap <leader>y "+y
nmap <leader>Y "+Y

" Substitute current word with content in " register
nnoremap <leader>p "_diwP
