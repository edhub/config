" Set line number"
set number

" Settings for eclim "{{{
" Import the class under the cursor with <leader>i (:h mapleader)
nnoremap <silent> <buffer> <leader>i :JavaImport<cr>

" Perform a context sensitive search of the element under the cursor with <enter>
nnoremap <silent> <buffer> <F3> :JavaSearchContext<cr>

" Quick format
nnoremap <silent> <buffer> <leader>f :%JavaFormat<cr>
"}}}

" vim:set foldmethod=marker:
