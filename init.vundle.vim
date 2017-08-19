" ========= Vundle Manager =========

" Vundle manager, Need Vundle installed
filetype off  " required

set rtp+=~/.config/nvim/bundle/Vundle.vim " required
call vundle#begin()          " required

Plugin 'VundleVim/Vundle.vim'

" Plugin 'vim-scripts/paredit.vim' " for SICP edit

" Plugin 'jgdavey/tslime.vim' " Send text to a tmux pane

" Plugin 'thoughtbot/vim-rspec' " RSpec runner?

Plugin 'mhartington/oceanic-next' " oceanic-next theme

" Plugin 'edhub/vim-task-list' " task lit plugin

Plugin 'ctrlpvim/ctrlp.vim' " ctrlp

" Plugin 'vim-syntastic/syntastic' " Syntastic is a syntax checking plugin for Vim

" Plugin 'Chiel92/vim-autoformat' "This plugin makes use of external formatting programs to achieve the best results.

Plugin 'easymotion/vim-easymotion'

Plugin 'tpope/vim-surround'

call vundle#end()            " required
filetype plugin indent on    " required

" ========= Plugin Setup =========
" ===== ctrlp
" ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" ===== easy-motion

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" Need one more keystroke, but on average, it may be more comfortable.
nmap <Leader>f <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" ===== oceanic-next theme
colorscheme OceanicNext
