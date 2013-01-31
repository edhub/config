" This is only for gui
"
" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

if !has("gui_running")
   finish 
endif

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="novel"

hi Normal guibg=#0C343D guifg=#EC9138 
hi StatusLine gui=NONE guibg=#1C444D guifg=#AF7A04 
hi TabLine gui=NONE guibg=#3C646D guifg=#FCAA44
hi TabLineSel gui=NONE,bold guibg=#0C343D guifg=#FCAA44
hi TabLineFill gui=NONE guibg=#3C646D

hi NonText guifg=#9F5A04

