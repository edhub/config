function! PackInit() abort
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " Additional plugins here.
  call minpac#add('mhartington/oceanic-next') " My favorite color scheme
  call minpac#add('vim-jp/syntax-vim-ex')
  call minpac#add('tyru/open-browser.vim')

  call minpac#add('easymotion/vim-easymotion') " Easy navigation
  call minpac#add('tpope/vim-surround') " Quickly add surrounding chars

  " Fuzzy search & open file
  call minpac#add('junegunn/fzf', {'do': {-> fzf#install()}})
  call minpac#add('junegunn/fzf.vim')

  " Svelte syntax support
  call minpac#add('evanleck/vim-svelte')

  "nerdtree
  call minpac#add('scrooloose/nerdtree')

endfunction

" Plugin settings here.
colorscheme OceanicNext

" Define user commands for updating/cleaning the plugins.
" Each of them calls PackInit() to load minpac and register
" the information of plugins, then performs the task.
command! PackUpdate call PackInit() | call minpac#update()
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()
