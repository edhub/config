" Set line number"
set number

" Set foldmethod for java files
set foldmethod=syntax
set foldlevel=1

" Settings for eclim"{{{
" Import the class under the cursor with <leader>i (:h mapleader)
nnoremap <silent> <buffer> <leader>i :JavaImport<cr>

" Preview Java Doc
nnoremap <silent> <buffer> <F2> :JavaDocPreview<cr>

" Perform a context sensitive search of the element under the cursor with <enter>
nnoremap <silent> <buffer> <F3> :JavaSearchContext<cr>

" Open object hierarchy
nnoremap <silent> <buffer> <F4> :JavaHierarchy<cr>

" Quick format
nnoremap <silent> <buffer> <leader>f :%JavaFormat<cr>
"}}}

" vim:set foldmethod=marker:
