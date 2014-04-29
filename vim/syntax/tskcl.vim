syn clear
syn case ignore

syn region TaskPro1 start=/^W\?-\s/ end=/$/ oneline
syn region TaskPro2 start=/^W\?--\s/ end=/$/ oneline
syn region TaskPro3 start=/^W\?---\s/ end=/$/ oneline
syn region TaskDone start=/^[DC]-/ end=/$/ oneline
syn region TaskFail start=/^[F]-/ end=/$/ oneline
syn region SubItemToDo start=/^	-\s/ end=/$/ oneline
syn region SubItem start=/^	-[RDICF]\s/ end=/$/ oneline
syn region TimeLine start=/^=\{5}/ end=/$/ oneline

hi Normal guibg=grey20
hi TaskPro1 guifg=#ff7777 ctermfg=yellow
hi TaskPro2 guifg=cyan ctermfg=brown
hi TaskPro3 guifg=#009999 ctermfg=darkblue
hi TaskDone guifg=grey70 ctermfg=grey
hi TaskFail guifg=#FFCC99 ctermfg=grey
hi SubItem guifg=darkgrey  ctermfg=darkgrey
hi SubItemToDo guifg=darkgreen ctermfg=darkgreen
hi TimeLine guibg=darkgrey ctermbg=darkgrey

set noexpandtab
set tabstop=6
set shiftwidth=6

" Quick insert date
iab <expr> til ShowTimeLine()

func! ShowTimeLine()
    return "=====" . strftime("%Y-%m-%d %H:%M") . "====="
endfunc
